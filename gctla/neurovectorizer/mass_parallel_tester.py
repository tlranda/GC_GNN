#!/usr/bin/env python3
import subprocess
import pathlib
import multiprocessing
import tqdm
import pandas as pd
import numpy as np

def run_comparison(source, target, basic_script_call, index):
    script_call = basic_script_call + f" --source {source} --target {target}"
    proc = subprocess.run(script_call.split(' '), capture_output=True)
    if proc.returncode != 0:
        raise ValueError
    lines = proc.stdout.decode('utf-8').split('\n')
    results = {'source': source.stem, 'target': target.stem}
    for line in lines:
        if "Test PASS" in line:
            testid = line.split(' ')[0]
            results[testid] = True
        elif "Test FAIL" in line:
            testid = line.split(' ')[0]
            results[testid] = False
    return index, results

if __name__ == "__main__":
    basic_script_call = "python3 tl_checks.py --perf-column runtime --exhaustive --hyp1"
    csvs = np.asarray([_ for _ in pathlib.Path('neurovectorizer-titan/per-app/').iterdir() if _.suffix == '.csv'])
    n_csvs = len(csvs)
    n_expect = n_csvs - 1
    for csv_idx, source in enumerate(csvs):
        targets = np.hstack((csvs[:csv_idx],csvs[csv_idx+1:]))
        outputfile = pathlib.Path('test_results').joinpath(f'{source.stem}_to_all_tests.csv')
        if outputfile.exists() and len(pd.read_csv(outputfile)) == n_expect:
            print(f"Skip {outputfile} -- All tests done :)")
            continue
        print(f"Run tests for {source}")
        with multiprocessing.Pool() as pool:
            result_queue = []
            print("Making asynchronous requests")
            for idx, target in tqdm.tqdm(enumerate(targets), total=n_expect):
                args = (source, target, basic_script_call, idx)
                result_queue.append(pool.apply_async(run_comparison, args))
            print("Retrieving asynchronous requests")
            results = [None for _ in range(n_expect)]
            for _ in tqdm.tqdm(result_queue, total=n_expect):
                idx, async_results = _.get()
                results[idx] = async_results
        accumulate = pd.DataFrame(results)
        print(accumulate)
        accumulate.to_csv(outputfile, index=False)

