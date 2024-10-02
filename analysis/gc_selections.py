import pathlib
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt

globbed = [_ for _ in pathlib.Path('.').iterdir() if _.suffix == '.csv' and _.name.startswith('GC_selections')]
if len(globbed) == 0:
    raise ValueError("No ./GC_selections*.csv in CWD")

for glob in globbed:
    print(glob)
    data = pd.read_csv(glob)
    for sub_data_key, sub_data in data.groupby('input'):
        print(f"Size {sub_data_key}")
        best = len(sub_data)+1
        worst = -1
        bsf, wsf = list(), list()
        for item in sub_data['rank']:
            best = min(best, item)
            worst = max(worst, item)
            bsf.append(best)
            wsf.append(worst)
        bsfnp = np.asarray(bsf)
        wsfnp = np.asarray(wsf)
        # Find absolute extremes and where each first occurs
        print('\t'+f"BEST: {best}, first found: {bsf.index(best)}")
        print('\t'+f"WORST: {worst}, first found: {wsf.index(worst)}")
        # Find Quantiles
        quantiles = (np.asarray([0.1, 0.01, 0.001]) * len(sub_data)).astype(int)
        btarget, wtarget = list(), list()
        bind, wind = 0, 0
        for quant in quantiles:
            if bind < len(bsfnp):
                bind_update = np.where(bsfnp[bind:] <= quant)[0]
                if len(bind_update) == 0:
                    btarget.extend([len(sub_data)] * (len(quantiles)-len(btarget)))
                    bind = len(bsfnp)
                else:
                    btarget.append(bind_update[0]+bind)
                    bind += bind_update[0]
            if wind < len(wsfnp):
                wind_update = np.where(wsfnp[bind:] >= quant)[0]
                if len(wind_update) == 0:
                    wtarget.extend([len(sub_data)] * (len(quantiles)-len(wtarget)))
                    wind = len(wsfnp)
                else:
                    wtarget.append(wind_update[0]+wind)
                    wind += wind_update[0]
        for best, worst, quant in zip(btarget, wtarget, quantiles):
            print('\t'+f"{quant} quantile:")
            print('\t\t'+f"BEST: {bsf[best]}, first found: {best}")
            print('\t\t'+f"WORST: {wsf[worst]}, first found: {worst}")
