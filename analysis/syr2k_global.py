import pandas as pd
import numpy as np
import matplotlib
import matplotlib.pyplot as plt

import pathlib

SM = pd.read_csv('collations/syr2k_all_SM.csv').sort_values(by=['objective']).reset_index(drop=True)
XL = pd.read_csv('collations/syr2k_all_XL.csv').sort_values(by=['objective'])[5:].reset_index(drop=True)

markers = {'quick': 'x',
           'ultimate': 'd',
           }
colors = {'GC+NCS': 'blue',
          'GC': 'orange',
          'GPTune': 'green',
          'BLISS': 'yellow',
          'OpenTuner': 'black',
          }
voffset = {'GC+NCS': 0,
           'GC': 1,
           'GPTune': 2,
           'BLISS': 3,
           'OpenTuner': 4,
           }
zorder = {'GC+NCS': 4,
          'GC': 3,
          'GPTune': 2,
          'BLISS': 1,
          'OpenTuner': 0,
          }
CUTOFF = 30
ALPHA = 0.5
SIZE = 200
LIVE_PLOTTING = False

cols = [f'p{_}' for _ in range(6)]

def lookup(search, oracle, csvname):
    best_in_search = np.argmin(search['objective'])
    #print(csvname, "has performance", search.loc[best_in_search,'objective'])
    try:
        look = tuple([search.loc[best_in_search,c] for c in cols])
    except:
        print(cols)
        print(search.columns.tolist())
        print(csvname)
        raise
    query = (oracle[cols] == look).sum(axis=1)
    find = np.where(query == len(cols))[0]
    if len(find) != 1:
        raise ValueError
    return find[0]

def add_to_plot(csv, labeled_SM, labeled_XL, figSM, axSM, figXL, axXL, legendSM, legendXL):
    if ("SM" not in csv.name and "XL" not in csv.name) or "default" in csv.name:
        return labeled_SM, labeled_XL, figSM, axSM, figXL, axXL, legendSM, legendXL
    # Pick our axis
    if "SM" in csv.name:
        picked_name = "SM"
        picked_data = SM
        # Initialize our axis as needed
        if figSM is None:
            figSM, axSM = plt.subplots()
            axSM.plot(range(len(picked_data)), picked_data['objective'])
        picked_fig = figSM
        picked_ax = axSM
        picked_labels = labeled_SM
        picked_legend = legendSM
    else:
        picked_name = "XL"
        picked_data = XL
        # Initialize our axis as needed
        if figXL is None:
            figXL, axXL = plt.subplots()
            axXL.plot(range(len(picked_data)), picked_data['objective'].to_numpy())
        picked_fig = figXL
        picked_ax = axXL
        picked_labels = labeled_XL
        picked_legend = legendXL
    quant_heights = np.logspace(np.log2(picked_data['objective'].min()),
                                np.log2(picked_data['objective'].quantile(0.5)),
                                len(voffset),
                                base=2.0)
    #print(f"{picked_name} has min {picked_data['objective'].min()} and qh {quant_heights}")

    search = pd.read_csv(csv)
    if 'actually_measured' in search.columns:
        search_where = np.where(search['actually_measured'])[0]
        search = search.loc[search_where].reset_index(drop=True)
    if min(search['objective']) < 0:
        search['objective'] *= -1

    if 'reordered_search' in str(csv):
        kind = 'GC+NCS'
    elif 'GaussianCopula' in str(csv):
        kind = 'GC'
    elif 'GPTune' in str(csv):
        kind = 'GPTune'
    elif 'bliss' in str(csv):
        kind = 'BLISS'
    elif 'opentuner' in str(csv):
        kind = 'OpenTuner'
    worst = search.loc[[search['objective'].argmax()]].reset_index(drop=True)
    quick = lookup(worst, picked_data, csv)
    # LOG PLOTS CAN'T USE X=0
    quick_x = 0.1 if quick == 0 else quick
    label = f"Worst {kind}" if (kind,'quick') not in picked_labels else None
    picked_labels.add((kind,'quick'))
    quick_y = picked_data.loc[quick,'objective']
    quickd = picked_ax.scatter(quick_x, quant_heights[voffset[kind]],
                      s=SIZE, alpha=ALPHA, label=label,
                      c=colors[kind], marker=markers['quick'],
                      zorder=zorder[kind],
                      )
    if kind not in picked_legend:
        picked_legend[kind] = {'quick': None, 'ult': None}
    if picked_legend[kind]['quick'] is None:
        picked_legend[kind]['quick'] = quickd
        print(f"Add {quickd.get_label()} to legend under {kind}/quick")
    picked_ax.vlines(quick_x, quick_y, quant_heights[voffset[kind]],
                     colors=colors[kind], zorder=voffset[kind])

    ult = lookup(search, picked_data, csv)
    # LOG PLOTS CAN'T USE X=0
    ult_x = 0.1 if ult == 0 else ult
    label = f"Best {kind}" if (kind,'ultimate') not in picked_labels else None
    picked_labels.add((kind,'ultimate'))
    ult_y = picked_data.loc[ult,'objective']
    ultd = picked_ax.scatter(ult_x, quant_heights[voffset[kind]],
                      s=SIZE, alpha=ALPHA, label=label,
                      c=colors[kind], marker=markers['ultimate'],
                      zorder=zorder[kind],
                      )
    if kind not in picked_legend:
        picked_legend[kind] = {'quick': None, 'ult': None}
    if picked_legend[kind]['ult'] is None:
        picked_legend[kind]['ult'] = ultd
        print(f"Add {ultd.get_label()} to legend under {kind}/ult")
    picked_ax.vlines(ult_x, ult_y, quant_heights[voffset[kind]],
                     colors=colors[kind], zorder=zorder[kind])
    #print(f"Plotted {csv} as {kind} on {picked_name} @ ({quick} & {ult})")
    #print(f"Plotted {csv} as {kind} on {picked_name} @ {ult_x}")
    return labeled_SM, labeled_XL, figSM, axSM, figXL, axXL, legendSM, legendXL

