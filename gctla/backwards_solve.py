"""
    Use an oracle dataset to progressively determine what kind of data is necessary from self-task or transfer tasks to "succeed" in autotuning
"""
import pandas as pd, numpy as np
import os, time, sys, argparse, pathlib, inspect, warnings, json, logging, itertools, multiprocessing
from importlib import import_module
from copy import deepcopy
from sdv.single_table import GaussianCopulaSynthesizer as GaussianCopula
from sdv.metadata import SingleTableMetadata
from sdv.sampling.tabular import Condition
from sdv.constraints import ScalarRange
from GC_TLA import gc_tla_utils
# Math for auto-budgeting
try:
    from math import comb
except ImportError:
    from math import factorial
    def comb(n,k):
        return factorial(n) / (factorial(k)*factorial(n-k))
def hypergeo(i,p,t,k):
    return (comb(i,t)*comb((p-i),(k-t))) / comb(p,k)

# Make JSON-style logs
class JsonLogFormatter(logging.Formatter):
    def format(self, record):
        tag, identifier, message = record.getMessage().split('||',2)
        log_data = {
            'timestamp': self.formatTime(record),
            'level': record.levelname,
            'tag': tag,
            'id': identifier,
            'message': message,
            'moduleName': record.module,
            'funcName': record.funcName,
            'lineNo': record.lineno,
        }
        return json.dumps(log_data)
logger = logging.getLogger(__name__)
logger.setLevel(logging.DEBUG)

def build():
    prs = argparse.ArgumentParser(description="Use an oracle dataset to progressively determine what kind of data is necessary for 'success' in autotuning")
    experiment = prs.add_argument_group("Few-Shot Experiment Settings")
    experiment.add_argument("--max-evals", type=int, default=30,
                            help="Number of evals (default: %(default)s)")
    experiment.add_argument("--fit-seed", type=int, default=None,
                            help="RNG seed during model fitting (default: %(default)s)")
    experiment.add_argument("--fit-method", choices=['objective-best','objective-worst','objective-cocktail'], default='objective-best',
                            help="Method to select data for fitting from the dataset (default: %(default)s)")
    experiment.add_argument("--sample-seed", type=int, default=None, nargs="*",
                            help="RNG seed(s) during model inference (default: %(default)s)")
    experiment.add_argument("--inverted-objective", action="store_true",
                            help="Invert objective criterion (default: %(default)s)")
    experiment.add_argument("--target", type=float, default=0.1,
                            help="Target quantile to meet for a seed's sampling to be considered 'successful' (default %(default)s)")
    experiment.add_argument("--hits", type=int, default=1,
                            help="Number of samples that must on-target per seed for the overall sampling to be considered 'successful' (default %(default)s)")
    autobudget = prs.add_argument_group("Autobudgeting Settings")
    autobudget.add_argument("--skip-auto-budget", action="store_true",
                            help="Always use --max-evals as budet, do not attempt to derive an budget experiment (default: %(default)s)")
    autobudget.add_argument("--always-max-evals", action="store_true",
                            help="Calculate auto budget, but always utilize max-evals (default: %(default)s)")
    autobudget.add_argument("--budget-ideal", type=float, default=0.1,
                            help="Ideal Proportion of the population to sample (default %(default)s)")
    autobudget.add_argument("--budget-attrition", type=float, default=0.05,
                            help="Expected attrition ratio of ideal items removed by GC distribution's specificity (default %(default)s)")
    autobudget.add_argument("--budget-confidence", type=float, default=0.95,
                            help="Desired confidence value for the experimented number of trials (default %(default)s)")
    files = prs.add_argument_group("File Management")
    files.add_argument("--input-data", nargs="+", required=True,
                            help="Oracle data to concatenate together for model target")
    files.add_argument("--input-scale", default=None,
                            help="Specify scale if not given for input data (or override it) (default %(default)s)")
    files.add_argument("--problem-file", required=True,
                            help="Path to file that defines importable objects to represent the tuning space and plopping semantics")
    files.add_argument("--output", default="oracle_gc.csv",
                            help="Path to save results to (if --sample-seed is provided, filename will automatically be noted with each seed value) (default %(default)s)")
    files.add_argument("--log-training-dataset", default=None,
                            help="Path to save filtered dataset to when provided (default %(default)s)")
    files.add_argument("--log-experiment", default=None,
                            help="Path to save logs into when provided (default %(default)s)")
    looping = prs.add_argument_group("Iteration Controls")
    looping.add_argument("--start-n-data", type=int, default=2,
                            help="Minimum data to start with (default %(default)s)")
    looping.add_argument("--max-n-data", type=int, default=None,
                            help="Maximum data to iterate to (default %(default)s, None == size of exhaustive dataset)")
    looping.add_argument("--step-n-data", type=int, default=1,
                            help="Increase n-data value per iteration (default %(default)s)")
    looping.add_argument("--to-max-n-data", action="store_true",
                            help="Always loop to --max-n-data value (default %(default)s, --max-n-data MUST ALSO be defined to take effect)")
    looping.add_argument("--custom-data-schedule", default=None,
                            help="Load a Numpy array (.npy) as your custom looping values (default %(default)s)")
    looping.add_argument("--early-exit-on-failure", action="store_true",
                            help="Exit early if any seed fails to meet its budget during few-shot experiments (default %(default)s)")
    return prs

