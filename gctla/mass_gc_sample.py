"""
    OLD -- PROBABLY DO NOT USE
    Runs the GC on the syr2k problem to collect a LOT of samples for a given
    syr2k seed.
"""
# Builtins
import pathlib
import random

# Other deps
import numpy as np
import pandas as pd
from sdv.single_table import GaussianCopulaSynthesizer as GC
from sdv.metadata import SingleTableMetadata as STM
from sdv.sampling.tabular import Condition
import tqdm
# Local deps / GC
from GC_TLA.implementations.syr2k import (tunable_params,
                                          problem_mapping,
                                          #constraints,
                                          )

SEED = 9999
np.random.seed(SEED)
random.seed(SEED)

inverse_problem_mapping = dict((v[0],k) for (k,v) in problem_mapping.items())
constraints = [{'constraint_class': 'ScalarRange',
               'constraint_parameters': {
                   'column_name': 'input',
                   'low_value': min(problem_mapping.keys()),
                   'high_value': max(problem_mapping.keys()),
                   },
               },
              ]
# Detect number of configurations in the space
N_CONFIGS = 1
for param in tunable_params.get_hyperparameters():
    if hasattr(param, 'choices'):
        N_CONFIGS *= len(param.choices)
    elif hasattr(param, 'sequence'):
        N_CONFIGS *= len(param.sequence)
# Permit at least 1-to-1 sampling for every single unique configuration
conditions = [Condition({'input': inverse_problem_mapping['SM'],}, num_rows=N_CONFIGS),
              Condition({'input': inverse_problem_mapping['XL'],}, num_rows=N_CONFIGS),
             ]
# Get training data for GC
training_data = []
for source in pathlib.Path('../syr2k_data/syr2k_reference/').iterdir():
    if source.suffix != '.csv':
        continue
    if len(source.stem.split('_')) != 2:
        continue
    if source.stem.split('_')[0] != 'syr2k':
        continue
    print(f"Load {source} for training")
    loaded = pd.read_csv(source).sort_values(by=['objective']).reset_index(drop=True)
    loaded = loaded.drop(columns=['objective','elapsed_sec'])
    loaded.insert(0,'input',
             [inverse_problem_mapping[source.stem.split('_')[1]]] * len(loaded))
    # Top-30% only for training data
    loaded_clipped = loaded.iloc[: len(loaded) * 3 // 10]
    training_data.append(loaded_clipped)
training_data = pd.concat(training_data)
# Make model and fit it
metadata = STM()
metadata.detect_from_dataframe(training_data)
param_cols = [f'p{_}' for _ in range(6)]
for col in param_cols:
    metadata.update_column(col, sdtype='categorical')
model = GC(metadata, enforce_min_max_values=False)
model.add_constraints(constraints=constraints)
model.fit(training_data)
# Do inference according to seed
model._set_random_state(SEED)
model._random_state_set = True
sampled = model.sample_from_conditions(conditions)
# De-inference from config to rank
sm_ranks = pd.read_csv('../syr2k_data/oracles/SM/all_SM.csv').sort_values(by=['objective']).reset_index(drop=True).drop(columns=['predicted','elapsed_sec','objective']).astype(str)
xl_ranks = pd.read_csv('../syr2k_data/oracles/XL/all_XL.csv').sort_values(by=['objective']).reset_index(drop=True).drop(columns=['predicted','elapsed_sec','objective']).astype(str)
ranked = pd.DataFrame({'input': sampled['input'],
                       'rank': [-1] * len(sampled),
                       'duplicated': [False] * len(sampled)})
for col in sampled.columns[::-1]:
    if col not in ranked.columns:
        ranked.insert(0,col,[None] * len(sampled))
picked_ranks = dict((k,set()) for k in set(sampled['input']))
for idx, row in tqdm.tqdm(sampled.iterrows(), total=len(sampled)):
    tup = tuple(row[param_cols].astype(str))
    if row['input'] == 130: # SM
        select = (sm_ranks == tup).sum(1)
    elif row['input'] == 2000: # XL
        select = (xl_ranks == tup).sum(1)
    else:
        raise ValueError
    matched = np.where(select == len(param_cols))[0][0]
    ranked.loc[idx,'rank'] = matched
    ranked.loc[idx,sampled.columns] = row[sampled.columns]
    if matched in picked_ranks[row['input']]:
        ranked.loc[idx,'duplicated'] = True
    else:
        picked_ranks[row['input']].add(matched)
ranked.to_csv(f'GC_selections_{SEED}.csv',index=False)

