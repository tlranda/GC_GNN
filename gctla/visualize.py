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
    iocntrl.add_argument("--combine-by-directory", action="store_true",
                        help="Conglomerate files from the same directory into same DataFrame (default %(default)s)")
    iocntrl.add_argument("--format", choices=["png", "pdf", "svg", "jpeg"], default="png",
                        help="Export format for figures (default %(default)s)")
    pcntrl = prs.add_argument_group("Plot Controls")
    pcntrl.add_argument("--legend-loc", choices=legend_codes, default='best',
                        help="Where to place legend in plot (default %(default)s)")
    pcntrl.add_argument("--fig-pts", type=float, default=None,
                        help="Create figure size in LaTeX points using golden ratio (default %(default)s)")
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
    # Set figure size
    args.fig_size = None
    if args.fig_pts is not None:
        args.fig_size = set_size(args.fig_pts)
    del args.fig_pts
    # Show effective arguments
    print(args)
    return args

def set_size(width, fraction=1, subplots=(1,1)):
    fig_width_pt = width * fraction
    inches_per_pt = 1 / 72.27
    golden_ratio = (5**.5 - 1)/2
    fig_width_in = fig_width_pt * inches_per_pt
    fig_heigh_in = fig_width_pt * golden_ratio * (subplots[0] / subplots[1])
    print(f"Calculated {width} to represent: {fig_width_in} x {fig_height_in} inches")
    return (fig_width_in, fig_height_in)

def load(args):
    load_dict = {}
    # Initial loading for all files
    for fname in args.inputs:
        if not args.combine_by_directory:
            load_dict[fname] = pd.read_csv(fname).sort_values(by=['objective'])
        else:
            dirname = pathlib.Path(fname).parent
            name = pathlib.Path(fname).name
            if dirname in load_dict.keys():
                load_dict[dirname][name] = pd.read_csv(fname)
            else:
                load_dict[dirname] = {name: pd.read_csv(fname)}
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
    for key, val in load_dict.items():
        print(f"Loaded {len(val)} items under alias '{key}'")
    return load_dict

def prepare_fig(args):
    fig, ax = plt.subplots(figsize=args.fig_size)
    fig.set_tight_layout(True)
    return fig, ax

def plot_source(fig, ax, idx, source, label, args):
    color = mcolors[idx % len(mcolors)]
    ax.plot(source['objective'], label=label, marker='o', color=color)

def main(args=None):
    args = parse(args)
    loaded_dict = load(args)
    fig, ax = prepare_fig(args)
    for idx, (label, data) in enumerate(loaded_dict.items()):
        plot_source(fig, ax, idx, data, label, args)
    ax.legend(loc=args.legend_loc)
    plt.show()

if __name__ == '__main__':
    main()

