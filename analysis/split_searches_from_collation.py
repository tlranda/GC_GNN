"""
    Pulls out individual sources from collations, however the collation process
    doesn't preserve every piece of information for all techniques
"""
import pandas as pd
import pathlib

for collation in pathlib.Path('collations/').iterdir():
    if collation.name == 'default_times.csv':
        continue
    print(f"Process {collation}")
    cname = collation.stem.lstrip('_').split('_')[0]
    coll_csv = pd.read_csv(collation)
    sets = sorted(set(coll_csv['source']))
    for s in sets:
        out = pathlib.Path('search_compilations') / cname / f"{s}.csv"
        out.parents[0].mkdir(exist_ok=True, parents=True)
        sub = coll_csv[coll_csv['source'] == s]
        print(f"Write {len(sub)} results to {out}")
        sub.to_csv(out,index=False)

