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
legend_codes = sorted(list(AnchoredOffsetbox.codes.keys())+['best']+['none'])
import pathlib, argparse
from tqdm import tqdm
from scipy.stats import spearmanr

def build():
    prs = argparse.ArgumentParser()
    iocntrl = prs.add_argument_group("IO Controls")
    iocntrl.add_argument("--truth", nargs="+", required=True, default=None,
                        help="File(s) to combine to represent the true relationship")
    iocntrl.add_argument("--compare", nargs="+", required=True, default=None,
                        help="File(s) to combine to represent the compared relationship")
    iocntrl.add_argument("--n-bins", type=int, default=1,
                        help="Number of quantile-based bins to create (default: %(default)s)")
    iocntrl.add_argument("--view-bins", type=int, nargs="*", default=None,
                        help="Only plot specified bin IDs, each as index [0-nbins) (default: all bins)")
    iocntrl.add_argument("--rolling", type=int, default=3,
                        help="Size of window for rolling mean (default %(default)s)")
    pcntrl = prs.add_argument_group("Plot controls")
    pcntrl.add_argument("--export", default=None,
                        help="Instead of displaying plot, save to path (default display only, do not save)")
    pcntrl.add_argument("--format", choices=['png','pdf','svg','jpeg'], default='png',
                        help="Export foramat (default %(default)s)")
    pcntrl.add_argument("--relabel-truth", default=None,
                        help="Plot labels for --truth files (default: filename(s))")
    pcntrl.add_argument("--relabel-compare", default=None,
                        help="Plot labels for --compare files (default: filename(s))")
    pcntrl.add_argument("--title", default=None,
                        help="Provide a plot title (default %(default)s)")
    pcntrl.add_argument("--fig-pts", type=float, default=None,
                        help="Create figure size in LaTeX points using golden ratio (default %(default)s)")
    pcntrl.add_argument("--arb-fig-pts", type=float, nargs="*", default=None,
                        help="Explicitly use a particular figure size (must supply 2 values: x-size and y-size, default %(default)s)")
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
    # Labeling
    if args.relabel_truth is None:
        args.relabel_truth = ','.join([pathlib.Path(f).name for f in args.truth])
    if args.relabel_compare is None:
        args.relabel_compare = ','.join([pathlib.Path(f).name for f in args.compare])
    # Validate binning
    if args.n_bins < 1:
        raise ValueError(f"Must have at least one bin (--n-bins={args.n_bins})")
    if args.view_bins is not None:
        bin_range = range(0,args.n_bins)
        ok_bin = [_ in bin_range for _ in args.view_bins]
        if not all(ok_bin):
            raise ValueError(f"Bin out-of-range. Bin range: [0,{args.n_bins}) bins, but requested view of illegal bins {[args.view_bins[i] for (i,tvalue) in enumerate(ok_bin) if not tvalue]}")
    if args.rolling < 1:
        raise ValueError(f"Rolling mean window must have at least one element")
    # Plot configuration
    if args.fig_pts is not None:
        def set_size(width, fraction=1, subplots=(1,1)):
            fig_width_pt = width * fraction
            inches_per_pt = 1 / 72.27
            golden_ratio = (5**.5 - 1)/2
            fig_width_in = fig_width_pt * inches_per_pt
            fig_height_in = fig_width_pt * golden_ratio * (subplots[0] / subplots[1])
            return (fig_width_in, fig_height_in)
        args.fig_pts = set_size(args.fig_pts)
    if args.arb_fig_pts is not None:
        if len(args.arb_fig_pts) != 2:
            raise ValueError("Must supply exactly two values to --arb-fig-pts, the x-size and y-size")
        args.fig_pts = (args.arb_fig_pts[0], args.arb_fig_pts[1])
    return args

# Using match_columns as matchable subset, return the index in lookup of each item found matching from rankable
def lookup_ranks(rankable, match_columns, lookup, idx_range=None):
    lookup_strs = lookup[match_columns].astype(str)
    rank_strs = rankable[match_columns].astype(str)
    if idx_range is None:
        idx_range = range(len(rank_str))
    reranking = -1 * np.ones(len(idx_range), dtype=int)
    r_idx = 0
    for idx in tqdm(idx_range):
        n_matches = (lookup_strs == rank_strs.iloc[idx]).sum(1)
        full_match_idx = np.where(n_matches == len(match_columns))[0]
        assert len(full_match_idx) == 1
        reranking[r_idx] = full_match_idx[0]
        r_idx += 1
    return reranking