def parse(args=None, prs=None):
    if prs is None:
        prs = build()
    if args is None:
        args = prs.parse_args()
    # Seed handling
    if args.fit_seed is not None:
        np.random.seed(args.fit_seed)
        # SDV can use torch in lower-level modules
        import torch
        torch.manual_seed(args.fit_seed)
    if args.sample_seed is None:
        args.sample_seed = [None]
    # Ensure directory OK for output
    pathlib.Path(args.output).parents[0].mkdir(parents=True, exist_ok=True)
    # Instantiate log file handler
    if args.log_experiment is None:
        handler = logging.StreamHandler(sys.stdout)
    else:
        handler = logging.FileHandler(args.log_experiment, mode='w')
    handler.setFormatter(JsonLogFormatter())
    logger.addHandler(handler)
    return args

# Forcible module-load and attribute selection
def import_hook_from_file(fname, attr):
    if type(fname) is not pathlib.Path:
        fname = pathlib.Path(fname)
    dirname = str(fname.parents[0])
    if dirname not in sys.path:
        sys.path.insert(0, dirname)
    basename = fname.stem
    module = import_module(basename)
    return getattr(module, attr)

def load_input(args):
    concat = []
    for name in args.input_data:
        load = pd.read_csv(name)
        if args.input_scale is not None:
            scale_data = [args.input_scale] * len(load)
            if 'scale' in load.columns:
                load['scale'] = scale_data
            else:
                load.insert(len(load.columns), 'scale', scale_data)
        # For this dataset with GC, most columns need to operate as str type to ensure categories remain enforced.
        # Pandas will detect numerical data and tell SDV to make it numerical, but this can allow GC to infer values
        # that aren't in the full space.
        non_scale_cols = [_ for _ in load.columns if _ not in ['scale','objective']]
        load[non_scale_cols] = load[non_scale_cols].astype(str)
        concat.append(load)
    loaded = pd.concat(concat).sort_values(by=['objective']).reset_index(drop=True)
    logger.debug(f"Input_Load_Len||0||{len(loaded)}")
    return loaded

def build_model(df, match_cols, args):
    lookup = import_hook_from_file(args.problem_file, "lookup")
    if args.input_scale is None:
        # Look up name from value
        inv_lookup = dict((v[0],k) for (k,v) in lookup.items())
        oracle_scale_name = f"oracle_{inv_lookup[df.loc[0,'scale']]}"
    else:
        oracle_scale_name = f"oracle_{args.input_scale}"
        # Convert name to value
        df['scale'] = [lookup[_] for _ in df['scale'].values]
    evaluator = import_hook_from_file(args.problem_file, oracle_scale_name)
    logger.debug(f"Model_Scale||0||{oracle_scale_name}")
    # Construct SDV model
    constraints = [{'constraint_class': 'ScalarRange',
                    'constraint_parameters': {
                        'column_name': 'scale',
                        'low_value': min(evaluator.dataset_lookup.keys()),
                        'high_value': max(evaluator.dataset_lookup.keys()),
                        'strict_boundaries': False,
                        },
                   },
                  ]
    logger.debug(f"Model_Constraints||0||{constraints}")
    metadata = SingleTableMetadata()
    metadata.detect_from_dataframe(df[match_cols])
    model = GaussianCopula(metadata, enforce_min_max_values=False)
    model.add_constraints(constraints=constraints)
    return model, evaluator.input_space_size, evaluator.problem_class

def select_fit_data(oracle, n_data, param_columns, args):
    if (args.fit_method == 'objective-worst' and args.inverted_objective) or \
        (args.fit_method == 'objective-best' and not args.inverted_objective):
        return oracle.loc[range(n_data), param_columns]
    elif (args.fit_method == 'objective-best' and args.inverted_objective) or \
        (args.fit_method == 'objective-worst' and not args.inverted_objective):
        mlen = len(oracle)
        return oracle.loc[range(mlen-1,mlen-1-n_data,-1), param_columns]
    elif args.fit_method == 'objective-cocktail':
        # While we could cocktail-shaker-sort iteratively, we know it will be two ranges
        # with at most one extra entry on the side we started at if the value of n_data is odd.
        # Starting side is based on args.inverted_objective
        mlen = len(oracle)
        half = n_data // 2
        extra_low = 0 if (n_data % 2 == 0 or not args.inverted_objective) else 1
        extra_high = 0 if (n_data % 2 == 0 or args.inverted_objective) else 1
        low_range = range(0, half+extra_low)
        high_range = range(mlen-half-extra_high, mlen)
        return oracle.loc[itertools.chain(low_range, high_range), param_columns]

