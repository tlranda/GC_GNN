#!/usr/bin/env python3
import subprocess
import pathlib
import multiprocessing
import tqdm
import pandas as pd

basic_script_call = "python3 tl_checks.py --perf-column runtime --exhaustive --hyp1"
csvs = [_ for _ in pathlib.Path('neurovectorizer-titan/per-app/').iterdir() if _.suffix == '.csv']
source = csvs[0]

accumulate = None
for target in tqdm.tqdm(csvs[1:],total=len(csvs[1:])):
    script_call = basic_script_call + f" --source {source} --target {target}"
    proc = subprocess.run(script_call.split(' '), capture_output=True)
    if proc.returncode != 0:
        raise ValueError
    lines = proc.stdout.decode('utf-8').split('\n')
    results = {'source': source.stem, 'target': target.stem,}# 'call': script_call}
    for line in lines:
        if "Test PASS" in line:
            testid = line.split(' ')[0]
            results[testid] = True
        elif "Test FAIL" in line:
            testid = line.split(' ')[0]
            results[testid] = False
    if accumulate is None:
        accumulate = pd.DataFrame(results,index=[0])
    else:
        accumulate = pd.concat((accumulate, pd.DataFrame(results,index=[len(accumulate)])))
print(accumulate)
accumulate.to_csv(f'{source}_to_all_tests.csv',index=False)
