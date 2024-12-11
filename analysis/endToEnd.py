# To be evaluated with collation-ified results from Arafat's IR predictions
# See reconfigure_from_mmp.py to convert files before running this script,
# but the minimum requirements are:
#   * Objective column ('objective')
#   * Rank column (--rank-column: default 'predicted')
#   * Parameterization columns ('size' and a number of parameters in format r'p\d+')
#   * There is no need to filter/prune out other columns, they will not be referenced
#   * Every parameterization represented in --searches must have a matchable entry in rankcoll

import argparse
import pathlib
import re
import warnings

import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
from scipy.stats import spearmanr
import tqdm

def build():
    prs = argparse.ArgumentParser("Evaluate effectiveness of a ranking "
            "collation (see reconfigure_from_mmp.py to prepare this file) "
            "when imposed on another search.")
    prs.add_argument("rankcoll", type=pathlib.Path,
            help="Ranking collation CSV that maps config to a predicted value")
    prs.add_argument("--rank-column", default="predicted",
            help="Column from [rankcoll] to use as prediction for sorting (default: %(default)s)")
    prs.add_argument("--searches", type=pathlib.Path, nargs="+", required=True,
            help="CSVs that define searches that exist within [rankcoll] to be re-ranked")
    prs.add_argument("--y", choices=['rank','objective'], default='objective',
            help="Y-axis value for charts (default: %(default)s)")
    prs.add_argument("--print-all", action='store_true',
            help="Print arrays for ordering (may lead to excessive text output, default: %(default)s)")
    return prs

def parse(args=None, prs=None):
    if prs is None:
        prs = build()
    if args is None:
        args = prs.parse_args()
    # Check files
    if not args.rankcoll.exists() or not args.rankcoll.suffix == '.csv':
        raise ValueError(f"Rank collation '{args.rankcoll}' must be a valid CSV file")
    valid = []
    dropped = []
    for f in args.searches:
        if not f.exists() or not f.suffix == '.csv':
            dropped.append(f)
        else:
            valid.append(f)
    args.searches = valid
    if len(dropped) > 0:
        warnings.warn(f"Files not found or not CSVs are dropped from search: {dropped}", UserWarning)

    return args

def get_csv_with_size(name):
    # Infer size when not present based on filename
    csv = pd.read_csv(name)
    if 'size' in csv.columns:
        return csv
    for size in ['S','M','L','SM','ML','XL']:
        if size in map(lambda x: x.upper(), name.stem.split('_')):
            csv.insert(len(csv.columns), 'size', [size] * len(csv))
            return csv
    raise ValueError(f"Did not find or infer a problem size for '{name}'")

def get_subset_index(searchname, search, lookup, args):
    # Get the index from lookup that matches entries in search
    index = np.zeros(len(search))
    match_cols = ['size']+[_ for _ in search.columns if re.match(r'p\d+', _) is not None]
    strsearch = search[match_cols].astype(str)
    strlookup = lookup[match_cols].astype(str)
    for (idx, row) in tqdm.tqdm(strsearch.iterrows(), total=len(strsearch)):
        lookup = tuple(row)
        match = np.where((strlookup == lookup).sum(axis=1) == len(match_cols))[0]
        if len(match) == 0:
            raise ValueError(f"Could not find idx {idx} from '{searchname}' in {args.rankcoll} (configuration: {row})")
        index[idx] = match[0]
    return index

def rerank(searchname, search, reranker, args):
    # Rerank search using rank column from reranker
    subset_index = get_subset_index(searchname, search, reranker, args)
    sort_by = reranker.loc[subset_index,args.rank_column]
    return np.argsort(sort_by).to_numpy()

def oracle(searchname, search, reranker, args):
    # Rerank search using objective column from reranker
    subset_index = get_subset_index(searchname, search, reranker, args)
    sort_by = reranker.loc[subset_index,'objective']
    return np.argsort(sort_by).to_numpy()

