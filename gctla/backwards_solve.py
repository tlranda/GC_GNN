"""
    Use an oracle dataset to progressively determine what kind of data is necessary from self-task or transfer tasks to "succeed" in autotuning
"""
import pandas as pd, numpy as np
import os, time, sys, argparse, pathlib, inspect, warnings, json, logging
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

class JsonLogFormatter(logging.Formatter):
    def __init__(self):
        super().__init__()
        self.log_records = []
    def format(self, record):
        log_data = {
            'timestamp': self.formatTime(record),
            'level': record.levelname,
            'message': record.getMessage(),
            'moduleName': record.module,
            'funcName': record.funcName,
            'lineNo': record.lineno,
        }
        self.log_records.append(log_data)
        return json.dumps(log_data)
    def get_log_records(self):
        return self.log_records
logger = logging.getLogger(__name__)
logger.setLevel(logging.DEBUG)

def build():
    prs = argparse.ArgumentParser(description="Use an oracle dataset to progressively determine what kind of data is necessary for 'success' in autotuning")
    experiment = prs.add_argument_group("Few-Shot Experiment Settings")
    experiment.add_argument("--max-evals", type=int, default=30,
                            help="Number of evals (default: %(default)s)")
    experiment.add_argument("--fit-seed", type=int, default=None,
                            help="RNG seed during model fitting (default: %(default)s)")
    experiment.add_argument("--sample-seed", type=int, default=None, nargs="*",
                            help="RNG seed(s) during model inference (default: %(default)s)")
    experiment.add_argument("--filter", type=float, default=0.3,
                            help="Filtering quantile (default: %(default)s)")
    experiment.add_argument("--inverted-filter", action="store_true",
                            help="Invert filtering criterion (default: %(default)s)")
    experiment.add_argument("--target", type=float, default=0.1,
                            help="Target quantile to meet for a seed's sampling to be considered 'successful' (default %(default)s)")
    experiment.add_argument("--hits", type=int, default=1,
                            help="Number of samples that must be at/below target quantile per seed for the overall sampling to be considered 'successful' (default %(default)s)")
    experiment.add_argument("--skip-auto-budget", action="store_true",
                            help="Always use --max-evals as budet, do not attempt to derive an experiment experiment (default: %(default)s)")
    experiment.add_argument("--always-max-evals", action="store_true",
                            help="Calculate auto experiment, but always utilize max-evals (default: %(default)s)")
    experiment.add_argument("--budget-ideal", type=float, default=0.1,
                            help="Ideal Proportion of the population to sample (default %(default)s)")
    experiment.add_argument("--budget-attrition", type=float, default=0.05,
                            help="Expected attrition ratio of ideal items removed by GC distribution's specificity (default %(default)s)")
    experiment.add_argument("--budget-confidence", type=float, default=0.95,
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
    # Instantiate log file handler
    if args.log_experiment is None:
        handler = logging.StreamHandler(sys.stdout)
    else:
        handler = logging.FileHandler(args.log_experiment, mode='a')
    handler.setFormatter(JsonLogFormatter())
    logger.addHandler(handler)
    return args

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
        non_scale_cols = [_ for _ in load.columns if _ not in ['scale','objective']]
        load[non_scale_cols] = load[non_scale_cols].astype(str)
        concat.append(load)
    loaded = pd.concat(concat).sort_values(by=['objective']).reset_index(drop=True)
    logger.debug(f"Loaded {len(loaded)} input data from {', '.join(args.input_data)}")
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
    logger.debug(f"Imported evaluator from {args.problem_file} based on scale name: {oracle_scale_name}")
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
    logger.debug(f"Set constraints: {constraints}")
    metadata = SingleTableMetadata()
    metadata.detect_from_dataframe(df[match_cols])
    model = GaussianCopula(metadata, enforce_min_max_values=False)
    model.add_constraints(constraints=constraints)
    return model, evaluator

def autobudget(model, evaluator, args):
    if args.skip_auto_budget:
        logger.debug(f"Autotuning budget SKIPPED. Using --max-evals={args.max_evals} as budget")
        return args.max_evals
    initial_population = evaluator.input_space_size
    budget_conditions = [Condition({'scale': evaluator.problem_class}, num_rows=initial_population)]
    logger.debug(f"Determining auto-budget...")
    massive_sample = model.sample_from_conditions(budget_conditions)
    model.reset_sampling() # Ensure budgeting does not change RNG for the observed output (especially if skipped)
    sampled_pop_size = len(massive_sample.drop_duplicates())
    ideal = int(initial_population * args.budget_ideal)
    remaining_ideal = max(1, ideal - int((initial_population - sampled_pop_size) * args.budget_attrition))
    if remaining_ideal > sampled_pop_size:
        logger.debug(f"Autotuning budget indeterminate, using --max-evals={args.max_evals} as budget")
        suggested_budget = args.max_evals
    else:
        suggested_budget = 0
        while suggested_budget < sampled_pop_size:
            suggested_budget += 1
            confidence = sum([hypergeo(remaining_ideal, sampled_pop_size, _, suggested_budget) for _ in range(1, suggested_budget+1)])
            if confidence >= args.budget_confidence:
                break
        if confidence >= args.budget_confidence:
            logger.debug(f"Autotuning budget {suggested_budget} attains accepted confidence: {confidence:.4f} >= {args.budget_confidence}")
        else:
            logger.debug(f"Autotuning budget {suggested_budget} fails to meet desired confidence {args.budget_confidence}. Best confidence: {confidence:.4f}")
        if suggested_budget > args.max_evals:
            logger.debug(f"Reducing budget {suggested_budget} to --max-evals value: {args.max_evals}")
            suggested_budget = args.max_evals
        elif args.always_max_evals:
            logger.debug(f"Overriding budget to --max-evals value ({args.max_evals}) due to --always-max-evals")
            suggested_budget = args.max_evals
    return suggested_budget

def sample_seeds(model, evaluator, eval_conditions, n_data, match_cols, args):
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
        conditional_samples = model.sample_from_conditions(eval_conditions)
        results = pd.DataFrame([], columns=match_cols)
        for idx, row in conditional_samples.iterrows():
            row_params = [_ for _ in row[:-1]]
            objective = evaluator.oracle_search(row_params, as_rank=True)
            row_data = dict((c,d) for (c,d) in row.items())
            row_data['objective'] = objective
            results = pd.concat((results,pd.DataFrame(row_data, index=[0]))).reset_index(drop=True)
        results.to_csv(out_name, index=False)
        logger.debug(f"{len(results)} samples saved to {out_name}")
        sampled.append(results)
    return sampled

def evaluation(oracle, sampled, args):
    success = np.zeros(len(sampled), dtype=bool)
    success_count = np.zeros(len(sampled), dtype=int)
    target_idx_to_beat = int(round(len(oracle) * args.target, 0))
    for (idx, samples) in enumerate(sampled):
        if args.inverted_filter:
            on_target = np.where(samples['objective'] > target_idx_to_beat)[0]
        else:
            on_target = np.where(samples['objective'] < target_idx_to_beat)[0]
        success_count[idx] = len(on_target)
        success[idx] = success_count[idx] >= args.hits
    logger.debug(f"Few-shot Evaluation success count: {success_count}")
    return success

def main(args=None):
    args = parse(args)
    logger.info(args.__dict__)
    oracle = load_input(args)
    param_columns = [_ for _ in oracle.columns if _ not in ['objective','predicted','elapsed_sec']]
    model, evaluator = build_model(oracle, param_columns, args)
    # Iteratively re-fit and re-sample on seeds
    n_data = args.start_n_data
    while n_data < len(oracle) and (args.max_n_data is None or n_data < args.max_n_data):
        logger.debug(f"Begin trial with {n_data} data points")
        # Fitting process
        fit_model = deepcopy(model)
        with warnings.catch_warnings():
            warnings.simplefilter('ignore')
            fit_model.fit(oracle.loc[range(n_data), param_columns])
        # Budgeting process
        budget_evals = autobudget(fit_model, evaluator, args)
        # Sampling process
        eval_conditions = [Condition({'scale': evaluator.problem_class}, num_rows=budget_evals)]
        sampled = sample_seeds(fit_model, evaluator, eval_conditions, n_data, param_columns, args)
        # Evaluate if seeds consistently hit target
        success = evaluation(oracle, sampled, args)
        if not all(success):
            logger.debug(f"{sum(~success)}/{len(success)} seed failures with {n_data} records")
            if args.max_n_data is None or not args.to_max_n_data:
                break
        n_data += args.step_n_data
    logger.debug(f"Exiting on {n_data} trial")
    return args

if __name__ == '__main__':
    args = main()
    # On successful termination, overwrite logs with fully-compliant JSON
    if args.log_experiment is not None:
        log_records = logger.handlers[0].formatter.get_log_records()
        json.dump(log_records, open(args.log_experiment,'w'))

