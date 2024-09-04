import pprint
import pandas as pd

# Load conversions to make fname->ranking
sm = pd.read_csv('../syr2k_data/oracles/SM/all_SM.csv')
xl = pd.read_csv('../syr2k_data/oracles/XL/all_XL.csv')
s = pd.read_csv('../syr2k_data/syr2k_reference/syr2k_S.csv')
m = pd.read_csv('../syr2k_data/syr2k_reference/syr2k_M.csv')
l = pd.read_csv('../syr2k_data/syr2k_reference/syr2k_L.csv')
oracles = {'SM': sm,
           'XL': xl,
           'S': s,
           'M': m,
           'L': l}
for orc in oracles.values():
    orc['rank'] = orc['objective'].rank(ascending=True)

# Target
t = pd.read_csv('knn_result.csv')

# Conversions
buckets = sorted(set(t['original']))
lookups = {}
value_column = 'objective' # 'rank'
for bucket in buckets:
    lookups[bucket] = {'S': [], 'M': [], 'L': [], 'SM': [], 'XL': []}
    fnames = t[t['original'] == bucket]['filename']
    for fname in fnames:
        idx = int(fname.rsplit('_',1)[1])
        if 'syr2k' in fname:
            if 'S' in fname:
                lookups[bucket]['S'].append(oracles['S'].loc[idx,value_column])
            elif 'M' in fname:
                lookups[bucket]['M'].append(oracles['M'].loc[idx,value_column])
            elif 'L' in fname:
                lookups[bucket]['L'].append(oracles['L'].loc[idx,value_column])
            else:
                raise ValueError
        elif 'all' in fname:
            if 'SM' in fname:
                lookups[bucket]['SM'].append(oracles['SM'].loc[idx,value_column])
            elif 'XL' in fname:
                lookups[bucket]['XL'].append(oracles['XL'].loc[idx,value_column])
            else:
                raise ValueError
        else:
            raise ValueError
    drops = list(lookups[bucket].keys())
    for key, value in lookups[bucket].items():
        if len(value) > 0:
            drops.remove(key)
    for dropme in drops:
        lookups[bucket].pop(dropme)
    lookups[bucket] = dict((k,f"{len(v)} entries spanning {min(v)}-{max(v)}") for (k,v) in lookups[bucket].items())
for bucket in buckets:
    print("Bucket:", bucket)
    pprint.pprint(lookups[bucket])