def autobudget(model, n_data, input_space_size, problem_class, args):
    if args.skip_auto_budget:
        logger.debug(f"Autobudget_Status||{n_data}||skipped")
        logger.debug(f"Autobudget_Evals||{n_data}||{args.max_evals}")
        return args.max_evals
    initial_population = input_space_size
    budget_conditions = [Condition({'scale': problem_class}, num_rows=initial_population)]
    temp_out_name = pathlib.Path(args.output).parents[0].joinpath(f"autobudget_{n_data}")
    massive_sample = model.sample_from_conditions(budget_conditions, output_file_path=temp_out_name)
    temp_out_name.unlink()
    model.reset_sampling() # Ensure budgeting does not change RNG for the observed output (especially if skipped)
    sampled_pop_size = len(massive_sample.drop_duplicates())
    ideal = int(initial_population * args.budget_ideal)
    remaining_ideal = max(1, ideal - int((initial_population - sampled_pop_size) * args.budget_attrition))
    if remaining_ideal > sampled_pop_size:
        logger.debug(f"Autobudget_Status||{n_data}||indeterminate")
        suggested_budget = args.max_evals
    else:
        suggested_budget = 0
        while suggested_budget < sampled_pop_size:
            suggested_budget += 1
            confidence = sum([hypergeo(remaining_ideal, sampled_pop_size, _, suggested_budget) for _ in range(1, suggested_budget+1)])
            if confidence >= args.budget_confidence:
                break
        if confidence >= args.budget_confidence:
            logger.debug(f"Autobudget_Status||{n_data}||accepted")
        else:
            logger.debug(f"Autobudget_Status||{n_data}||unsatisfied")
        logger.debug(f"Autobudget_Confidence||{n_data}||{confidence:.4f}")
        if suggested_budget > args.max_evals:
            logger.debug(f"Autobudget_Adjustment||{n_data}||overbudget")
            suggested_budget = args.max_evals
        elif args.always_max_evals:
            logger.debug(f"Autobudget_Adjustment||{n_data}||always_max")
            suggested_budget = args.max_evals
    logger.debug(f"Autobudget_Evals||{n_data}||{suggested_budget}")
    return suggested_budget

# I would use the evaluator's oracle_search, but this allows us to separate from the evaluator and avoid pickling it which I haven't implemented yet
def oracle_search(oracle, row, match_cols, as_rank=True):
    search = tuple(row)
    n_matching_columns = (oracle[match_cols] == search).sum(1)
    full_match_idx = np.where(n_matching_columns == len(match_cols))[0]
    if len(full_match_idx) == 0:
        raise ValueError(f"Failed to locate tuple {list(search)} in oracle data")
    if as_rank:
        return full_match_idx[0]
    return oracle.loc[full_match_idx[0],'objective']

def sample_seeds(model, oracle, eval_conditions, n_data, match_cols, args):
    sampled = []
    for sample_seed in args.sample_seed:
        out_name = pathlib.Path(args.output)
        # Customize output name
        out_name = out_name.parents[0].joinpath(out_name.stem+f"_ndata_{n_data}"+out_name.suffix)
        if sample_seed is not None:
            # ---- UGLY WORKAROUND -----
            # SDV forces a fixed RNG seed every time you sample with conditions :(
            #
            # The public API only provides .reset_sampling() to alter RNG, which returns RNG to the post-fitting state, which is ... insufficient.
            # This only allows you to repeat the same RNG for different conditions, not to repeat RNG or alter RNG.
            # As you can see, we use .reset_sampling() above for good reason, but this will not permit us all of the RNG control necessary to interact
            # with the learned distribution in statistically analyzable manners.
            # We need actually different RNG with the same condition / data for variance analysis (and many other use cases),
            # but there currently isn't an "accepted" API to achieve this.
            #
            # As such, the next line of code is VERY unstable and SDV may deprecate or break it at any time without warning.
            # As is often the case, SDV fixed this in the past and un-fixed it later, so this can be considered evolving behavior
            # in other words: behavior is unpredictable based on your SDV installation version. Caution is advised.
            # The current line of code in this file uses the user-level SDV object as that should remain SLIGHTLY more stable,
            # but the intended end effector is buried in the secondary sub-model which can be represented most directly as:
            #
            # model._model.random_state.seed(sample_seed)
            # ----- END DISCUSSION ------
            model._set_random_state(sample_seed)
            # Customize output name
            out_name = out_name.parents[0].joinpath(out_name.stem+f"_seed_{sample_seed}"+out_name.suffix)
        temp_save_name = out_name.with_name('temp_'+out_name.name)
        conditional_samples = model.sample_from_conditions(eval_conditions, output_file_path=temp_save_name)
        temp_save_name.unlink()
        results = pd.DataFrame([], columns=match_cols)
        for idx, row in conditional_samples.iterrows():
            objective = oracle_search(oracle, row, match_cols, as_rank=True)
            row_data = dict((c,d) for (c,d) in row.items())
            row_data['objective'] = objective
            results = pd.concat((results,pd.DataFrame(row_data, index=[0]))).reset_index(drop=True)
        results.to_csv(out_name, index=False)
        logger.debug(f"Sample_Path||{n_data}||{out_name}")
        sampled.append(results)
    return sampled

