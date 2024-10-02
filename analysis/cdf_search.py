# Builtins
import argparse
# Dependencies
import numpy as np
import pandas as pd
import tqdm
import matplotlib
import matplotlib.pyplot as plt

param_cols = [f'p{_}' for _ in range(6)]

def build():
    prs = argparse.ArgumentParser()
    prs.add_argument("--oracle", choices=['SM','XL','both'], required=True,
            help="Which oracles to use for comparison")
    prs.add_argument("--data", nargs="*", default=None,
            help="Paths to load as searches")
    prs.add_argument("--preranked", action="store_true",
            help="Data is already ranked (default: %(default)s)")
    prs.add_argument("--scale-column", default='input',
            help="Column used to get scale value (default: %(default)s)")
    prs.add_argument("--log-y", action="store_true",
            help="Log-scale the y-axis (default: %(default)s)")
    return prs

def parse(args=None, prs=None):
    if prs is None:
        prs = build()
    if args is None:
        args = prs.parse_args()
    return args

def oracle_rank(sm, xl, fname, data, args):
    if args.scale_column in data.columns:
        print(f"SM rank for {fname}")
        ranked_by_sm = rank(sm, data[data[args.scale_column] == 130], args)
        print(f"XL rank for {fname}")
        ranked_by_xl = rank(xl, data[data[args.scale_column] == 2000], args)
        return pd.concat((ranked_by_sm,ranked_by_xl))
    elif 'SM' in fname:
        print(f"SM rank for {fname}")
        data.insert(0, args.scale_column, [130] * len(data))
        return rank(sm, data, args)
    elif 'XL' in fname:
        print(f"XL rank for {fname}")
        data.insert(0, args.scale_column, [2000] * len(data))
        return rank(xl, data, args)
    raise ValueError(f'Unsure how to rank data from {fname}')

def rank(truth, query, args):
    rankings = pd.DataFrame({args.scale_column: query[args.scale_column],
                             'rank': [-1] * len(query)})
    if len(query) == 0:
        return rankings
    for idx, row in tqdm.tqdm(query.iterrows(), total=len(query)):
        tup = tuple(row[param_cols].astype(str))
        select = (truth == tup).sum(1)
        matched = np.where(select == len(param_cols))[0]
        rankings.loc[idx,'rank'] = matched[0]
    return rankings

def cdf(search, args):
    fig, ax = plt.subplots()
    # Make best-so-far
    regions = np.hstack((np.where(search.index == 0)[0], [len(search)]))
    cdf_ranks = []
    for start, stop in zip(regions, regions[1:]):
        subsearch = search.iloc[start:stop]
        cdf_rank = [subsearch.loc[0,'rank']] * len(subsearch)
        minsofar = cdf_rank[0]
        for idx in range(1, len(subsearch)):
            if subsearch.loc[idx,'rank'] < minsofar:
                minsofar = subsearch.loc[idx,'rank']
            cdf_rank[idx] = minsofar
        cdf_ranks.extend(cdf_rank)
    search.insert(0,'cdf_rank', cdf_ranks)
    for (fname, linedata) in search.groupby('source'):
        ax.plot(linedata.index, linedata['cdf_rank'], label=fname, marker='.')
    ax.invert_yaxis()
    ax.legend()
    if args.log_y:
        ax.set_yscale('log')
    plt.show()

def main(args=None):
    args = parse(args)
    # Oracles
    if args.oracle in ['SM', 'both']:
        sm_ranks = pd.read_csv('../syr2k_data/oracles/SM/all_SM.csv').sort_values(by=['objective']).reset_index(drop=True).drop(columns=['predicted','elapsed_sec','objective']).astype(str)
    else:
        sm_ranks = None
    if args.oracle in ['XL', 'both']:
        xl_ranks = pd.read_csv('../syr2k_data/oracles/XL/all_XL.csv').sort_values(by=['objective']).reset_index(drop=True).drop(columns=['predicted','elapsed_sec','objective']).astype(str)
    else: # Both
        xl_ranks = None

    # Searches
    searches = []
    for fname in args.data:
        try:
            data = pd.read_csv(fname)
        except FileNotFoundError:
            print(f"!! Could not read {fname}")
            continue
        if args.preranked:
            drop_cols = set(data.columns).difference({'rank',})
        else:
            drop_cols = set(data.columns).difference(set(param_cols).union({args.scale_column,}))
        data = data.drop(columns=drop_cols)
        if not args.preranked:
            data = oracle_rank(sm_ranks, xl_ranks, fname, data, args)
        data.insert(0,'source',[fname] * len(data))
        searches.append(data)
    search = pd.concat(searches)
    search['rank'] = search['rank'].astype(int)

    # CDF plot
    cdf(search, args)

if __name__ == '__main__':
    main()

