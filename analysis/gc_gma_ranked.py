import argparse
import pathlib
import re

import numpy as np
import pandas as pd
import matplotlib
import matplotlib.pyplot as plt

def build():
    prs = argparse.ArgumentParser()
    prs.add_argument("--gc-root", default="gc_source_tune_perf_obj",
            help="Path to root to search for GC seeds (default: %(default)s)")
    prs.add_argument("--rerankers", nargs="+", required=True,
            help="CSVs with data for reranking")
    return prs

def parse(args=None, prs=None):
    if prs is None:
        prs = build()
    if args is None:
        args = prs.parse_args()
    return args

def fetch_gc_seeds(rootdir):
    gc_names = []
    for directory in rootdir.iterdir():
        if directory.is_dir():
            seed_regex = re.compile(f"syr2k_{directory.stem}"+r"_\d+")
            for path in directory.iterdir():
                regex_check = seed_regex.match(path.stem)
                if regex_check:
                    gc_names.append(str(path))
        else:
            seed_regex = re.compile('GC_selections.*\.csv')
            if seed_regex.match(directory.name):
                gc_names.append(str(directory))
    return gc_names

def lookup_ranks(rankable, match_columns, lookup):
    # Report ranks of rankable entries based on their index in lookup
    reranking = -1 * np.ones(len(rankable), dtype=int)
    for idx, row in rankable.iterrows():
        search = tuple(row[match_columns].astype(str).values)
        size_matched = lookup[lookup['size'] == row['size']].reset_index(drop=True)
        n_matches = (size_matched[match_columns].astype(str) == search).sum(1).to_numpy()
        full_match_idx = np.nonzero(n_matches == len(match_columns))[0]
        if len(full_match_idx) != 1:
            continue
        reranking[idx] = full_match_idx[0]
    unranked_count = reranking.tolist().count(-1)
    if unranked_count > 0:
        raise ValueError(f"Unable to identify {unranked_count} rank rows")
    return reranking

ranking_columns = ['size']+[f'p{_}' for _ in range(6)]
def rerank(gc_name, gc, rerank_name, rerank):
    # Naive order: Picks the nth-optimal results in order based on original index values post-sorting
    try:
        gc_ranked = gc.sort_values(by=['objective']).index.to_numpy()
        sort_by = 'objective'
    except:
        gc_ranked = gc.sort_values(by=['rank']).index.to_numpy()
        sort_by = 'rank'
    # Rerank order: Pick the nth-optimal result based on predicted order, use argsort for selection
    # Incoming order needs to be correctly sorted for the argsort to indicate ground truth selection
    try:
        rerank = rerank.sort_values(by=['predicted'])
    except:
        rerank = rerank.sort_values(by=['objective'])
    try:
        reranked = lookup_ranks(gc.sort_values(by=[sort_by]).reset_index(drop=True),
                                ranking_columns, rerank)
    except:
        print(f"Could not use {rerank_name} to rerank {gc_name}")
        return

    print(f"Original GC order for {gc_name}: {gc_ranked}")
    rerank_pick_order = np.argsort(reranked)
    print(f"Reranked by {rerank_name}: {reranked}")
    print(f"Rerank pick order: {rerank_pick_order}")
    fig, ax = plt.subplots()
    ax.plot(range(len(gc_ranked)), gc_ranked, marker='.',
            label='Original GC Order')
    ax.plot(range(len(gc_ranked)), rerank_pick_order, marker='.',
            label=f'Reranked GC Order')
    ax.hlines(0, 0, len(gc_ranked), color='k', linestyle='--') # Show minimum intercept
    ax.set_xlabel('Evaluation order')
    ax.set_ylabel('Local goodness')
    ax.set_title(f"{gc_name} reranked by {rerank_name}")
    ax.legend(loc='upper right')
    plt.show()

def main(args=None):
    args = parse(args)
    # Get reranking data
    reranking = dict((n, pd.read_csv(n)) for n in args.rerankers)
    # Get gaussian copula test data
    gc_names = fetch_gc_seeds(pathlib.Path(args.gc_root))
    print("\n".join(gc_names))
    gc_data = dict((n, pd.read_csv(n)) for n in gc_names)
    # Determine results of naive vs reranked traversal
    for gc_name, gc_data in gc_data.items():
        gc_data.insert(0,'size',
                [130 if 'SM' in gc_name else 2000]*len(gc_data))
        for rerank_name, rerank_data in reranking.items():
            rerank(gc_name, gc_data, rerank_name, rerank_data)

if __name__ == '__main__':
    main()