def evaluation(oracle_len, n_data, sampled, args):
    success = np.zeros(len(sampled), dtype=bool)
    success_count = np.zeros(len(sampled), dtype=int)
    target_idx_to_beat = int(round(oracle_len * args.target, 0))
    for (idx, samples) in enumerate(sampled):
        if args.inverted_objective:
            on_target = np.where(samples['objective'] > target_idx_to_beat)[0]
        else:
            on_target = np.where(samples['objective'] < target_idx_to_beat)[0]
        success_count[idx] = len(on_target)
        success[idx] = success_count[idx] >= args.hits
    logger.debug(f"FewShot_Success||{n_data}||{success_count}")
    return success

def trial(n_data, model, oracle, param_columns, input_space_size, problem_class, args):
    logger.debug(f"Trial_Selection_Method||{n_data}||{args.fit_method}{'+inverted-objective' if args.inverted_objective else ''}")
    # Fitting process
    fit_data = select_fit_data(oracle, n_data, param_columns, args)
    fit_model = deepcopy(model)
    with warnings.catch_warnings():
        warnings.simplefilter('ignore')
        fit_model.fit(fit_data)
    # Budgeting process
    budget_evals = autobudget(fit_model, n_data, input_space_size, problem_class, args)
    # Sampling process
    eval_conditions = [Condition({'scale': problem_class}, num_rows=budget_evals)]
    sampled = sample_seeds(fit_model, oracle, eval_conditions, n_data, param_columns, args)
    # Evaluate if seeds consistently hit target
    success = evaluation(len(oracle), n_data, sampled, args)
    if not all(success):
        logger.debug(f"Trial_Failures||{n_data}||{sum(~success)}")
        # Has to be done via a syncing primitive / in another way to continue supporting this
        #if args.early_exit_on_failure:
        #    break

def main(args=None):
    args = parse(args)
    logger.info(f"ArgDict||0||{args.__dict__}")
    logger.info(f"CWD||0||{os.path.abspath(os.getcwd())}")
    # Custom data schedule
    if args.custom_data_schedule is not None:
        args.custom_data_schedule = np.load(open(args.custom_data_schedule,'rb'))
        if not np.issubdtype(args.custom_data_schedule.dtype,int):
            raise ValueError(f"Custom data schedule must use an integer type (operate as indices), got {args.custom_data_schedule.dtype}")
    oracle = load_input(args)
    param_columns = [_ for _ in oracle.columns if _ not in ['objective','predicted','elapsed_sec']]
    # Set column types for learnable columns
    oracle = oracle.astype(dict((col,str) for col in param_columns))
    logger.debug(f"Learnable_Columns||0||{param_columns}")
    model, input_space_size, problem_class = build_model(oracle, param_columns, args)
    # Determine looping bounds
    data_schedule = range(2,len(oracle),1)
    if args.start_n_data is not None:
        data_schedule = range(args.start_n_data, len(oracle) if args.max_n_data is None else args.max_n_data, args.step_n_data)
    if args.custom_data_schedule is not None:
        data_schedule = args.custom_data_schedule
    # Iteratively re-fit and re-sample on seeds
    with multiprocessing.Pool() as pool:
        result_queue = []
        for n_data in data_schedule:
            #trial(n_data, model, oracle, param_columns, input_space_size, problem_class, args)
            result_queue.append(pool.apply_async(trial, (n_data, model, oracle, param_columns, input_space_size, problem_class, args)))
        for _ in result_queue:
            _.get()
    logger.debug(f"Exit_N_Data||0||{n_data}")
    return args

if __name__ == '__main__':
    args = main()
    # On successful termination, overwrite logs with fully-compliant JSON
    if args.log_experiment is not None:
        log_records = []
        with open(args.log_experiment,'r') as accumulated_logs:
            for line in accumulated_logs.readlines():
                log_records.append(json.loads(line))
        json.dump(log_records, open(args.log_experiment,'w'))