def main(args=None):
    args = parse(args)
    rcoll = pd.read_csv(args.rankcoll)
    for search_name in args.searches:
        print(f"Evaluations for {search_name}")
        search = get_csv_with_size(search_name)

        # === SORTING ORDERS ===

        initial_order = search.index.tolist()
        # Correct sequence of GC generations for best-to-worst results
        oracle_order = oracle(search_name, search, rcoll, args)
        if args.print_all:
            print(f"Oracle order: {oracle_order}")
        # Predicted sequence of GC generations for best-to-worst results
        reranked_order = rerank(search_name, search, rcoll, args)
        if args.print_all:
            print(f"Reranked order: {reranked_order}")

        # Rephrase above as 'which oracle value did you actually pull?'
        initial_as_oracle_order = list(map(lambda o: np.where(reranked_order == o)[0][0], initial_order))
        rerank_as_oracle_order = list(map(lambda o: np.where(reranked_order == o)[0][0], oracle_order))
        if args.print_all:
            print(f"Oracle values in initial order: {initial_as_oracle_order}")
            print(f"Oracle values in rerank order: {rerank_as_oracle_order}")


        # === METRICS ===

        # Minimum displacement: Lower is better
        # Gives a metric for how long until you find the minimum value
        mindis_initial = list(initial_order).index(oracle_order[0])
        mindis_reranked = list(reranked_order).index(oracle_order[0])
        print(f"Minimum evaluations to find optimum in search (initial->reranked): {mindis_initial} -> {mindis_reranked}")

        # Total displacement: Lower (negative) is better
        # Gives metric of sum evaluations improved (only half -- if you do the whole displacement it's always zero)
        # Maximum +/- score = (n(n+1))/2 where n=1/2 length, so normalize on that
        # To give preference to getting the best evaluations the MOST displaced, use some sort of logarithmic-ish weighting?
        initial_displacement = list(map(lambda x: list(initial_order).index(x), oracle_order))
        reranked_displacement = list(map(lambda x: list(reranked_order).index(x), oracle_order))
        total_displacement = (np.asarray(initial_displacement)-np.asarray(reranked_displacement))[:len(initial_order)//2]

        # Spearmanr +1 = perfect correl, 0 = no correl, -1 anticorrel
        # Gives a metric across the entire search
        initial_spearmanr = spearmanr(initial_order, oracle_order)
        reranked_spearmanr = spearmanr(reranked_order, oracle_order)
        print(f"Spearmanr vs Oracle (initial->reranked): {initial_spearmanr} -> {reranked_spearmanr}")


        # === PLOTS ===

        fig, ax = plt.subplots()
        subset_idx = get_subset_index(search_name, search, rcoll, args)
        if args.y == 'rank':
            y1 = initial_as_oracle_order
            y2 = rerank_as_oracle_order
            ylabel = 'Oracle goodness (lower is better)'
        else:
            subset = rcoll.loc[subset_idx, 'objective']
            y1 = subset.to_numpy()[initial_order]
            y2 = subset.to_numpy()[reranked_order]
            ax.scatter(range(len(initial_order)), subset.to_numpy()[oracle_order], label='oracle')
            ylabel = 'Objective value (lower is better)'
        ax.scatter(range(len(initial_order)), y1,
                label='Initial order')
        ax.scatter(range(len(initial_order)), y2,
                label='Re-sorted order')
        ax.set_xlabel('Trial #')
        ax.set_ylabel(ylabel)
        ax.set_title(f"Reranking for Search {search_name.stem}")
        ax.legend()

        fig2, ax2 = plt.subplots()
        ax2.scatter(rcoll.loc[subset_idx, 'original'], rcoll.loc[subset_idx,'predicted'])
        ax2.set_xlabel('True performance bucket')
        ax2.set_ylabel('Predicted performance bucket')
        ax2.set_title(f'Bucket utilizations for Search {search_name.stem}')

    plt.show()

if __name__ == "__main__":
    main()
