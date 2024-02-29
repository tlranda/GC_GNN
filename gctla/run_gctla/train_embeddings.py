# Train
import time
start_time = time.time()
import numpy as np
NUMPY_SEED = 1
np.random.seed(NUMPY_SEED)
import pandas as pd
import matplotlib
import matplotlib.pyplot as plt
import torch
import pathlib, warnings, time, re, multiprocessing
import ConfigSpace as CS, ConfigSpace.hyperparameters as CSH
from ConfigSpace import ConfigurationSpace, EqualsCondition
from sdv.single_table import GaussianCopulaSynthesizer as GaussianCopula
from sdv.metadata import SingleTableMetadata
from sdv.sampling.tabular import Condition
from sdv.constraints import ScalarRange
# Local file, not module
import embedded_gctla

TARGET_DATA = "EXHAUSTIVE" # Options: SOURCE, EXHAUSTIVE

# Transfer Settings
TRAIN_TEST_SPLIT_POINT = 10648 # 580
N_FEATURES = 100 # Options: None (all), integer > 0 for that many features
N_INFERENCE = 1
EXHAUSTIVE_SOURCE_ORACLE = "SM"
TARGET_ORACLE = "XL"

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

# Make a train-test split
train_data = big_df.loc[:TRAIN_TEST_SPLIT_POINT,]
train_obj = rankings[:TRAIN_TEST_SPLIT_POINT]
test_data = big_df.loc[TRAIN_TEST_SPLIT_POINT:,]
test_obj = rankings[TRAIN_TEST_SPLIT_POINT:]

# Conditions and Constraints for SDV
lookup = getattr(embedded_gctla, "lookup")
conditions = []
for idx, rowdata in test_data.iterrows():
    conditions.append(Condition(dict((col, rowdata[col]) for col in EMBED_COLS), num_rows=N_INFERENCE))
constraints = []
"""
{'constraint_class': 'ScalarRange',
'constraint_parameters': {
    'column_name': 'input',
    'low_value': min(lookup.values()),
    'high_value': max(lookup.values()),
    'strict_boundaries': False,},
}
"""
stop_time = time.time()
print(f"Transfer setup (time: {stop_time-start_time})")
start_time = stop_time

# Set up SDV
metadata = SingleTableMetadata()
metadata.detect_from_dataframe(train_data)
model = GaussianCopula(metadata, enforce_min_max_values=False)
model.add_constraints(constraints=constraints)
warnings.simplefilter('ignore')
model.fit(train_data)
stop_time = time.time()
print(f"Model fit (time: {stop_time-start_time})")
start_time = stop_time
warnings.simplefilter('default')
# Inference
#generated_embeddings = model.sample_from_conditions(conditions)
def sample_slice(model, conditions, indices):
    temp_out_name = pathlib.Path(f".sample.csv.tmp_{indices}")
    generated = model.sample_from_conditions(conditions, output_file_path=temp_out_name)
    temp_out_name.unlink()
    return (indices, generated)

SLICE_INTERVAL = 100
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
    generated_embeddings = pd.DataFrame(generated_embeddings)
generated_embeddings.to_csv('generated.csv')
stop_time = time.time()
print(f"{len(generated_embeddings)} inferences made in {stop_time-start_time}")

def get_rank(problem, pdict, idx):
    return (idx, problem.objective(pdict, as_rank=True))

start_time = stop_time
# Evaluate
if TARGET_DATA == "EXHAUSTIVE":
    problem = getattr(embedded_gctla, f"oracle_{TARGET_ORACLE}")
    # Drop embedding columns for objective lookups here
    lookup_param_cols = [_ for _ in generated_embeddings if not _.startswith("emb_dim_")]
    problem.params = lookup_param_cols
    problem.n_params = len(lookup_param_cols)
    generated_objectives = np.zeros_like(test_obj)
    import tqdm
    """
    results_queue = []
    with multiprocessing.Pool() as pool:
        for (idx,generated_param) in tqdm.tqdm(generated_embeddings.iterrows(),total=len(generated_embeddings)):
            param_dict = dict((k,generated_param[k]) for k in lookup_param_cols)
            args = (problem, param_dict, idx)
            results_queue.append(pool.apply_async(get_rank, args))
    for result in tqdm.tqdm(results_queue):
        (idx, rank) = result.get()
        generated_objectives[idx] = rank
    """
    for (idx,generated_param) in tqdm.tqdm(generated_embeddings.iterrows(),total=len(generated_embeddings)):
        param_dict = dict((k,generated_param[k]) for k in lookup_param_cols)
        generated_objectives[idx] = problem.objective(param_dict, as_rank=True, without_embed=True)
    with open('original_ranks.npy','wb') as orig_ranks:
        np.save(orig_ranks,test_obj)
    with open('generated_ranks.npy','wb') as generated_ranks:
        np.save(generated_ranks,generated_objectives)
stop_time = time.time()
print(f"Reranked inferences in {stop_time-start_time}")

start_time = stop_time
fig, ax = plt.subplots()
reorder = np.argsort(test_obj)
x_range = range(test_obj.shape[0])
ax.plot(x_range, test_obj[reorder], label="True rank")
ax.scatter(x_range, generated_objectives[reorder], s=1, label="Generated rank", color='tab:orange')
ax.set_title("{TARGET_DATA} with {N_FEATURES} features")
ax.legend()
fig.savefig("rankings.png", dpi=200)
stop_time = time.time()
print("Plotted in {stop_time-start_time}")

