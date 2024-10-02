import argparse
import pandas as pd
import numpy as np

prs = argparse.ArgumentParser()
prs.add_argument('csvs', nargs='+', default=None)
args = prs.parse_args()

for csv in args.csvs:
    try:
        x = pd.read_csv(csv)
        x.insert(0,'expected_objective', x['objective'] * 3)
        x.insert(0,'per_elapse',np.diff([0]+x['elapsed_sec'].tolist()))
        x.insert(0,'ir_time?', x['per_elapse']-x['expected_objective'])
        expected_ir = x['ir_time?'].mean()
        print(csv, expected_ir)
        print("Min/Mean/Max expected evaluation time based on objectives", x['objective'].min() * 3, x['objective'].mean() * 3, x['objective'].max() * 3)
        print("Expected number of IRs to generate replacing 1 evaluation", (expected_ir+(x['objective'].mean() *3))/expected_ir)
    except:
        print(f"Couldn't get IR time for {csv}")
