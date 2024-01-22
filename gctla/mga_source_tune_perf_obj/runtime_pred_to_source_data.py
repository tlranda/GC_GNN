import pandas as pd, numpy as np
import pathlib, argparse, re
import warnings

def build():
    prs = argparse.ArgumentParser()
    files = prs.add_argument_group("Files")
    files.add_argument("--configs", nargs="+", required=True,
                        help="CSV(s) with tuning configurations")
    files.add_argument("--regids", nargs="+", required=True,
                        help="Regex identifier that corresponds to each config CSV (ie: mmp_syr2k_M_[0-9]+). Supply one regex per config CSV")
    files.add_argument("--predictions", nargs="+", required=True,
                        help="CSV(s) to convert based on loaded configs and regexes")
    files.add_argument("--output", required=True,
                        help="Name to output training record to (singular CSV)")
    columns = prs.add_argument_group("Column Management")
    columns.add_argument("--col-regex", default="filename",
                        help="Column name in prediction CSVs to reference for regex matching (default %(default)s)")
    columns.add_argument("--col-config-objective", default="objective",
                        help="Column name in configuration CSVs to override with predicted objective (default %(default)s)")
    columns.add_argument("--col-pred-objective", default="predicted_runtime",
                        help="Column name in prediction CSVs to utilize as objective value (default %(default)s)")
    columns.add_argument("--col-transfer", nargs="*", default=None,
                        help="Column names in prediction CSVs to directly insert in output (default %(default)s)")
    return prs

def parse(args=None, prs=None):
    if prs is None:
        prs = build()
    if args is None:
        args = prs.parse_args()
    # Fix up / checks
    if len(args.configs) != len(args.regids):
        raise ValueError(f"Must have one regex ID ({len(args.regids)} found) per config CSV ({len(args.configs)} found)")
    return args

def load_tuning(load_list):
    csvs = []
    for csv_name in load_list:
        load = pd.read_csv(csv_name)
        load.insert(0, "csv_name", [csv_name] * len(load))
        csvs.append(load)
    return pd.concat(csvs)

# Syr2k Conversion sizes from syr2k/problem.py
conversion_dict = {'N': 20, 'S': 60, 'SM': 130, 'M': 200, 'ML': 600, 'L': 1000, 'XL': 2000, 'H': 3000}
def csv_name_to_size(ele):
    name = pathlib.Path(ele).stem
    explode = name.split('_')
    matches = [_ for _ in explode if _ in conversion_dict.keys()]
    if len(matches) != 1:
        raise ValueError(f"Failed to convert name: {ele}")
    return conversion_dict[matches[0]]

def main(args=None):
    args = parse(args)
    tune_configs = load_tuning(args.configs)
    pred_configs = load_tuning(args.predictions)
    output_df = pd.DataFrame([], columns=tune_configs.columns.difference(['csv_name']))
    for (config, regex) in zip(args.configs, args.regids):
        # Match datasets
        # Pandas will helpfully warn about using str.extract for regex expressions with match groups
        # However, we want the indexes first, then the matches
        # Maybe you could refactor to get both here, but for now I just want it to not complain
        with warnings.catch_warnings():
            warnings.simplefilter('ignore')
            pred_subset_idx = pred_configs.loc[:,(args.col_regex)].str.contains(regex)
            tune_subset_idx = tune_configs.loc[:,('csv_name')].str.match(config)
        pred_subset = pred_configs[pred_subset_idx]
        tune_subset = tune_configs[tune_subset_idx]
        # Transport
        comp_regex = re.compile(regex)
        for (idx, row) in pred_subset.iterrows():
            try:
                ivals = [int(_) for _ in re.findall(comp_regex, row[args.col_regex])]
            except ValueError:
                raise ValueError(f"Your regex '{regex}' may lack a capture group around the integers that would identify which row to match")
            if len(ivals) > 1:
                raise ValueError(f"Your regex '{regex}' produced multiple matches in the {idx}th row record in {row['csv_name']}; too ambiguous to find a match: {row[args.col_regex]}")
            elif len(ivals) == 0:
                raise ValueError(f"Your regex '{regex}' failed to match the {idx}th row record in {row['csv_name']}: {row[args.col_regex]}")
            tune_subset.loc[ivals[0],args.col_config_objective] = row[args.col_pred_objective]
        # Convert csv_name values to sizes
        tune_subset = tune_subset.rename(columns={'csv_name':'size'})
        tune_subset['size'] = tune_subset.loc[:,('size')].map(csv_name_to_size)
        # Add transported values to output
        output_df = pd.concat((output_df, tune_subset))
    # Fix size being cast to float
    output_df['size'] = output_df['size'].astype(int)
    # Final save
    output_df.to_csv(args.output, index=False)

if __name__ == '__main__':
    main()

