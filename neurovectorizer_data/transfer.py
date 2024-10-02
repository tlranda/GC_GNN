#!/usr/bin/env python3
import warnings
import numpy as np
import pandas as pd
from GC_TLA.implementations.neurovectorizer import neurovectorizer_titan as nvt
import sdv
from sdv.single_table import GaussianCopulaSynthesizer as GaussianCopula
from sdv.metadata import SingleTableMetadata
from sdv.sampling.tabular import Condition
import tqdm
import torch # For controlling sdv rng

# Mathematics to control auto-budgeting
try:
    from math import comb
except ImportError:
    from math import factorial
    def comb(n,k):
        return factorial(n) / (factorial(k) * factorial(n-k))
def hypergeo(i,p,t,k):
    return (comb(i,t)*comb((p-i),(k-t))) / comb(p,k)

# ALL possible names
possible_names = np.asarray(sorted(set(nvt.executor.oracle_data['app'])))

n_sample = 3
np.random.seed(2024)
torch.manual_seed(2024)

# Prune names to this subset
possible_names = pd.read_csv('train_order.csv')['source'].to_numpy()
train_test_ratio = 0.5
fit_best = False #True
if fit_best:
    source_app = possible_names[:int(train_test_ratio * len(possible_names))]
else:
    source_app = possible_names[-int(train_test_ratio * len(possible_names)):]
#source_app = possible_names[[0,10,20,30,40]]
"""
source_app = [
's10_1024_add_0',
's10_1024_mul_4',
's10_1024_sub_0',
's10_1024_sub_1',
's10_1024_sub_2',
's10_1024_sub_3', # Truncated here for very small source set
's10_1024_add_1',
's10_1024_add_2',
's10_1024_add_3',
's10_2048_sub_0',
's10_2048_sub_3',
's10_2048_mul_4',
's10_2048_sub_2',
's10_2048_sub_1',
's10_2048_add_0',
's10_2048_add_2',
's10_2048_add_3',
's10_2048_add_1',
's10_16384_sub_4',
's10_4096_mul_4',
's10_4096_sub_3',
's10_4096_sub_0',
's10_4096_sub_2',
's10_4096_sub_1',
's12_2048_sa_out',
's12_4096_input_out',
's12_4096_in_assign',
's12_4096_sa_assign',
's17_8192_sub_3',
's12_4096_2_short_a_result',
's12_4096_short_a_assign',
's12_4096_input_assign',
's12_4096_input_result',
's12_4096_sa_result',
's12_4096_input_ia',
's12_4096_in_result',
's12_4096_in_ia',
's12_4096_short_a_ia',
's12_4096_short_a_out',
's12_4096_sa_ia',
's12_4096_sa_out',
's12_4096_in_out',
's12_1024_sa_result',
's12_1024_short_a_assign',
's12_2048_in_result',
's12_2048_sa_assign',
's12_1024_input_result',
's12_1024_in_result',
's12_1024_in_out',
's12_2048_in_ia',
's12_2048_sa_ia',
's12_2048_sa_result',
's12_2048_input_result',
's12_2048_input_assign',
's12_2048_in_out',
's12_1024_input_assign',
's12_1024_sa_assign',
's12_1024_input_ia',
's12_1024_input_out',
's12_1024_in_assign',
's12_1024_short_a_out',
's12_2048_in_assign',
's12_2048_input_ia',
's12_1024_short_a_ia',
's12_1024_in_ia',
's12_1024_sa_out',
's12_2048_short_a_out',
's12_2048_2_short_a_result',
's10_4096_add_1',
's12_2048_input_out',
's12_2048_short_a_ia',
's10_4096_add_2',
's12_2048_short_a_assign',
's12_1024_sa_ia',
's7_4096_1',
's12_1024_2_short_a_result',
's10_4096_add_3',
's7_4096_4',
's10_4096_add_0',
's7_4096_2',
's7_1024_4',
's7_2048_0',
's7_2048_4',
's7_1024_2',
's7_2048_1',
's7_1024_1',
's7_1024_3',
's7_2048_2',
's7_16384_5',
's7_256_5',
's6n_8192_sub_5',
's7_4096_3',
's10_256_sub_4',
's7_4096_0',
's17_8192_sub_6',
's17_16384_sum_1',
's17_8192_sub_0',
's17_8192_mul_6',
's17_8192_sum_0',
's17_8192_sum_2',
]
"""
source_app_csv = pd.DataFrame(data={'app':source_app},index=range(len(source_app)))
source_app_csv.to_csv("GC_Source_Applications.csv", index=False)
"""
target_app = [
 's10_1024_add_0',
 's15_16384_128_sub_2'
]
"""
target_app = np.asarray([_ for _ in possible_names if _ not in source_app])
"""
Highest correlations with s10_1024_add_0:
s10_1024_mul_4: 0.9056244519128787
s10_1024_sub_0: 0.9055084262008449
s10_1024_sub_1: 0.9052953707883167
s10_1024_sub_2: 0.9034496685839815
s10_1024_sub_3: 0.9027658759577109
"""
"""
Lowest correlations with s10_1024_add_0:
s15_16384_128_sub_2: -243026.52833114975
s15_16384_128_sub_1: -211924.10570912564
s15_16384_64_mul_1: -189557.52909563904
s15_16384_64_mul_4: -171623.8577204062
s15_16384_64_sub_3: -168659.54883896702
"""

