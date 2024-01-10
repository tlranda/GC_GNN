# Train
import time
start_time = time.time()
import numpy as np
NUMPY_SEED = 1
np.random.seed(NUMPY_SEED)
import pandas as pd
import torch
import pathlib, warnings, time
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

# Settings
N_INFERENCE = 100
TARGET_ORACLE = "XL"
EMBEDDING_DIR = pathlib.Path(__file__).parents[2].joinpath("embeddings")
torch_range = (slice(None,None,1),slice(None,None,1)) # ALL Data
#torch_range = (slice(None,None,1),slice(None,600,1)) # Limited Data


# Conditions and Constraints for SDV
lookup = getattr(embedded_gctla, "lookup")
conditions = [Condition({'input': lookup[TARGET_ORACLE]}, num_rows=N_INFERENCE)]
constraints = [{'constraint_class': 'ScalarRange',
                'constraint_parameters': {
                    'column_name': 'input',
                    'low_value': min(lookup.values()),
                    'high_value': max(lookup.values()),
                    'strict_boundaries': False,},
                }]
embedding_names = np.asarray([f for f in EMBEDDING_DIR.iterdir() if str(f.name) != 'polybench_embeddings.pth'])
def embedding_name_sorter(name):
    parts = str(name.name).split('_')
    return (ord(parts[2]) - ord('A'), # Letter extracted as a number for sorting
            int(parts[3]), # Number extracted from remainder of string
           )
# Re-sort on key
embedding_names = sorted(embedding_names, key=embedding_name_sorter)
np_data = np.vstack(tuple(torch.load(f)[torch_range] for f in embedding_names))
stop_time = time.time()
print(f"Loaded data: {np_data.shape} (time: {stop_time-start_time})")
start_time = stop_time
pd_data = pd.DataFrame(data=np_data, columns=[str(i) for i in range(np_data.shape[1])])
# Add class size labels to all data
pd_data.insert(0, 'input', [lookup[_.name.split("_")[2]] for _ in embedding_names])

# Set up SDV
metadata = SingleTableMetadata()
metadata.detect_from_dataframe(pd_data)
model = GaussianCopula(metadata, enforce_min_max_values=False)
model.add_constraints(constraints=constraints)
warnings.simplefilter('ignore')
model.fit(pd_data)
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

