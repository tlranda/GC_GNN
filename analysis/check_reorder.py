import pandas as pd
import pathlib
import subprocess

base_other = pathlib.Path('reordered_searches')
command = "python3 endToEnd.py arafat_all_convert/{bench}/all_arafat_{bench}.csv --rank-column score --invert-sort --searches {expect_csv} --reordered-export {other_csv}"
for rawdir in pathlib.Path('rawsearches').iterdir():
    bench = rawdir.stem
    otherdir = base_other / bench
    for expect_csv in rawdir.iterdir():
        other_csv = otherdir / expect_csv.name
        n_expect = len(pd.read_csv(expect_csv))
        if not other_csv.exists():
            print(f"Did not find reordered search for '{other_csv}'")
            #subprocess.run(command.format(bench=bench,
            #                     expect_csv=str(expect_csv),
            #                     other_csv=str(other_csv),
            #                     ).split(' '))
            continue
        n_found = len(pd.read_csv(other_csv))
        if n_found < n_expect:
            print(f"Found {n_found}/{n_expect} records in '{other_csv}'")
        else:
            print(f"All records present for '{other_csv}'")
