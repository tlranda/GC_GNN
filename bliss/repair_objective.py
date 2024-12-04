import argparse
import pathlib

import pandas as pd
import numpy as np
import tqdm

def build():
    prs = argparse.ArgumentParser()
    prs.add_argument("csv_to_fix", type=pathlib.Path, help="CSV to locate and repair records in")
    prs.add_argument("--csv-repairs", type=pathlib.Path, nargs="+", required=True, help="CSVs defining values that can repair missing objectives")
    prs.add_argument("--export", type=pathlib.Path, default=None, help="Save path after repairs if different from original path")
    prs.add_argument("-y", action='store_true', help="Auto-answer YES to override output files")
    return prs

def parse(args=None, prs=None):
    if prs is None:
        prs = build()
    if args is None:
        args = prs.parse_args()
    if not args.csv_to_fix.exists():
        raise ValueError(f"CSV to fix '{args.csv_to_fix}' not found!")
    valid = []
    for csv in args.csv_repairs:
        if csv.exists():
            valid.append(csv)
    if len(valid) != len(args.csv_repairs):
        MIA_MESSAGE = f"Did not find {len(args.csv_repairs)-len(valid)} repair CSVS: {sorted(set(args.csv_repairs).difference(set(valid)))}"
        print(f"!! WARNING !! {MIA_MESSAGE}")
    if len(valid) == 0:
        raise ValueError(f"No repair CSVS found")
    args.csv_repairs = valid
    if args.export is None:
        args.export = args.csv_to_fix
    return args

def main(args=None):
    args = parse(args)

    repairs = {'SM': dict(), 'XL': dict(), 'UNKNOWN': dict()}
    fake_objs = {'SM': dict(), 'XL': dict(), 'UNKNOWN': dict()}
    for f in args.csv_repairs:
        size = 'SM' if 'SM/' in str(f) else ('XL' if 'XL/' in str(f) else 'UNKNOWN')
        fix = pd.read_csv(f)
        if 'actually_measured' in fix.columns:
            fake_objs[size][f.stem] = fix[~fix['actually_measured']].reset_index(drop=True)
            fix = fix[fix['actually_measured']].reset_index(drop=True)
        # Some files report negative objectives instead of positive ones, just preprocess it
        fix['objective'] = fix['objective'].apply(lambda x: abs(x))
        repairs[size][f.stem] = fix
    if len(repairs['UNKNOWN']) > 0:
        print(f"!! WARNING !! Did not get size for the following CSVs")
        print("\t"+"\n\t".join(repairs['UNKNOWN'].keys()))
    broken = pd.read_csv(args.csv_to_fix)
    nonparam_cols = {'source','size','objective','id'}
    param_cols = sorted(set(broken.columns).difference(nonparam_cols))
    broken_ids = np.where(broken['objective'].isna())[0]
    print(f"Data loaded. {len(broken_ids)} objectives to repair")

    repaired_ids = []
    faked_ids = []
    for idx in tqdm.tqdm(broken_ids):
        expect_fix = broken.loc[idx,'source']
        expect_size = broken.loc[idx,'size'].upper()
        expect_values = tuple(broken.loc[idx, param_cols].astype(str))
        if expect_fix in repairs[expect_size].keys():
            repair_source = repairs[expect_size][expect_fix]
            search = (repair_source[param_cols].astype(str) == expect_values).sum(axis=1)
            full_match = np.where(search == len(param_cols))[0]
            if len(full_match) == 1:
                broken.loc[idx,'objective'] = repair_source.loc[full_match[0],'objective']
                repaired_ids.append(idx)
            elif len(full_match) > 1:
                print(f"!! WARNING !! Ambiguous response for broken idx {idx} ({len(full_match)} matches: {repair_source.loc[full_match,'objective'].tolist()})")
                broken.loc[idx,'objective'] = repair_source.loc[full_match[0],'objective']
                repaired_ids.append(idx)
            elif expect_fix in fake_objs[expect_size].keys():
                # See if this was faked and got collated anyways
                repair_source = fake_objs[expect_size][expect_fix]
                search = (repair_source[param_cols].astype(str) == expect_values).sum(axis=1)
                full_match = np.where(search == len(param_cols))[0]
                if len(full_match) >= 1:
                    faked_ids.append(idx)
    not_repaired = set(broken_ids).difference(set(repaired_ids).union(set(faked_ids)))
    print(f"Initially found {len(broken_ids)} broken objective values")
    print(f"Repaired {len(repaired_ids)} objective values")
    print(broken.loc[repaired_ids,nonparam_cols])
    print(broken.loc[repaired_ids,param_cols])
    print(f"Identified {len(faked_ids)} collated values as not-evaluated")
    print(broken.loc[faked_ids,nonparam_cols])
    print(f"{len(not_repaired)} objective values still broken")
    print(broken.loc[not_repaired,nonparam_cols])
    print(broken.loc[not_repaired,param_cols])

    # Export prep and commit
    if len(broken_ids) == 0:
        print(f"No export -- original CSV was not broken")
        return
    broken = broken.drop(index=faked_ids)
    if len(faked_ids) > 0:
        print(f"Dropped {len(faked_ids)} values for export, this may destablize MMP values as the following files will not have links in collation CSV anymore:")
        print(faked_ids)
    if args.export.exists() and not args.y:
        print(f"Saving this CSV would override file '{args.export}'. Is this OK? (y for OK or give -y argument in the future): ")
        if input() == 'y':
            args.y = True
    elif not args.export.exists():
        args.y = True
    if args.y:
        broken.to_csv(args.export, index=False)

if __name__ == '__main__':
    main()

