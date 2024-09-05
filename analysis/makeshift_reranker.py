import argparse
import pathlib
import re

import pandas as pd
import numpy as np
import matplotlib.pyplot as plt

gcs = [_ for pth in pathlib.Path('../syr2k_data/gc_source_tune_perf_obj').iterdir() if pth.is_dir() for _ in pth.iterdir() if re.match(r"syr2k_[SMXL]{2}_\d+",_.stem)]
#reranks = [pathlib.Path(_) for _ in ['../gctla/svm_converted.csv',
#                                     '../gctla/knn_converted.csv']]
reranks = [pathlib.Path(_) for _ in ['../gctla/knn_converted.csv']]
oracles = [pathlib.Path(_) for _ in ['../syr2k_data/oracles/SM/all_SM.csv',
                                     '../syr2k_data/oracles/XL/all_XL.csv']]
def build():
    prs = argparse.ArgumentParser()
    prs.add_argument("--gc", default=None, nargs="*",
            help=f"Files to use as GC predictions (default: {gcs})")
    prs.add_argument("--rerank", default=None, nargs="*",
            help=f"Files to use as GC-rerankers (default: {reranks})")
    prs.add_argument("--oracle", default=None, nargs="*",
            help=f"Files to use as oracles (default: {oracles})")
    prs.add_argument("--order", choices=['relative','exhaustive','relative-convert'], default='relative',
            help="Use gc-relative ranks, oracle-exhaustive ranks, or oracle-exhaustive ranks as relative values on y-axis (default: %(default)s)")
    prs.add_argument("--save", action="store_true",
            help="Save images instead of opening interactively")
    prs.add_argument("--log", action="store_true",
            help="Log reordering to file (default: %(default)s)")
    return prs

def parse(args=None, prs=None):
    global gcs, reranks, oracles
    if prs is None:
        prs = build()
    if args is None:
        args = prs.parse_args()

    if args.gc is not None:
        gcs = args.gc
    gc_dict = dict((str(n.stem), pd.read_csv(n)) for n in gcs)

    if args.rerank is not None:
        reranks = args.rerank
    rerank_dict = dict((str(n.stem), pd.read_csv(n).sort_values(by=['objective','size'])) for n in reranks)
    # Fix rerank to be sorted on size, then objective
    for rerank_df in rerank_dict.values():
        #rerank_df = rerank_df.sort_values(by=['objective','size'])
        rerank_df.index = [_ for _ in range(len(rerank_df)//2)] * 2

    if args.oracle is not None:
        oracles = args.oracle
    oracles = dict((str(n.stem), pd.read_csv(n).sort_values(by=['objective']).reset_index(drop=True)) for n in oracles)
    for oracle_df, size in zip(oracles.values(), [130,2000]):
        #oracle_df = oracle_df.sort_values(by=['objective']).reset_index(drop=True)
        oracle_df.insert(0,'size',[size] * len(oracle_df))
        oracle_df.loc[:,'predicted'] = oracle_df.index

    return args, (gc_dict, rerank_dict, oracles)

rerank_cols = ['size']+[f'p{_}' for _ in range(6)]
def rerank(to_rerank, reranker):
    reranking = -1 * np.ones(len(to_rerank), dtype=int)
    for idx, row in to_rerank.iterrows():
        search = tuple(row[rerank_cols].astype(str).values)
        n_matches = (reranker[rerank_cols].astype(str) == search).sum(1).to_numpy()
        full_match_idx = np.nonzero(n_matches == len(rerank_cols))[0]
        reranking[idx] = reranker.iloc[full_match_idx[0]]['predicted']
    return reranking

def main(args=None):
    args, (gc_dict, rerank_dict, oracles) = parse(args)
    for gc_name, gc_active in gc_dict.items():
        if 'size' not in gc_active.columns:
            if 'SM' in gc_name:
                gc_active.insert(0,'size',[130] * len(gc_active))
                oracle_df = oracles['all_SM']
            elif 'XL' in gc_name:
                gc_active.insert(0,'size',[2000] * len(gc_active))
                oracle_df = oracles['all_XL']
        print("For experiment:", gc_name)
        for (rerank_name, rerank_active) in rerank_dict.items():
            if args.order.startswith('relative'):
                if args.order == 'relative-convert':
                    gc_obj = rerank(gc_active, oracle_df)
                    original_order = np.argsort(gc_obj)
                else:
                    gc_obj = gc_active['objective'].to_numpy()
                    original_order = np.argsort(gc_obj)
            else:
                original_order = rerank(gc_active, oracle_df)
            reranked = rerank(gc_active, rerank_active)
            rerank_order = np.argsort(reranked)
            if args.log:
                logname = f"{gc_name}_rerankedBY_{rerank_name}.csv"
                pd.DataFrame({gc_name: original_order,
                              rerank_name: original_order[rerank_order],
                              'order': [args.order] * len(original_order),
                              }).to_csv(logname, index=False)
            print("Original order:", original_order)
            print("Reranked by MGA:", original_order[rerank_order])
            fig,ax = plt.subplots()
            ax.scatter(range(len(gc_active)), original_order, marker='x', label="Original order")
            ax.plot(range(len(gc_active)), [min(original_order[:x]) for x in range(1,len(gc_active)+1)], alpha=0.5)
            ax.scatter(range(len(gc_active)), original_order[rerank_order], marker='+', label="Reranked by MGA")
            ax.plot(range(len(gc_active)), [min(original_order[rerank_order][:x]) for x in range(1,len(gc_active)+1)], alpha=0.5)
            if args.order.startswith('relative'):
                ax.set_ylabel("Local goodness (lower is better)")
            else:
                ax.set_ylabel("Oracle goodness (lower is better)")
            ax.set_xlabel("Evaluation order")
            ax.set_title(f"Reranking for {gc_name}")
            ax.legend()
            fig.set_tight_layout(True)
            if args.save:
                plotname = f"{gc_name}.png"
                fig.savefig(plotname, dpi=300)
                print("Saved plot to", plotname)
            else:
                plt.show()

if __name__ == '__main__':
    main()

