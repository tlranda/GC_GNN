# Train
import time
start_time = time.time()
import numpy as np
NUMPY_SEED = 1
np.random.seed(NUMPY_SEED)
import pandas as pd
import matplotlib
import matplotlib.pyplot as plt
import tqdm
import torch
import pathlib, warnings, time, re, multiprocessing
import copy
import ConfigSpace as CS, ConfigSpace.hyperparameters as CSH
from ConfigSpace import ConfigurationSpace
from sdv.single_table import GaussianCopulaSynthesizer as GaussianCopula
from sdv.metadata import SingleTableMetadata
from sdv.sampling.tabular import Condition
from sdv.constraints import ScalarRange

# Transfer Settings
print("SETTINGS:")
TARGET_DATA = "EXHAUSTIVE" # Options: SOURCE, EXHAUSTIVE
# Ranges are start:start+stop
TRAIN_SPLIT_START = 0
TRAIN_SPLIT_STOP = 10648
TEST_SPLIT_START = 10648
TEST_SPLIT_STOP = 10648
# Options for N_FEATURES : None (all), integer > 0 for that many features
N_FEATURES = None
N_INFERENCE = 1
EXHAUSTIVE_SOURCE_ORACLE = "SM"
TARGET_ORACLE = "XL"
FORCE_RECOMPUTE_EMBEDDINGS = False
FORCE_REFIT_MODEL = False
# Display values by reading array once
just_once = locals()
print("\n".join([f"{attr}: {just_once[attr]}" for attr in ["TARGET_DATA","TRAIN_SPLIT_START","TRAIN_SPLIT_STOP","TEST_SPLIT_START","TEST_SPLIT_STOP","N_FEATURES","N_INFERENCE","EXHAUSTIVE_SOURCE_ORACLE","TARGET_ORACLE","FORCE_RECOMPUTE_EMBEDDINGS","FORCE_REFIT_MODEL"]]))
del just_once

stop_time = time.time()
print(f"Modules loaded in {stop_time-start_time} seconds")

# Construct JOINT records
def find_parameters(name, param_csvs, PARAM_COLS):
    if type(name) is not str:
        if not isinstance(name, pathlib.Path):
            raise ValueError(f"Bad Type {type(name)} must be string-like")
        name = str(name)
    re_data = re.match(r".*mmp_syr2k_(.*)_([0-9]+)_embeddings.pth", name).groups(0)
    return param_csvs[re_data[0]].loc[int(re_data[1]), PARAM_COLS].copy()

def load_and_associate_exhaustive():
    full_tensors = np.load(pathlib.Path(__file__).parents[2].joinpath("sorted_tensors_syr2k_exhaustive_data.pkl"))
    tensor_names = np.load(pathlib.Path(__file__).parents[2].joinpath("sorted_tensors_syr2k_exhaustive_names.pkl"))
    # Purge polybench if present
    remove_queue = []
    for idx, name in enumerate(tensor_names):
        if name == 'polybench.pth':
            remove_queue.append(idx)
    full_tensors = full_tensors[np.nonzero([_ not in remove_queue for _ in np.arange(full_tensors.shape[0])])]
    tensor_names = tensor_names[np.nonzero([_ not in remove_queue for _ in np.arange(tensor_names.shape[0])])]
    global N_FEATURES
    if N_FEATURES is None:
        N_FEATURES = full_tensors.shape[2]
        print(f"Redefine N_FEATURES based on loaded data: {N_FEATURES}")
    PARAM_CSVS = pathlib.Path(__file__).parents[1].joinpath("oracles")
    SIZES = [EXHAUSTIVE_SOURCE_ORACLE, TARGET_ORACLE]
    tensor_names_lookup = dict((name, [idx for (idx,val) in enumerate(tensor_names) if name in val])
                               for name in SIZES)
    PARAM_CSVS = [PARAM_CSVS.joinpath(_).joinpath('all_'+_+'.csv') for _ in SIZES]
    PARAM_COLS = [f'p{n}' for n in range(6)]
    param_csvs = {}
    rankings = []
    for size, p in zip(SIZES, PARAM_CSVS):
        csv = pd.read_csv(p)
        csv.insert(0, 'source', [p.stem]*len(csv))
        rankings += np.argsort(csv['objective']).tolist()
        param_csvs[size] = csv.astype(str)
    rankings = np.asarray(rankings)

    joint_records = []
    loaded_size = None
    for size in SIZES:
        for idx, t_idx in enumerate(tensor_names_lookup[size]):
            parameterization = param_csvs[size].loc[idx, PARAM_COLS].copy().values.tolist()
            vector = full_tensors[t_idx,0,:N_FEATURES]
            if loaded_size is None:
                loaded_size = vector.shape[0]
            else:
                assert loaded_size == vector.shape[0]
            parameterization += vector.tolist()
            joint_records.append(parameterization)
    EMBED_COLS = [f'emb_dim_{i}' for i in range(loaded_size)]
    big_df = pd.DataFrame(data=joint_records, columns=PARAM_COLS+EMBED_COLS)
    return big_df, EMBED_COLS, rankings

