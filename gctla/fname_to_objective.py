import pandas as pd
import re
import argparse

def build():
    prs = argparse.ArgumentParser()
    prs.add_argument("--to-convert", nargs="+", required=True, default=None,
                     help="CSVs with columns (filename, runtime) to convert to records of (parameters*, objective) for use in other scripts")
    prs.add_argument("--output", nargs="+", required=True, default=None,
                     help="Names to output converted data to (specify in same order as --to-convert argument)")
    prs.add_argument("--oracles", nargs="+", required=True, default=None,
                     help="Oracle data that contains the parameters used in conversion")
    return prs

def parse(args=None, prs=None):
    if prs is None:
        prs = build()
    if args is None:
        args = prs.parse_args()
    # Validation: These lists must have the same length
    assert len(args.to_convert) == len(args.output), "Must specify one --to-convert per --output"
    return args

# Prefer stricter match with two underscores, then reverse order for longer strings on weaker match
SIZES = ['_S_','_M_','_L_','_SM_','_XL_']
SIZES.extend([s[:-1] for s in SIZES[::-1]])
SIZE_VALUES =  {'SM': 130,
                'ML': 600,
                'XL': 2000,
                'S': 60,
                'M': 200,
                'L': 1000}
def identify_size_from_name(name):
    for size in SIZES:
        if size in name:
            # Always return without underscores
            return size.lstrip('_').rstrip('_')
    raise ValueError(f"Unable to get any size (option: '{SIZES}') from name '{name}'")

row_regex = re.compile(r"mmp_all_[LMSX]+_([0-9]+)\.pth")
def identify_row_from_name(name):
    matches = row_regex.match(name)
    assert matches is not None, f"Unable to extract row ID from file name '{name}'"
    return int(matches.groups()[0])

OMIT_COLUMNS = ['objective', 'predicted', 'elapsed_sec']
def load_oracles(oracles):
    frames = {}
    for oracle in oracles:
        size_identifier = identify_size_from_name(oracle)
        csv = pd.read_csv(oracle).drop(columns=OMIT_COLUMNS)
        frames[size_identifier] = csv
    # Make sure all CSVs agree on the parameter columns
    column_sets = [set(v.columns) for v in frames.values()]
    for cset in column_sets[1:]:
        assert column_sets[0] == cset, "Oracles disagree on parameter columns"
    return frames

def convert(from_name, to_name, oracles):
    from_df = pd.read_csv(from_name)
    # Rename this column if it exists
    # No try-except because apparently pandas doesn't care if the source column isn't present
    if 'runtime' in from_df.columns:
        from_df.rename(columns={'runtime':'objective'}, inplace=True)
    elif 'actual_runtime' in from_df.columns:
        from_df.rename(columns={'actual_runtime':'objective'}, inplace=True)
    elif 'objective' not in from_df.columns:
        raise ValueError(f"Did not recognize an objective column in CSV '{from_name}' (usually named: 'runtime','actual_runtime','objective')")
    # Use filenames to add parameters
    injection_columns = [col for col in list(oracles.values())[0]]
    for col in injection_columns[::-1]:
        from_df.insert(0, col, [None for _ in from_df.index])
    # Ensure size is preserved
    if 'size' not in from_df.columns:
        from_df.insert(0, 'size', [None] * len(from_df.index))
    # Retrieve correct parameters and override in dataframe
    for idx, row in from_df.iterrows():
        size = identify_size_from_name(row['filename'])
        loc_row = identify_row_from_name(row['filename'])
        associated_data = oracles[size].loc[loc_row, injection_columns]
        from_df.loc[idx, injection_columns] = associated_data
        from_df.loc[idx, 'size'] = SIZE_VALUES[size]
    # Drop filenames now that we're done with them
    from_df.drop(columns=['filename'], inplace=True)
    from_df.to_csv(to_name, index=False)

def main(args=None):
    args = parse(args)
    oracles = load_oracles(args.oracles)
    for from_name, to_name in zip(args.to_convert, args.output):
        convert(from_name, to_name, oracles)

if __name__ == '__main__':
    main()

