import numpy as np, pandas as pd
import matplotlib
font = {'size': 14, 'family': 'serif',}
lines = {'linewidth': 3, 'markersize': 6,}
matplotlib.rc('font', **font)
matplotlib.rc('lines', **lines)
matplotlib.rcParams['pdf.fonttype'] = 42
matplotlib.rcParams['ps.fonttype'] = 42
import matplotlib.pyplot as plt
rcparams = {'axes.labelsize': 14, 'legend.fontsize': 12, 'xtick.labelsize': 12, 'ytick.labelsize': 12,}
plt.rcParams.update(rcparams)
from matplotlib.offsetbox import AnchoredOffsetbox
legend_codes = sorted(list(AnchoredOffsetbox.codes.keys())+['best'])
import pathlib, argparse

def build():
    prs = argparse.ArgumentParser()
    iocntrl = prs.add_argument_group("IO Controls")
    iocntrl.add_argument("--inputs", nargs="+", required=True,
                        help="Files to use for plotting")
    iocntrl.add_argument("--oracle-truth", default=None, required=True,
                        help="Use this CSV as an oracle for the actual objective value")
    iocntrl.add_argument("--oracle-rank", default=None,
                        help="Use this CSV as an oracle to rank input configurations rather than their order in input")
    pcntrl = prs.add_argument_group("Plot controls")
    pcntrl.add_argument("--export", default=None,
                        help="Instead of displaying plot, save to path (default display only, do not save)")
    pcntrl.add_argument("--format", choices=['png','pdf','svg','jpeg'], default='png',
                        help="Export foramat (default %(default)s)")
    pcntrl.add_argument("--budget", "--indicate-budget", type=int, nargs="*", default=None,
                        help="Indicate a budget (either global or one value per file) (default %(default)s)")
    pcntrl.add_argument("--relabel", nargs="*", default=None,
                        help="Plot labels for input files (default: filename)")
    pcntrl.add_argument("--best", "--best-so-far", action="store_true",
                        help="Replace values with best value left-to-right to simplify busy plots at cost of not seeing bad evaluations")
    pcntrl.add_argument("--zoom-y", type=float, default=None,
                        help="Zoom y-axis to look at values less than this (integers for absolute Y, values (0,1) for quantile) (default %(default)s)")
    pcntrl.add_argument("--title", default=None,
                        help="Provide a plot title (default %(default)s)")
    pcntrl.add_argument("--fig-pts", type=float, default=None,
                        help="Create figure size in LaTeX points using golden ratio (default %(default)s)")
    pcntrl.add_argument("--dpi", type=int, default=300,
                        help="DPI for exported figures (default %(default)s)")
    pcntrl.add_argument("--legend-loc", choices=legend_codes, default="best",
                        help="Legend placement (default %(default)s)")
    return prs

def parse(args=None, prs=None):
    if prs is None:
        prs = build()
    if args is None:
        args = prs.parse_args()
    if args.relabel is not None and len(args.relabel) != len(args.inputs):
        raise ValueError("Relabel EACH input (found {len(args.relabel)} relabels and {len(args.input)} inputs)!")
    # Budgeting
    if args.budget is not None:
        if len(args.budget) == 1:
            args.budget = args.budget * len(args.inputs)
        elif len(args.budget) != len(args.inputs):
            raise ValueError(f"Given {len(args.inputs)} inputs '{args.inputs}' and {len(args.budget)} budgets '{args.budget}'. Must have one global budget or one budget per input!")
    # Oracles
    args.oracle_rank_name = args.oracle_rank
    if args.oracle_rank is not None:
        args.oracle_rank = pd.read_csv(args.oracle_rank).sort_values(by=['objective']).reset_index(drop=True)
    args.oracle_truth_name = args.oracle_truth
    args.oracle_truth = pd.read_csv(args.oracle_truth).sort_values(by=['objective']).reset_index(drop=True)
    # Plot
    if args.zoom_y is not None:
        if args.zoom_y >= 1:
            args.zoom_y = int(args.zoom_y)
        else:
            args.zoom_y = int(args.zoom_y * len(args.oracle_truth))
    if args.fig_pts is not None:
        def set_size(width, fraction=1, subplots=(1,1)):
            fig_width_pt = width * fraction
            inches_per_pt = 1 / 72.27
            golden_ratio = (5**.5 - 1)/2
            fig_width_in = fig_width_pt * inches_per_pt
            fig_height_in = fig_width_pt * golden_ratio * (subplots[0] / subplots[1])
            return (fig_width_in, fig_height_in)
        args.fig_pts = set_size(args.fig_pts)
    return args

