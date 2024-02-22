# Train
import time
start_time = time.time()
import numpy as np
NUMPY_SEED = 1
np.random.seed(NUMPY_SEED)
import pandas as pd
import torch
import pathlib, warnings, time, re
import ConfigSpace as CS, ConfigSpace.hyperparameters as CSH
from ConfigSpace import ConfigurationSpace, EqualsCondition
from sdv.single_table import GaussianCopulaSynthesizer as GaussianCopula
from sdv.metadata import SingleTableMetadata
from sdv.sampling.tabular import Condition
from sdv.constraints import ScalarRange
# Local file, not module
import embedded_gctla

stop_time = time.time()
print(f"Modules loaded in {stop_time-start_time} seconds")
start_time = stop_time

EMBEDDING_DIR = pathlib.Path(__file__).parents[2].joinpath("embeddings")
torch_range = (slice(None,None,1),slice(None,None,1)) # ALL Data
#torch_range = (slice(None,None,1),slice(None,600,1)) # Limited Data

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
for size, p in zip(SIZES,PARAM_CSVS):
    csv = pd.read_csv(p)
    csv.insert(0,'source',[p.stem]*len(csv))
    param_csvs[size] = csv.astype(str)

# Construct JOINT records
def find_parameters(name):
    if type(name) is not str:
        if not isinstance(name, pathlib.Path):
            raise ValueError(f"Bad Type {type(name)} must be string-like")
        name = str(name)
    re_data = re.match(r".*mmp_syr2k_(.*)_([0-9]+)_embeddings.pth", name).groups(0)
    return param_csvs[re_data[0]].loc[int(re_data[1]), PARAM_COLS].copy()

joint_records = []
loaded_size = None
for idx, name in enumerate(embedding_names):
    parameterization = find_parameters(name).values.tolist()
    vector = torch.load(name)[torch_range]
    if loaded_size is None:
        loaded_size = vector.shape[1]
    else:
        assert loaded_size == vector.shape[1]
    parameterization += vector.ravel().tolist()
    joint_records.append(parameterization)
EMBED_COLS = [f'emb_dim_{i}' for i in range(loaded_size)]
big_df = pd.DataFrame(data=joint_records, columns=PARAM_COLS+EMBED_COLS)
stop_time = time.time()
print(f"Loaded data: {big_df.shape} (time: {stop_time-start_time})")
start_time = stop_time

# Make a train-test split
TRAIN_TEST_SPLIT_POINT = 580
train_data = big_df.loc[:TRAIN_TEST_SPLIT_POINT,]
test_data = big_df.loc[TRAIN_TEST_SPLIT_POINT:,]

# Transfer Settings
N_INFERENCE = 2
TARGET_ORACLE = "XL"

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
generated_embeddings = model.sample_from_conditions(conditions)
stop_time = time.time()
print(f"{len(generated_embeddings)} inferences made in {stop_time-start_time}")

# Evaluate
"""
If we could look up embeddings, this is how we'd do it:
Currently, you call problem.objective(problem_space_dict) to look up the problem in the oracle
However, the space dict must be in terms of the original search space, not as an embedding
We will navigate this bridge later
"""
"""
problem = getattr(embedded_gctla, f"oracle_{TARGET_ORACLE}")
potential_configuration = {
    "p0": "#pragma clang loop(j2) pack array(A) allocate(malloc)",
    "p1": " ",
    "p2": " ",
    "p3": "32",
    "p4": "128",
    "p5": "4",
}
objective_val = problem.objective(potential_configuration)
print(objective_val)
"""

