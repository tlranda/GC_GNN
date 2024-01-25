import numpy as np, pandas as pd
import pathlib, argparse, matplotlib
# Change matplotlib settings/backends here
font = {'size': 14, 'family': 'serif',}
lines = {'linewidth': 3, 'markersize': 6,}
matplotlib.rc('font', **font)
matplotlib.rc('lines', **lines)
matplotlib.rcParams['pdf.fonttype'] = 42
matplotlib.rcParams['ps.fonttype'] = 42
import matplotlib.pyplot as plt
rcparams = {'axes.labelsize': 14, 'legend.fontsize': 12, 'xtick.labelsize': 12, 'ytick.labelsize': 12,}
plt.rcParams.update(rcparams)
import matplotlib.colors as __mcolors
mcolors = [__mcolors.to_rgb(_['color']) for _ in list(plt.rcParams['axes.prop_cycle'])]
mcolormaps = ['Oranges','Blues','Greens','Purples','Reds']
# Also usually available: Greys,YlOrBr,YlOrRd,OrRd,PuRd,RdPu,BuPu,GnBu,PuBu,GlGnBu,PuBuGn,BuGn,YlGn
from matplotlib.offsetbox import AnchoredOffsetbox
legend_codes = sorted(list(AnchoredOffsetbox.codes.keys())+['best'])

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
    iocntrl.add_argument("--export", default=None,
                        help="Instead of displaying plot, save to path (default display only, do not save)")
    iocntrl.add_argument("--format", choices=["png", "pdf", "svg", "jpeg"], default="png",
                        help="Export format for figures (default %(default)s)")
    pcntrl = prs.add_argument_group("Plot Controls")
    pcntrl.add_argument("--title", default=None,
                        help="Provide a figure title (default: %(default)s)")
    pcntrl.add_argument("--legend-loc", choices=legend_codes, default='best',
                        help="Where to place legend in plot (default %(default)s)")
    pcntrl.add_argument("--fig-pts", type=float, default=None,
                        help="Create figure size in LaTeX points using golden ratio (default %(default)s)")
    pcntrl.add_argument("--indicate-budget", type=int, default=None,
                help="")
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
    # Set figure size
    args.fig_size = None
    if args.fig_pts is not None:
        args.fig_size = set_size(args.fig_pts)
    del args.fig_pts
    if args.oracle_rank is not None:
        args.oracle_rank = pd.read_csv(args.oracle_rank).sort_values(by=['objective']).reset_index(drop=True)
    return args

def set_size(width, fraction=1, subplots=(1,1)):
    fig_width_pt = width * fraction
    inches_per_pt = 1 / 72.27
    golden_ratio = (5**.5 - 1)/2
    fig_width_in = fig_width_pt * inches_per_pt
    fig_heigh_in = fig_width_pt * golden_ratio * (subplots[0] / subplots[1])
    print(f"Calculated {width} to represent: {fig_width_in} x {fig_height_in} inches")
    return (fig_width_in, fig_height_in)

def oracle_rank(fname, args):
    data = pd.read_csv(fname).sort_values(by=['objective']).reset_index(drop=True)
    if args.oracle_rank is not None:
        rerank = []
        columns = [_ for _ in data.columns if _ not in ['scale','objective']]
        for idx, row in data.iterrows():
            search = tuple([str(e) for e in row[columns]])
            n_column_matches = (args.oracle_rank[columns].astype(str) == search).sum(1)
            full_match_idx = np.where(n_column_matches == len(columns))[0]
            assert len(full_match_idx) == 1
            rerank.append(full_match_idx[0])
        data['objective'] = rerank
        #data.loc[:,'objective'] = rerank
    return data

def load(args):
    load_dict = {}
    # Initial loading for all files
    for fname in args.inputs:
        if not args.combine_by_directory:
            load_dict[fname] = oracle_rank(fname, args)
        else:
            dirname = pathlib.Path(fname).parent
            name = pathlib.Path(fname).name
            if dirname in load_dict.keys():
                load_dict[dirname][name] = oracle_rank(fname, args)
            else:
                load_dict[dirname] = {name: oracle_rank(fname, args)}
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

def prepare_fig(args):
    fig, ax = plt.subplots(figsize=args.fig_size)
    fig.set_tight_layout(True)
    ax.set_xlabel("Sorted Evaluations (Best-to-Worst Order)")
    if args.oracle_rank is not None:
        ax.set_ylim([0, len(args.oracle_rank)])
        ax.set_ylabel("Oracle Rank")
    else:
        ax.set_ylabel("Objective Value")
    if args.title is not None:
        ax.set_title(args.title)
    return fig, ax

def plot_source(fig, ax, idx, source, label, relabel, args):
    color = mcolors[idx % len(mcolors)]
    if relabel is None:
        plot_label = pathlib.Path(label).name
    else:
        plot_label = relabel
    ax.plot(source['objective'], label=plot_label, marker='o', color=color)

def main(args=None):
    args = parse(args)
    loaded_dict = load(args)
    fig, ax = prepare_fig(args)
    for idx, ((label, data), relabel) in enumerate(zip(loaded_dict.items(), args.relabel)):
        plot_source(fig, ax, idx, data, label, relabel, args)
    ax.legend(loc=args.legend_loc)
    if args.export is None:
        plt.show()
    else:
        if pathlib.Path(args.export).suffix != args.format:
            args.export = pathlib.Path(args.export).with_suffix('.'+args.format)
        print(f"Save figure to {args.export} as {args.format}")
        fig.savefig(args.export, format=args.format, dpi=700)

if __name__ == '__main__':
    main()