# Using match_columns as matchable subset, return the index in lookup of each item found matching from rankable
def lookup_ranks(rankable, match_columns, lookup):
    reranking = -1 * np.ones(len(rankable), dtype=int)
    for idx, row in rankable.iterrows():
        search = tuple([str(e) for e in row[match_columns]])
        n_matches = (lookup[match_columns].astype(str) == search).sum(1)
        full_match_idx = np.where(n_matches == len(match_columns))[0]
        assert len(full_match_idx) == 1
        reranking[idx] = full_match_idx[0]
    return reranking


def oracle_rank(fname, idx, args):
    data = pd.read_csv(fname)
    columns = [_ for _ in data.columns if _ not in ['scale','objective']]

    data = data.sort_values(by=['objective']).reset_index(drop=False,names=["OriginalOrder"])
    # Budget based on original ordering
    if args.budget is not None:
        data.insert(0,"Budget",
            [True if val < args.budget[idx] else False
                for val in data["OriginalOrder"]])
    # Pick based on ranking oracle
    if args.oracle_rank is None:
        data.insert(0,"OracleRank", data["OriginalOrder"])
    else:
        data.insert(0,"OracleRank", lookup_ranks(data, columns, args.oracle_rank))
    # Update objective based on truth oracle
    data.insert(0,"OracleTruth", lookup_ranks(data, columns, args.oracle_truth))
    return data

def load(args):
    load_dict = {}
    # Initial loading for all files
    for idx, fname in enumerate(args.inputs):
        load_dict[fname] = oracle_rank(fname, idx, args)
    # Debug: Show CSV counts for each loaded item
    for (idx, (key, val)) in enumerate(load_dict.items()):
        print(f"Loaded {len(val)} items under alias ",end="")
        if args.relabel is None:
            print(f"'{key}'")
        else:
            print(f"'{args.relabel[idx]}' -- from {key}")
    return load_dict

# Convert data into a best-so-far list for simpler viewing (change best_operand to max() or other appropriate function as needed)
def best_so_far(data, tvalue, best_operand=min):
    if not tvalue:
        return data
    if type(data) is pd.Series:
        data = data.values
    best = data[0]
    rval = np.zeros(len(data))
    for idx, ival in enumerate(data):
        best = best_operand(best, ival)
        rval[idx] = best
    return rval

def main(args=None):
    # Configure and load data
    args = parse(args)
    loaded_dict = load(args)

    # Set up figure
    fig, ax = plt.subplots(figsize=args.fig_pts)
    ax.set_ylabel(f"Empirical Ranking (0=best, {len(args.oracle_truth)}=worst)")
    if args.zoom_y is None:
        ax.set_ylim((0,len(args.oracle_truth)))
    else:
        ax.set_ylim((0, args.zoom_y))
    ax.set_xlabel(f"Oracle Ranking (From: {args.oracle_rank_name if args.oracle_rank is not None else 'input order'})")
    if args.title is not None:
        ax.set_title(args.title)

    # Add data to figure
    legend_handles = []
    dot_size = 30
    for (idx, (key, df)) in enumerate(loaded_dict.items()):
        sort_df = df.sort_values(by=['OracleRank']).reset_index(drop=True)
        x_values = sort_df.index
        y_values = best_so_far(sort_df['OracleTruth'], args.best)
        lines = ax.plot(x_values, y_values, marker='.', linewidth=0.5, label=args.relabel[idx] if args.relabel is not None else key)
        legend_handles.append(lines[0])
        if args.budget is not None:
            x_values = x_values[sort_df['Budget']]
            y_values = y_values[sort_df['Budget']]
            dots = ax.scatter(x_values, y_values, s=dot_size, color=lines[0].get_color(), marker='o', zorder=3)
            dots.set_facecolor((0,0,0,0))
            dot_size += 15
    if args.budget is not None:
        legend_dots = ax.scatter([],[], s=50, color='k', marker='o', label='On-Budget Evaluation')
        legend_dots.set_facecolor((0,0,0,0))
        legend_handles.append(legend_dots)
    legend = ax.legend(handles=legend_handles, loc=args.legend_loc, prop={'size': 10})

    # Display or save
    if args.export is None:
        plt.show()
    else:
        export = pathlib.Path(args.export).with_suffix("."+args.format)
        fig.savefig(export, format=args.format, dpi=args.dpi)

if __name__ == '__main__':
    main()

