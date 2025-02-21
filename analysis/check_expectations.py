"""
    Verify that arafat_all_convert records have all of the records EXPECTED to
    exist there based on collation data. Always check locally to verify things
    are actually missing first :)
"""
import pathlib
import pandas as pd

collations = {
        # Polybench/C
        'syr2k': pd.read_csv('collations/syr2k_collated.csv'),
        '_3mm': pd.read_csv('collations/_3mm_collated.csv'),
        'heat3d': pd.read_csv('collations/heat3d_collated.csv'),
        # ECP
        'amg': pd.read_csv('collations/amg_collated.csv'),
        'rsbench': pd.read_csv('collations/rsbench_collated.csv'),
        'sw4lite': pd.read_csv('collations/sw4lite_collated.csv'),
        }

expected_searches = ['GaussianCopula','bliss','opentuner','GPTune']

for bench, csv in collations.items():
    names = sorted(set(csv['source']))
    for expect in expected_searches:
        specific_names = [_ for _ in names if expect in _]
        n_results = sum([len(csv[csv['source'] == name]) for name in specific_names])
        print(f"Expect: {bench} - {expect} has {n_results} records")
    if bench == '_3mm':
        bench = '3mm'
    check_path = pathlib.Path('arafat_all_convert') / bench
    if not check_path.exists():
        print(f"No records for {bench}!")
        continue
    for name in check_path.iterdir():
        if name.suffix != '.csv':
            continue
        load = pd.read_csv(name)
        print(f"Within {name}, we find...")
        for expect in expected_searches:
            specific_names = [_ for _ in names if expect in _]
            n_results = sum([len(load[load['source'] == name]) for name in specific_names])
            if n_results > 0:
                print("\t"+f"{expect} has {n_results} records")