string_casted = False # Convert train/inference data to strings to guarantee exact matches
NONPREDICT = ['app','runtime']
training_quantile = 0.25
n_sample = 10 # Space has 35 sampleable values
# Budget calculation portion
total_population = 35 # Number of samples in search space
ideal_samples = 3 # Target to hit [0,#] inclusive
target_confidence = 0.95 # Confidence in hitting target

# This violates the subset operation I'm doing and re-introduces bonus data. Have to fix it
raw_data = nvt.executor.oracle_data.drop(columns=['Unnamed: 0'])
lookup_names = raw_data['app']
source_idx = np.in1d(lookup_names, source_app)
#source_idx = [idx for (idx, name) in enumerate(lookup_names) if name in source_app]
target_idx = np.in1d(lookup_names, target_app)
#target_idx = [idx for (idx, name) in enumerate(lookup_names) if name in target_app]
source_data = raw_data.loc[source_idx].reset_index(drop=True)
target_data = raw_data.loc[target_idx].reset_index(drop=True)
#source_data = pd.concat([raw_data[raw_data['app'] == source] for source in source_app]).reset_index(drop=True)
if string_casted:
    source_data[['VF','IF']] = source_data[['VF','IF']].astype(str)

# Drop app identifier and runtime
training_cols = [_ for _ in source_data.columns if _ not in NONPREDICT]
# Top half of data only
train_data = source_data[source_data['runtime'] < source_data['runtime'].quantile(training_quantile)].loc[:,training_cols]
print(f"Train on top-quantile {training_quantile} data, rows reduced {len(source_data)} --> {len(train_data)}")

# Budget calculation
suggested_budget = 0
while suggested_budget < total_population:
    suggested_budget += 1
    confidence = sum([hypergeo(ideal_samples, total_population, _, suggested_budget) for _ in range(1,suggested_budget+1)])
    if confidence >= target_confidence:
        break
print(f"Budget for {ideal_samples} ideal samples from population of {total_population} with {target_confidence} confidence")
print(f"{suggested_budget} evaluations")

# Make SDV ready
metadata = SingleTableMetadata()
metadata.detect_from_dataframe(train_data)
model = GaussianCopula(metadata, enforce_min_max_values=False)
with warnings.catch_warnings():
    warnings.simplefilter('ignore')
    model.fit(train_data)

sampled = model.sample(num_rows=n_sample)
if string_casted:
    sampled[['VF','IF']] = sampled[['VF','IF']].astype(int)
sample_np = sampled.to_numpy()
print("Literal GC predictions")
print(sampled)
possible = target_data[['VF','IF']].drop_duplicates().to_numpy()
casted = {'VF':[],'IF':[]}
for sample in sample_np:
    distances = ((possible - sample)**2).sum(axis=1)
    closest = np.argmin(distances)
    casted['VF'].append(possible[closest,0])
    casted['IF'].append(possible[closest,1])
print("Closest representation")
closest_sample = pd.DataFrame(data=casted,index=range(len(sample_np))).drop_duplicates()
closest_sample_np = closest_sample.to_numpy()
print(closest_sample)
closest_sample.to_csv("GC_Samples.csv", index=False)

n_successes = 0
for target in tqdm.tqdm(target_app):
    # Find minimum distance
    oracle_data = target_data[target_data['app'] == target].drop(columns=['app']).sort_values(by=['runtime']).reset_index(drop=True)
    oracle_view = oracle_data.loc[:,training_cols].to_numpy()
    exact_match = np.zeros(len(sample_np), dtype=bool)
    oracle_idx  = np.zeros(len(sample_np), dtype=int)
    for idx, sample in enumerate(sample_np):
        oracle_distances = ((oracle_view - sample)**2).sum(axis=1)
        closest_oracle_idx = np.argmin(oracle_distances)
        exact_match[idx] = oracle_distances[closest_oracle_idx] == 0
        oracle_idx[idx]  = closest_oracle_idx
    sorted_oracle_idx = np.argsort(oracle_idx)
    if len(target_app) < 100:
        print(f"Samples projected to {target}:")
        print(f"{sum(exact_match)} exact matches generated")
        print(f"Selected rankings (out of {len(oracle_data)}): {oracle_idx[sorted_oracle_idx]}")
        print(f"Evaluation sorting order: {sorted_oracle_idx}")
    if oracle_idx[sorted_oracle_idx[0]] <= ideal_samples:
        n_successes += 1

print(f"Observed success on {100 * n_successes / len(target_app):.2f}% ({n_successes} / {len(target_app)} targets)")

