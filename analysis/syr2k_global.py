import pandas as pd
import numpy as np
import matplotlib
import matplotlib.pyplot as plt

import pathlib

SM = pd.read_csv('collations/syr2k_all_SM.csv').sort_values(by=['objective']).reset_index(drop=True)
XL = pd.read_csv('collations/syr2k_all_XL.csv').sort_values(by=['objective'])[4:].reset_index(drop=True)

markers = {'quick': '+',
           'ultimate': 'd',
           }
colors = {'GC': 'red',
          'GPTune': 'purple',
          'BLISS': 'green',
          'OpenTuner': 'orange',
          }
CUTOFF = 100

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

def add_to_plot(csv, labeled_SM, labeled_XL, figSM, axSM, figXL, axXL):
    if ("SM" not in csv.name and "XL" not in csv.name) or "default" in csv.name:
        return labeled_SM, labeled_XL, figSM, axSM, figXL, axXL
    # Pick our axis
    if "SM" in csv.name:
        picked_data = SM
        # Initialize our axis as needed
        if figSM is None:
            figSM, axSM = plt.subplots()
            axSM.plot(range(len(picked_data)), picked_data['objective'])
        picked_fig = figSM
        picked_ax = axSM
        picked_labels = labeled_SM
    else:
        picked_data = XL
        # Initialize our axis as needed
        if figXL is None:
            figXL, axXL = plt.subplots()
            axXL.plot(range(len(picked_data)), picked_data['objective'].to_numpy())
        picked_fig = figXL
        picked_ax = axXL
        picked_labels = labeled_XL

    search = pd.read_csv(csv)
    if 'actually_measured' in search.columns:
        search_where = np.where(search['actually_measured'])[0]
        search = search.loc[search_where].reset_index(drop=True)
    if min(search['objective']) < 0:
        search['objective'] *= -1

    if 'GaussianCopula' in str(csv):
        kind = 'GC'
    elif 'GPTune' in str(csv):
        kind = 'GPTune'
    elif 'bliss' in str(csv):
        kind = 'BLISS'
    elif 'opentuner' in str(csv):
        kind = 'OpenTuner'
    quick = lookup(search.loc[:CUTOFF], picked_data, csv)
    ult = lookup(search, picked_data, csv)
    label = f"First {CUTOFF} {kind}" if (kind,'quick') not in picked_labels else None
    picked_labels.add((kind,'quick'))
    picked_ax.scatter(quick, picked_data.loc[quick,'objective'],
                      s=200, alpha=0.5, label=label,
                      c=colors[kind], marker=markers['quick'],
                      )
    label = f"Best {kind}" if (kind,'ultimate') not in picked_labels else None
    picked_labels.add((kind,'ultimate'))
    picked_ax.scatter(ult, picked_data.loc[ult,'objective'],
                      s=200, alpha=0.5, label=label,
                      c=colors[kind], marker=markers['ultimate'],
                      )

    return labeled_SM, labeled_XL, figSM, axSM, figXL, axXL

fig_SM, ax_SM = None, None
fig_XL, ax_XL = None, None
labeled_SM = set()
labeled_XL = set()

for original_search in sorted(pathlib.Path('rawsearches/syr2k').iterdir()):
    labeled_SM, labeled_XL, fig_SM, ax_SM, fig_XL, ax_XL = add_to_plot(original_search, labeled_SM, labeled_XL, fig_SM, ax_SM, fig_XL, ax_XL)

#for original_search in pathlib.Path('reordered_searches/syr2k').iterdir():
#    fig_SM, ax_SM, fig_XL, ax_XL = add_to_plot(original_search, fig_SM, ax_SM, fig_XL, ax_XL)

ax_SM.legend()
#ax_SM.set_title("Syr2k SM Exhaustive Results")
ax_SM.set_xscale('log')
ax_SM.set_xlabel('Optimality Rank (lower is better)')
ax_SM.set_yscale('log')
ax_SM.set_ylabel('Runtime (lower is better)')
ax_XL.legend()
#ax_XL.set_title("Syr2k XL Exhaustive Results")
ax_XL.set_xscale('log')
ax_XL.set_xlabel('Optimality Rank (lower is better)')
ax_XL.set_yscale('log')
ax_XL.set_ylabel('Runtime (lower is better)')
fig_SM.savefig('syr2k_global_SM.png',dpi=300)
fig_XL.savefig('syr2k_global_XL.png',dpi=300)
#plt.show()

