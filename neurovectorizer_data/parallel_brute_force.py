#!/usr/bin/env python3
import warnings
import sys
import numpy as np
import pandas as pd
import multiprocessing
import functools
import tqdm

def process_subset_tuple(args):
    app_idx, app_names, dataset, configurations, n_configs = args
    app = app_names[app_idx]
    subset = dataset[dataset['app'] == app].sort_values(by=['runtime']).reset_index(drop=True)
    rankings = np.zeros(n_configs, dtype=int)
    for row_idx, row_values in subset.iterrows():
        config = row_values[['VF','IF']].to_numpy()
        config_distances = ((configurations - config)**2).sum(axis=1)
        config_idx = np.argmin(config_distances)
        assert config_distances[config_idx] < 1e-5
        rankings[config_idx] = row_idx
    return rankings

def process_subset_expand(app_idx, app_names, dataset, configurations, n_configs):
    app = app_names[app_idx]
    subset = dataset[dataset['app'] == app].sort_values(by=['runtime']).reset_index(drop=True)
    rankings = np.zeros(n_configs, dtype=int)
    for row_idx, row_values in subset.iterrows():
        config = row_values[['VF','IF']].to_numpy()
        config_distances = ((configurations - config)**2).sum(axis=1)
        config_idx = np.argmin(config_distances)
        assert config_distances[config_idx] < 1e-5
        rankings[config_idx] = row_idx
    return rankings

def parallel_rankings(dataset, configurations, app_names, n_apps, n_configs):
    # While this gives you tqdm bar, it is slow af by comparison
    #with multiprocessing.Pool() as pool:
    #    func = functools.partial(process_subset_expand, app_names=app_names, dataset=dataset, configurations=configurations, n_configs=n_configs)
    #    results = list(tqdm.tqdm(pool.imap(func, range(n_apps)), total=n_apps))
    pool = multiprocessing.Pool()
    results = pool.map(process_subset_tuple, [(idx, app_names, dataset, configurations, n_configs) for idx in range(n_apps)])
    pool.close()
    pool.join()

    rankings = np.array(results)
    return rankings

if __name__ == "__main__":
    dataset = pd.read_csv("neurovectorizer-titan/neurovec_runtimes_titan.csv").drop(columns=["Unnamed: 0"]).reset_index(drop=True)
    configurations = dataset[['VF','IF']].drop_duplicates().to_numpy()
    app_names = sorted(set(dataset['app']))
    n_apps = len(app_names)
    n_configs = len(configurations)

    rankings = parallel_rankings(dataset, configurations, app_names, n_apps, n_configs)
    print(rankings.shape)
    mean_rankings = rankings.mean(axis=0)
    rank_sort = np.argsort(mean_rankings)
    not_passing = list(range(n_apps))
    rank_for_pass = 3
    passing = 0
    initial_skips = 0
    for rank_idx, rank in enumerate(rank_sort):
        print(f"#{rank_idx+1}/{n_configs} VF: {configurations[rank,0]}, IF: {configurations[rank,1]}: {mean_rankings[rank]}")
        cull = []
        if rank_idx < initial_skips:
            continue
        for pass_idx, app_idx in enumerate(not_passing):
            if rankings[app_idx,rank] <= rank_for_pass:
                passing += 1
                cull.append(app_idx)
        for c in cull:
            not_passing.remove(c)
        print("\t"+f"{passing}/{n_apps} ({100*passing/n_apps:.2f}%) have rank <= {rank_for_pass} with all above configurations")