def load_and_associate_source():
    EMBEDDING_DIR = pathlib.Path(__file__).parents[2].joinpath("embeddings")
    #torch_range = (slice(None,None,1),slice(None,None,1)) # ALL Data
    torch_range = (slice(None,None,1),slice(None,N_FEATURES,1)) # Limited Data

    embedding_names = np.asarray([f for f in EMBEDDING_DIR.iterdir() if str(f.name) != 'polybench_embeddings.pth'])
    def embedding_name_sorter(name):
        parts = str(name.name).split('_')
        return (ord(parts[2]) - ord('A'), # Letter extracted as a number for sorting
                int(parts[3]), # Number extracted from remainder of string
               )
    # Re-sort on key
    embedding_names = sorted(embedding_names, key=embedding_name_sorter)
    # Get associated parameters
    PARAM_CSVS = pathlib.Path(__file__).parents[1].joinpath("gc_source_tune_perf_obj")
    SIZES = "SML"
    PARAM_CSVS = [PARAM_CSVS.joinpath(f"syr2k_{size}.csv") for size in SIZES]
    PARAM_COLS = [f'p{n}' for n in range(6)]
    param_csvs = {}
    rankings = []
    for size, p in zip(SIZES,PARAM_CSVS):
        csv = pd.read_csv(p)
        csv.insert(0,'source',[p.stem]*len(csv))
        rankings += np.argsort(csv['objective']).tolist()
        param_csvs[size] = csv.astype(str)
    rankings = np.asarray(rankings)

    joint_records = []
    loaded_size = None
    for idx, name in enumerate(embedding_names):
        parameterization = find_parameters(name, param_csvs, PARAM_COLS).values.tolist()
        vector = torch.load(name)[torch_range]
        if loaded_size is None:
            loaded_size = vector.shape[1]
        else:
            assert loaded_size == vector.shape[1]
        parameterization += vector.ravel().tolist()
        joint_records.append(parameterization)
    EMBED_COLS = [f'emb_dim_{i}' for i in range(loaded_size)]
    big_df = pd.DataFrame(data=joint_records, columns=PARAM_COLS+EMBED_COLS)
    return big_df, EMBED_COLS, rankings

start_time = stop_time
if TARGET_DATA == "SOURCE":
    big_df, EMBED_COLS, rankings = load_and_associate_source()
elif TARGET_DATA == "EXHAUSTIVE":
    big_df, EMBED_COLS, rankings = load_and_associate_exhaustive()
stop_time = time.time()
print(f"Loaded data: {big_df.shape} (time: {stop_time-start_time})")
start_time = stop_time

if FORCE_RECOMPUTE_EMBEDDINGS:
    precomputed_embeddings = None
else:
    precomputed_embeddings = f"generated_{N_FEATURES}.csv"
# Make a train-test split
# For some reason, pandas includes the end of the slice?? WTF
train_data = big_df.loc[TRAIN_SPLIT_START:TRAIN_SPLIT_START+TRAIN_SPLIT_STOP-1,]
train_obj = rankings[TRAIN_SPLIT_START:TRAIN_SPLIT_START+TRAIN_SPLIT_STOP]
test_data = big_df.loc[TEST_SPLIT_START:TEST_SPLIT_START+TEST_SPLIT_STOP-1,]
test_obj = rankings[TEST_SPLIT_START:TEST_SPLIT_START+TEST_SPLIT_STOP]
print(f"Train data {train_data.shape}, train objective {train_obj.shape}")
print(f"Test data {test_data.shape}, test objective {test_obj.shape}")

from GC_TLA.implementations import embedded
problem = getattr(embedded, f"embedded_{TARGET_ORACLE}_{N_FEATURES}")
problem.silent = True
# Inference
#generated_embeddings = model.sample_from_conditions(conditions)
def sample_slice(model, conditions, indices):
    temp_out_name = pathlib.Path(f".sample.csv.tmp_{indices}")
    warnings.simplefilter('ignore')
    generated = model.sample_from_conditions(conditions, output_file_path=temp_out_name)
    warnings.simplefilter('default')
    temp_out_name.unlink()
    return (indices, generated)

