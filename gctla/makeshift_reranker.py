import pathlib
import re

import pandas as pd
import numpy as np
import matplotlib.pyplot as plt

gcs = [_ for pth in pathlib.Path('gc_source_tune_perf_obj').iterdir() if pth.is_dir() for _ in pth.iterdir() if re.match(r"syr2k_[SMXL]{2}_\d+",_.stem)]
gc_dict = dict((str(n.stem), pd.read_csv(n)) for n in gcs)

#reranks = [pathlib.Path(_) for _ in ['svm_converted.csv','knn_converted.csv']]
reranks = [pathlib.Path(_) for _ in ['knn_converted.csv']]
rerank_dict = dict((str(n.stem), pd.read_csv(n)) for n in reranks)

# Fix rerank to be sorted on size, then objective
for rerank_df in rerank_dict.values():
    rerank_df.sort_values(by=['size','objective'])
    rerank_df.index = [_ for _ in range(len(rerank_df)//2)] * 2

rerank_cols = ['size']+[f'p{_}' for _ in range(6)]
def rerank(to_rerank, reranker):
    reranking = -1 * np.ones(len(to_rerank), dtype=int)
    for idx, row in to_rerank.iterrows():
        search = tuple(row[rerank_cols].astype(str).values)
        n_matches = (reranker[rerank_cols].astype(str) == search).sum(1).to_numpy()
        full_match_idx = np.nonzero(n_matches == len(rerank_cols))[0]
        reranking[idx] = reranker.iloc[full_match_idx[0]]['predicted']
    return reranking

for gc_name, gc_active in gc_dict.items():
    if 'size' not in gc_active.columns:
        if 'SM' in gc_name:
            gc_active.insert(0,'size',[130] * len(gc_active))
        elif 'XL' in gc_name:
            gc_active.insert(0,'size',[2000] * len(gc_active))
    print("For experiment:", gc_name)
    for rerank_name, rerank_active in rerank_dict.items():
        original_order = np.argsort(gc_active['objective'].to_numpy())
        reranked = rerank(gc_active, rerank_active)
        rerank_order = np.argsort(reranked)
        print("Original order:", original_order)
        print("Reranked by MGA:", original_order[rerank_order])
        fig,ax = plt.subplots()
        ax.scatter(range(len(gc_active)), original_order, marker='x', label="Original order")
        ax.plot(range(len(gc_active)), [min(original_order[:x]) for x in range(1,len(gc_active)+1)], alpha=0.5)
        ax.scatter(range(len(gc_active)), original_order[rerank_order], marker='+', label="Reranked by MGA")
        ax.plot(range(len(gc_active)), [min(original_order[rerank_order][:x]) for x in range(1,len(gc_active)+1)], alpha=0.5)
        ax.set_ylabel("Local goodness (lower is better)")
        ax.set_xlabel("Evaluation order")
        ax.set_title(f"Reranking for {gc_name}")
        ax.legend()
        fig.set_tight_layout(True)
        plotname = f"{gc_name}.png"
        fig.savefig(plotname, dpi=300)
        print("Saved plot to", plotname) 

