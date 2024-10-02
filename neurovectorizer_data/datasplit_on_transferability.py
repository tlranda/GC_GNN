#!/usr/bin/env python3
import pathlib
import pandas as pd
import numpy as np
import tqdm

def main():
    per_app_dir = 'neurovectorizer-titan/per-app'
    n_apps = len([_ for _ in pathlib.Path(per_app_dir).iterdir() if _.suffix == '.csv'])
    print(f"Found {n_apps} that can be tested")

    test_dir = 'test_results'
    test_path = pathlib.Path(test_dir)
    remake_csv_name = lambda x: test_path.joinpath(f"{x}_to_all_tests.csv")
    sources = np.asarray([_.stem[:-len('_to_all_tests')] for _ in test_path.iterdir() if _.suffix == '.csv'])
    print(f"Identified {sources.shape[0]} test results in directory '{test_dir}'")

    total_hits = np.zeros(sources.shape[0])
    subset_hits = np.zeros(sources.shape[0])
    for source_ind in tqdm.tqdm(np.arange(sources.shape[0])):
        # Remake CSV name to load file. The 'source' column is all duplicate data and we won't need it for this analysis
        data = pd.read_csv(remake_csv_name(sources[source_ind])).drop(columns=['source'])
        # Count the total number of hits that were documented for this dataset
        # Drop target column as it doesn't matter for this query, then sum the hypotheses boolean values and sum across hypotheses
        total_hits[source_ind] = data.drop(columns=['target']).sum(axis=0).sum()
        # Count the number of hits documented across all evaluated sources (may be a subset of the full dataset)
        # First, select targets that are in the source dataset as your working subset
        # in1d: Test if element of 1d array is in another array
        # Then same calculation as total_hits
        ok_targets = np.nonzero(np.in1d(data['target'].to_numpy(),sources))[0]
        subset_hits[source_ind] = data.loc[ok_targets].drop(columns=['target']).sum(axis=0).sum()
    # Do this once at the end
    n_hypotheses = len(data.drop(columns=['target']).columns)
    print(f"Each dataset has {n_hypotheses} hypotheses it can potentially validate")
    # Make the pandas array summarizing information, but first sort on subset hits (GREATEST-to-LEAST)
    sort_order = np.argsort(-1 * subset_hits)
    df = pd.DataFrame(data={'source': sources[sort_order],
                            'n_hypotheses': [n_hypotheses] * sources.shape[0],
                            'max_target': [n_apps * n_hypotheses] * sources.shape[0],
                            'total_hits': total_hits[sort_order].astype(int),
                            'max_sub': [sources.shape[0] * n_hypotheses] * sources.shape[0],
                            'sub_hits': subset_hits[sort_order].astype(int),
                            },
                      index=np.arange(sources.shape[0]))
    df.to_csv('train_order.csv',index=False)

if __name__ == '__main__':
    main()
