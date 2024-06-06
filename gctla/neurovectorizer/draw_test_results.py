import pathlib
import pandas as pd
import numpy as np
import seaborn as sns
import matplotlib.pyplot as plt
from mpl_toolkits.axes_grid1.axes_divider import make_axes_area_auto_adjustable

SOFT_VERSION="0.1"

def load_data(sources=None, y_labels=None, y_labels_at=None, source_range=None):
    if y_labels_at is None:
        y_labels_at = []
    if y_labels is None:
        y_labels = []
    accumulate_colors = []
    accumulate_passes = []
    accumulate_n_passing = []
    if source_range is None:
        clipped_sources = sources
    else:
        clipped_sources = sources[source_range]
    for source in clipped_sources:
        data = pd.read_csv(pathlib.Path('test_results').joinpath(f"{source}_to_all_tests.csv")).drop(columns=['source'])
        #data.set_index('target',inplace=True)
        data.columns = pd.MultiIndex.from_product([[source], data.columns])
        # Drop 'source' and 'target' columns
        color_data = data.drop(columns=['target'], level=1)
        if len(y_labels) == 0:
            current_y_label = ""
            variant_normalizer = lambda name: name.rsplit("_",1)[0]
            skip_threshold = 100
            skip_count = skip_threshold
            for idx,target in enumerate(data[source,'target']):
                normalized = variant_normalizer(target)
                if normalized != current_y_label:
                    if skip_count >= skip_threshold:
                        y_labels_at.append(idx)
                        y_labels.append(normalized)
                        skip_count = 0
                    else:
                        skip_count += 1
                    current_y_label = normalized
            #print(len(y_labels_at))
            #print('\n'.join(y_labels))
        # Map boolean values to colors
        data_colors = color_data.astype(int)
        passes = data_colors.sum()
        accumulate_passes.extend(passes.tolist())
        n_passing = passes.sum()
        accumulate_n_passing.append(n_passing)
        accumulate_colors.append(data_colors)
    data_colors = pd.concat(accumulate_colors, axis=1)
    return y_labels, y_labels_at, data_colors, accumulate_passes, accumulate_n_passing

