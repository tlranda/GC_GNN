"""
    Load a file and rerank it based on oracle data; indicate if the result is
    "in-budget" for a runtime-specified value
"""
import numpy as np, pandas as pd
import pathlib, argparse

def build():
    prs = argparse.ArgumentParser()
    iocntrl = prs.add_argument_group("IO Controls")
    iocntrl.add_argument("--inputs", nargs="+",
                        help="Files to use for plotting")
    iocntrl.add_argument("--ignore", nargs="*", default=None,
                        help="Files to not use for plotting that may be globbed in inputs list (default %(default)s)")
    iocntrl.add_argument("--relabel", nargs="*", default=None,
                        help="Provide new plot labels for input files (default: filename without path)")
    iocntrl.add_argument("--combine-by-directory", action="store_true",
                        help="Conglomerate files from the same directory into same DataFrame (default %(default)s)")
    iocntrl.add_argument("--oracle-rank", default=None,
                        help="Use this CSV as an oracle to rank input configurations rather than their objective value")
    pcntrl = prs.add_argument_group("Plot Controls")
    pcntrl.add_argument("--indicate-budget", type=int, nargs="*", default=None,
                        help="Indicate a budget (either global or one value per file) (default %(default)s)")
    return prs

def parse(args=None, prs=None):
    if prs is None:
        prs = build()
    if args is None:
        args = prs.parse_args()
    # Listifying
    if args.ignore is None:
        args.ignore = []
    # Input processing
    accepted_inputs = []
    for fname in args.inputs:
        if fname not in args.ignore:
            accepted_inputs.append(fname)
    args.inputs = accepted_inputs
    del args.ignore
    # Relabeling
    if args.relabel is None:
        args.relabel = [None] * len(args.inputs)
    if len(args.relabel) != len(args.inputs):
        raise ValueError(f"Given {len(args.inputs)} inputs '{args.inputs}' and {len(args.relabel)} labels '{args.relabel}'. Must have one label per input!")
    # Budgeting
    if args.indicate_budget is not None:
        if len(args.indicate_budget) == 1:
            args.indicate_budget = args.indicate_budget * len(args.inputs)
        elif len(args.indicate_budget) != len(args.inputs):
            raise ValueError(f"Given {len(args.inputs)} inputs '{args.inputs}' and {len(args.indicate_budget)} budgets '{args.indicate_budget}'. Must have one global budget or one budget per input!")
    if args.oracle_rank is not None:
        args.oracle_rank = pd.read_csv(args.oracle_rank).sort_values(by=['objective']).reset_index(drop=True)
    return args

def oracle_rank(fname, idx, args):
    data = pd.read_csv(fname)
    data = data.sort_values(by=['objective']).reset_index(drop=False)
    data = data.rename(columns={'index':'budget'})
    if args.indicate_budget is not None:
        budget = args.indicate_budget[idx]
        new_budget_values = [True if val < budget else False for val in data['budget']]
        data['budget'] = new_budget_values
    if args.oracle_rank is not None:
        rerank = []
        columns = [_ for _ in data.columns if _ not in ['scale','objective','budget']]
        for idx, row in data.iterrows():
            search = tuple([str(e) for e in row[columns]])
            n_column_matches = (args.oracle_rank[columns].astype(str) == search).sum(1)
            full_match_idx = np.where(n_column_matches == len(columns))[0]
            assert len(full_match_idx) == 1
            rerank.append(full_match_idx[0])
        data['objective'] = rerank
    return data

def load(args):
    load_dict = {}
    # Initial loading for all files
    for idx, fname in enumerate(args.inputs):
        if not args.combine_by_directory:
            load_dict[fname] = oracle_rank(fname, idx, args)
        else:
            dirname = pathlib.Path(fname).parent
            name = pathlib.Path(fname).name
            if dirname in load_dict.keys():
                load_dict[dirname][name] = oracle_rank(fname, idx, args)
            else:
                load_dict[dirname] = {name: oracle_rank(fname, idx, args)}
    # Combine everything in the same directory if given
    if args.combine_by_directory:
        new_dict = {}
        for top_level_key, lower_dict in load_dict.items():
            combine = None
            for lower_value in lower_dict.values():
                if combine is None:
                    combine = lower_value
                else:
                    combine = pd.concat((combine, lower_value))
            new_dict[top_level_key] = combine.sort_values(by=['objective']).reset_index(drop=True)
        load_dict = new_dict
    # Debug: Show CSV counts for each loaded item
    for ((key, val), relabel) in zip(load_dict.items(), args.relabel):
        if relabel is None:
            print(f"Loaded {len(val)} items under alias '{key}'")
        else:
            print(f"Loaded {len(val)} items from '{key}' under alias '{relabel}'")
    return load_dict

def plot_source(idx, source, label, relabel, args):
    if relabel is None:
        plot_label = pathlib.Path(label).name
    else:
        plot_label = relabel
    # Main data
    print(plot_label)
    print("[budget?] index objective-value")
    for i, row in source.iterrows():
        print(f"[{'x' if row['budget'] else ' '}] {i} {row['objective']}")

def main(args=None):
    args = parse(args)
    loaded_dict = load(args)
    for idx, ((label, data), relabel) in enumerate(zip(loaded_dict.items(), args.relabel)):
        plot_source(idx, data, label, relabel, args)
    # Aggregate data
    best = np.asarray([v.loc[0,'objective'] for v in loaded_dict.values()])
    mean = np.mean(best)
    std = np.std(best)
    print(f"Aggregate mean: {mean}")
    if args.oracle_rank is not None:
        print("\t"+f"{mean/len(args.oracle_rank)*100:.2f}%")
    print(f"Aggregate stddev: {std}")
    if args.oracle_rank is not None:
        print("\t"+f"{std/len(args.oracle_rank)*100:.2f}%")

if __name__ == '__main__':
    main()