fig_SM, ax_SM = None, None
fig_XL, ax_XL = None, None
labeled_SM = set()
labeled_XL = set()
legendSM, legendXL = {}, {}

for original_search in sorted(pathlib.Path('rawsearches/syr2k').iterdir()):
    (labeled_SM, labeled_XL,
    fig_SM, ax_SM, fig_XL, ax_XL,
    legendSM, legendXL) = add_to_plot(original_search, labeled_SM, labeled_XL,
                                     fig_SM, ax_SM, fig_XL, ax_XL,
                                     legendSM, legendXL)

for original_search in pathlib.Path('reordered_searches/syr2k').iterdir():
    if 'GaussianCopula' not in original_search.stem:
        continue
    (labled_SM, labeled_XL,
    fig_SM, ax_SM, fig_XL, ax_XL,
    legendSM, legendXL) = add_to_plot(original_search, labeled_SM, labeled_XL,
                                     fig_SM, ax_SM, fig_XL, ax_XL,
                                     legendSM, legendXL)

for fig, ax, legend_materials, size in zip([fig_SM, fig_XL],
                                           [ax_SM, ax_XL],
                                           [legendSM, legendXL],
                                           ['SM', 'XL']):
    legend_order = list(reversed(list(voffset.keys())))
    legend_data = [legend_materials[_]['ult'] for _ in legend_order]+\
                  [legend_materials[_]['quick'] for _ in legend_order]
    ax.legend(legend_data, [_.get_label() for _ in legend_data], ncol=2, loc="upper right")
    if LIVE_PLOTTING:
        ax.set_title(f"Syr2k {size} Exhaustive Results")
    ax.set_xscale('log')
    ax.set_xlabel('Optimality Rank (lower is better)')
    ax.set_yscale('log')
    ax.set_ylabel('Runtime (lower is better)')
    used_xticks = ax.get_xticklabels()[2:-2]
    positions = [_.get_position()[0] for _ in used_xticks]
    texts = [_.get_text() for _ in used_xticks]
    ax.set_xticks(positions, ['0']+texts[1:])
    if not LIVE_PLOTTING:
        fig.savefig(f'syr2k_global_{size}.png',dpi=300)
if LIVE_PLOTTING:
    plt.show()