def plot_image(data_colors, accumulate_passes, accumulate_n_passing, y_labels_at, y_labels, source_range=None, figname=""):
    # Plot the image
    fig = plt.figure(figsize=(18, 6))
    # Make x-axis labels
    n_groupings = len(data_colors.columns.levels[0])
    n_subcols = len(data_colors.columns.levels[1])
    xlabels = [f"{col[2:]}"+('\n' if index_count % 2 == 0 else '\n|\n')+f"{npass}" for index_count, (col,npass) in enumerate(zip(data_colors.columns.levels[1].tolist()*len(data_colors.columns.levels[0]), accumulate_passes))]
    bonus_xlabels = [] #['' for _ in xlabels]
    for meta_idx, idx in enumerate([(_*n_subcols)+(n_subcols//2) for _ in range(n_groupings)]):
        #xlabels[idx] += "\nBONUS"
        bonus_xlabels.append(f"{data_colors.columns.levels[0][meta_idx]}"+("\n" if meta_idx % 2 == 0 else "\n|\n")+f"{accumulate_n_passing[meta_idx]}")
    #print(xlabels)
    #print(bonus_xlabels)

    ax = sns.heatmap(data_colors, cmap=['white', 'black'], cbar=False,
                     yticklabels=False,
                     xticklabels=False)
    # Add names for sources
    ax2 = ax.twiny()
    xticks = [(_/n_groupings)+(1/(2*n_groupings)) for _ in list(range(n_groupings))]
    #print(xticks)
    ax2.set(xticks=xticks, xticklabels=bonus_xlabels)

    # Add separators between sources
    for idx, grouping in enumerate(data_colors.columns.levels[0]):
        ax.vlines((idx+1)*n_subcols,0,len(data_colors), color='k')
    # Add names for some targets
    ax.set(yticks=y_labels_at, yticklabels=y_labels)
    ax.set(xticks=0.5+np.arange(n_groupings*n_subcols), xticklabels=xlabels)
    #make_axes_area_auto_adjustable(ax2)
    #make_axes_area_auto_adjustable(ax)
    n_tests = len(data_colors) * len(data_colors.columns)
    fig.suptitle(f"Transferability out of {n_tests} Targets")
    fig.set_tight_layout(True)
    #plt.show()
    fig.savefig(figname, format='png')
    print("\tPlotted:", figname)
    plt.close(fig)

def main():
    test_dir = 'test_results'
    sources = np.asarray([_.stem[:-len('_to_all_tests')] for _ in pathlib.Path(test_dir).iterdir() if _.suffix == '.csv'])
    print(f"Identified {sources.shape[0]} test results in directory '{test_dir}'")
    y_labels, y_labels_at = None, None
    per_slice = 15
    n_slices = (sources.shape[0]+(per_slice-1)) // per_slice
    print(f"Slicing in groups of {per_slice}, ie: {n_slices} groups to plot")
    exists_start = None
    for (start,stop) in zip(np.arange(0,n_slices*per_slice,per_slice), np.arange(per_slice,n_slices*per_slice,per_slice)):
        stop = min(stop,sources.shape[0])
        if start == stop:
            break
        figname = f"slice_figures/Plot_v{SOFT_VERSION}_for_slice_{start:04d}_{stop:04d}.png"
        if pathlib.Path(figname).exists():
            if exists_start is None:
                exists_start = start
            continue
        else:
            if exists_start is not None:
                print(f"Slices {exists_start} -> {start} satisfy min_version {SOFT_VERSION}, skipping {(start-exists_start)//per_slice} plots")
                exists_start = None
            print(f"Process slice {start} -> {stop}")
        y_labels, y_labels_at, data_colors, accumulate_passes, accumulate_n_passing = load_data(sources=sources,
                                                                                                y_labels=y_labels,
                                                                                                y_labels_at=y_labels_at,
                                                                                                source_range=slice(start,stop))
        plot_image(data_colors, accumulate_passes, accumulate_n_passing, y_labels_at, y_labels, source_range=slice(start,stop), figname=figname)
    if exists_start is not None:
        print(f"Slices {exists_start} -> {stop} satisfy min_version {SOFT_VERSION}, skipping {(stop-exists_start)//per_slice} plots")

if __name__ == '__main__':
    main()
"""
sources = np.asarray([_.stem[:-len('_to_all_tests')] for _ in pathlib.Path('test_results').iterdir() if _.suffix == '.csv'])
source_range = slice(0,15)
sources = sources[source_range]
y_labels_at = []
y_labels = []
current_y_label = ""
variant_normalizer = lambda name: name.rsplit("_",1)[0]
skip_threshold = 100
skip_count = skip_threshold
accumulate_colors = []
accumulate_passes = []
accumulate_n_passing = []
for source in sources:
    data = pd.read_csv(pathlib.Path('test_results').joinpath(f"{source}_to_all_tests.csv")).drop(columns=['source'])
    #data.set_index('target',inplace=True)
    data.columns = pd.MultiIndex.from_product([[source], data.columns])
    # Drop 'source' and 'target' columns
    color_data = data.drop(columns=['target'], level=1)
    if len(y_labels) == 0:
        for idx,target in enumerate(data[source,'target']):
            if variant_normalizer(target) != current_y_label:
                if skip_count >= skip_threshold:
                    y_labels_at.append(idx)
                    y_labels.append(variant_normalizer(target))
                    skip_count = 0
                else:
                    skip_count += 1
                current_y_label = variant_normalizer(target)
        #print(len(y_labels_at))
        #print('\n'.join(y_labels))
    # Map boolean values to colors
    data_colors = color_data.astype(int)
    passes = data_colors.sum()
    accumulate_passes.extend(passes.tolist())
    n_passing = passes.sum()
    accumulate_n_passing.append(n_passing)
    n_tests = len(data_colors) * len(data_colors.columns)
    accumulate_colors.append(data_colors)
data_colors = pd.concat(accumulate_colors, axis=1)
"""