if precomputed_embeddings is None or not pathlib.Path(precomputed_embeddings).exists():
    # Conditions and Constraints for SDV
    conditions = []
    for idx, rowdata in test_data.iterrows():
        conditions.append(Condition(dict((col, rowdata[col]) for col in EMBED_COLS), num_rows=N_INFERENCE))
    min_const, max_const = problem.problem_mapping.app_scale_range
    constraints = [] #ScalarRange(column_name='input', low_value=min_const, high_value=max_const, strict_boundaries=False)]
    stop_time = time.time()
    print(f"Transfer setup (time: {stop_time-start_time})")
    start_time = stop_time

    # Set up SDV
    expected_model_path = pathlib.Path(f"model_for_{N_FEATURES}_features.pkl")
    metadata = SingleTableMetadata()
    metadata.detect_from_dataframe(train_data)
    model = GaussianCopula(metadata, enforce_min_max_values=False)
    if FORCE_REFIT_MODEL or not expected_model_path.exists():
        model.add_constraints(constraints=constraints)
        warnings.simplefilter('ignore')
        model.fit(train_data)
        stop_time = time.time()
        print(f"Model fit (time: {stop_time-start_time})")
        start_time = stop_time
        warnings.simplefilter('default')
        start_time = stop_time
        model.save(expected_model_path)
        stop_time = time.time()
        print(f"Model save time (time: {stop_time-start_time})")
    else:
        model = model.load(expected_model_path)
        stop_time = time.time()
        print(f"Model reload from {expected_model_path} (time: {stop_time-start_time})")
    start_time = stop_time

    SLICE_INTERVAL = 10
    SLICE_LIMIT = len(conditions)
    with multiprocessing.Pool() as pool:
        results_queue = []
        generated_embeddings = [0 for _ in range(SLICE_LIMIT)]
        for start_idx in range(0, SLICE_LIMIT, SLICE_INTERVAL):
            max_idx = min(start_idx+SLICE_INTERVAL, SLICE_LIMIT)
            idx_slice = slice(start_idx, max_idx)
            args = (model, conditions[idx_slice], idx_slice)
            results_queue.append(pool.apply_async(sample_slice, args))
        for result in results_queue:
            idx_slice, generation = result.get()
            slice_as_range = range(idx_slice.start, idx_slice.stop, idx_slice.step if idx_slice.step is not None else 1)
            for (idx, (_,series)) in zip(slice_as_range, generation.iterrows()):
                generated_embeddings[idx] = series
        generated_embeddings = pd.DataFrame(generated_embeddings).reset_index(drop=True)
    generated_embeddings.to_csv(precomputed_embeddings, index=False)
    stop_time = time.time()
    print(f"{len(generated_embeddings)} inferences made in {stop_time-start_time}")
else:
    start_time = stop_time
    generated_embeddings = pd.read_csv(precomputed_embeddings).astype(str)
    stop_time = time.time()
    print(f"Reloaded {len(generated_embeddings)} inferences from {precomputed_embeddings} in {stop_time-start_time}")

def get_rank(problem, pdict, idx):
    #print(f'Produce {idx}')
    try:
        rank = problem.evaluateConfiguration(pdict, use_oracle=True, as_rank=True, single_return=True)
    except:
        return (None,None)
    return (idx, rank)

start_time = stop_time
# Evaluate
if TARGET_DATA == "EXHAUSTIVE":
    # Drop embedding columns for objective lookups here
    lookup_param_cols = [_ for _ in generated_embeddings if not _.startswith("emb_dim_")]
    generated_objectives = np.zeros_like(test_obj)
    """
    print("Make async pool")
    results_queue = []
    with multiprocessing.Pool() as pool:
        for (idx,generated_param) in generated_embeddings.iterrows():
            param_dict = dict((k.upper(),generated_param[k]) for k in lookup_param_cols)
            args = copy.deepcopy((problem, param_dict, idx))
            results_queue.append(pool.apply_async(get_rank, args))
            time.sleep(0.05)
    print("Async pool created")
    #for result in tqdm.tqdm(results_queue):
    for result in results_queue:
        (idx, rank) = result.get()
        if idx is not None:
            generated_objectives[idx] = rank
            #print(f'Fetched {idx}')
    print("Done")
    """
    for (idx,generated_param) in tqdm.tqdm(generated_embeddings.iterrows(),total=len(generated_embeddings)):
        param_dict = dict((k.upper(),generated_param[k]) for k in lookup_param_cols)
        generated_objectives[idx] = problem.evaluateConfiguration(param_dict, use_oracle=True, as_rank=True, single_return=True)
        #print(f'Produce and fetch {idx}')
    #"""
    with open(f'original_ranks_{N_FEATURES}.npy','wb') as orig_ranks:
        np.save(orig_ranks,test_obj)
    with open(f'generated_ranks_{N_FEATURES}.npy','wb') as generated_ranks:
        np.save(generated_ranks,generated_objectives)
stop_time = time.time()
print(f"Reranked inferences in {stop_time-start_time}")

start_time = stop_time
fig, ax = plt.subplots()
reorder = np.argsort(test_obj)
x_range = range(test_obj.shape[0])
ax.plot(x_range, test_obj[reorder], label="True rank")
ax.scatter(x_range, generated_objectives[reorder], s=1, label="Generated rank", color='tab:orange')
ax.set_title(f"{TARGET_DATA} with {N_FEATURES} features")
ax.legend()
fig.savefig(f"rankings_{N_FEATURES}.png", dpi=200)
stop_time = time.time()
print(f"Plotted in {stop_time-start_time}")