# Ensure consistency in column matching criterion
def get_match_cols(df):
    return [_ for _ in df.columns if _ not in ['predicted','elapsed_sec','objective','LoadOrder']]

def load_set(fnames, relabel, matching_columns=None):
    loaded = []
    for fname in fnames:
        df = pd.read_csv(fname)
        # Ensure consistency for column-based matching lookups to succeed
        candidate_match_columns = get_match_cols(df)
        if matching_columns is None:
            matching_columns = candidate_match_columns
        else:
            unmatched = set(matching_columns).difference(set(candidate_match_columns))
            if len(unmatched) > 0:
                raise ValueError(f"File '{fname}' missing columns to match from other files: {unmatched}")
        loaded.append(df)
    # Combine and set index
    rval = pd.concat(loaded).reset_index(drop=True).sort_values(by=['objective']).reset_index(drop=False,names=["LoadOrder"])
    # Debug: Show CSV counts for each loaded item
    print(f"Loaded {len(rval)} items from {', '.join(fnames)} under alias '{relabel}'")
    return rval

def load(args):
    # Initial load only ensures matching columns
    truth = load_set(args.truth, args.relabel_truth)
    match_cols = get_match_cols(truth)
    compare = load_set(args.compare, args.relabel_compare, matching_columns=match_cols)
    return truth, compare

def bin_data(true_df, comp_df, args):
    quantile_idx = (np.linspace(0,1,args.n_bins+1)*len(true_df)).round(0).astype(int)
    # Below is: [0, 1, 1, 2, 2, ..., n-2, n-2, n-1]
    #           x1  ^--------- x2 ---------^    x1
    bin_idx = np.asarray([0]+sorted(list(range(1,len(quantile_idx)-1))*2)+[len(quantile_idx)-1])
    if args.view_bins is not None:
        # Duplicate starting points for bins
        meta_idx = np.asarray(args.view_bins)*2
        # Add one for ending point, then stack and re-sort
        meta_idx = np.sort(np.concatenate((meta_idx, meta_idx+1)))
        # Only inspect these ranges
        bin_idx = bin_idx[meta_idx]
    binxs, binys = [], []
    for (bin_id, (start, stop)) in enumerate(zip(quantile_idx[bin_idx[::2]], quantile_idx[bin_idx[1::2]])):
        print(f"Matching ranks for bin {bin_id}")
        binxs.append(range(start,stop))
        binys.append(lookup_ranks(comp_df, get_match_cols(true_df), true_df, range(start,stop)))
        print(f"SpearmanR for bin {bin_id}: {spearmanr(binxs[-1], binys[-1])}")
    return binxs, binys

def rolling_mean(x, y, n_roll=1):
    # Express y as pandas.Series for rolling mean
    rolled_y = pd.Series(y).rolling(window=n_roll, center=True).mean()
    # Clamp x and y to non-Nan range
    xx = np.asarray(x)[~rolled_y.isna()]
    yy = rolled_y[~rolled_y.isna()]
    return (xx, yy)

def main(args=None):
    # Configure and load data
    args = parse(args)
    true_df, comp_df = load(args)
    binxs, binys = bin_data(true_df, comp_df, args)

    # Set up figure
    fig, ax = plt.subplots(figsize=args.fig_pts)
    ax.set_xlabel(f"Truth Ranking (From: {args.relabel_truth})")
    ax.set_ylabel(f"Compared Ranking (From: {args.relabel_compare})")
    ax.set_ylim((0,len(comp_df)))
    if args.title is not None:
        ax.set_title(args.title)

    # Add data to figure
    legend_handles = []
    for (idx, (binx, biny)) in enumerate(zip(binxs, binys)):
        # As line
        #lines = ax.plot(binx, biny, marker='.', linewidth=0.5, label=f"Bin {idx}")
        #legend_handles.append(lines[0])
        # As dots
        dots = ax.scatter(binx, biny, s=0.5, label=f"Bin {idx}")
        legend_handles.append(dots)
        # Rolling mean line
        lines = ax.plot(*rolling_mean(binx, biny, args.rolling), linewidth=1, linestyle='dotted')
        # Perfect fit line
        perfect_fit = ax.plot(binx, binx, linewidth=1, color=lines[0].get_color())
    if args.legend_loc != 'none':
        legend = ax.legend(handles=legend_handles, loc=args.legend_loc, prop={'size': 10})

    # Display or save
    if args.export is None:
        plt.show()
    else:
        export = pathlib.Path(args.export).with_suffix("."+args.format)
        fig.savefig(export, format=args.format, dpi=args.dpi)

if __name__ == '__main__':
    main()

