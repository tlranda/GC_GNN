"""
    OLD -- PROBABLY DO NOT USE
    Hard-coded script to demonstrate histogram of coarse-vs-fine grained bins
    back when we tried to figure out how many classes to predict and if those
    classes made sense to utilize
"""
import matplotlib.pyplot as plt
import seaborn as sns
import pandas as pd

data = pd.read_csv('GC_selections.csv')
# SM
fig,ax = plt.subplots()
sm_data = data[data['input'] == 130]['rank'].sort_values().reset_index(drop=True)
sns.histplot(data=sm_data,
             bins=[0,363,364,6574,6575,10133,10134,10648],
             fill=False,
             ax=ax,
             label='MGA-Bins')
sns.histplot(sm_data,
             fill=False,
             ax=ax,
             label='fine-grained')
ax.legend()
ax.set_xscale('log')
ax.set_title(f"{len(data[data['input'] == 130])} GC predictions for SM binned by MGA")

# XL
fig2,ax2 = plt.subplots()
xl_data = data[data['input'] == 2000]['rank'].sort_values().reset_index(drop=True)
sns.histplot(data=xl_data,
             bins=[0,26,27,428,429,751,752,10648],
             fill=False,
             ax=ax2,
             label='MGA-Bins')
sns.histplot(data=xl_data,
             fill=False,
             ax=ax2,
             label='fine-grained')
ax2.legend()
ax2.set_xscale('log')
ax2.set_title(f"{len(data[data['input'] == 2000])} GC predictions for XL binned by MGA")

# Plot
plt.show()

