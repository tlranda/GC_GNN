import pprint
import pandas as pd

# Load conversions -- unnecessary for current task
#sm = pd.read_csv('../syr2k_data/oracles/SM/all_SM.csv')
#xl = pd.read_csv('../syr2k_data/oracles/XL/all_XL.csv')
#s = pd.read_csv('../syr2k_data/syr2k_reference/syr2k_S.csv')
#m = pd.read_csv('../syr2k_data/syr2k_reference/syr2k_M.csv')
#l = pd.read_csv('../syr2k_data/syr2k_reference/syr2k_L.csv')

# Target
t = pd.read_csv('knn_result.csv')

# Conversions
buckets = sorted(set(t['original']))
lookups = {}
for bucket in buckets:
    lookups[bucket] = {'S': [], 'M': [], 'L': [], 'SM': [], 'XL': []}
    fnames = t[t['original'] == bucket]['filename']
    for fname in fnames:
        idx = int(fname.rsplit('_',1)[1])
        if 'syr2k' in fname:
            if 'S' in fname:
                lookups[bucket]['S'].append(idx)
            elif 'M' in fname:
                lookups[bucket]['M'].append(idx)
            elif 'L' in fname:
                lookups[bucket]['L'].append(idx)
            else:
                raise ValueError
        elif 'all' in fname:
            if 'SM' in fname:
                lookups[bucket]['SM'].append(idx)
            elif 'XL' in fname:
                lookups[bucket]['XL'].append(idx)
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
    lookups[bucket] = dict((k,len(v)) for (k,v) in lookups[bucket].items())
for bucket in buckets:
    print("Bucket:", bucket)
    pprint.pprint(lookups[bucket])

