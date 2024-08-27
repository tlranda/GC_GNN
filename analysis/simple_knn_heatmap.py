import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import matplotlib.colors as mcolors
import seaborn as sns

# Data is hard-coded here, for this script all you'd have to do to replicate
# the dataset is filter down to only include data pertaining to the SM and XL
# input sizes (Originally includes observations for S, M and L training sizes)
knn = pd.read_csv('knn_converted.csv')
# This makes a count of predicted-original occurrences so we can have x/y be
# the classes and heat/color be the occurrence count.
# Predicted x Original makes the heatmap use Original on x-axis, I do not know
# why--that seems backwards to me
ct = contingency_table = pd.crosstab(knn['predicted'],knn['original'])

# Custom cmap to make sparse data easier to view and not get lost in 0's
cmap = plt.cm.plasma # plasma is a good basic heatmap to start with
colors = cmap(np.arange(cmap.N))
colors[0,-1] = 0 # 0 out first color (heat==0) for sparse data visibility
custom_cmap = mcolors.ListedColormap(colors)
bmin, bmax = ct.min().min(), ct.max().max() # Extent of heat values
#bounds = np.linspace(bmin, bmax, cmap.N) # Set range of colors to range of observations
bounds = np.hstack(([0],np.logspace(0,np.log10(bmax),cmap.N))) # Use log scale for better differentiation
norm = mcolors.BoundaryNorm(bounds, cmap.N)

# Seaborn bootstraps heatmaps with minimal effort
ax = sns.heatmap(contingency_table, cmap=custom_cmap, norm=norm)
fig = ax.get_figure()
# Add perfect correlation line -- but the labels might not match so we have to
# re-index based on labels
xs = ax.get_xticks()
ys = ax.get_yticks()[::-1]
xlabels = np.asarray([t._text for t in ax.get_xticklabels()])
ylabels = np.asarray([t._text for t in ax.get_yticklabels()])
if len(xlabels) > len(ylabels):
    subset = [idx for idx, x in enumerate(xlabels) if x in ylabels]
    xlabels = xlabels[subset]
    xs = xs[subset]
elif len(ylabels) > len(xlabels):
    subset = [idx for idx, y in enumerate(ylabels) if y in xlabels]
    ylabels = ylabels[subset]
    ys = ys[subset]
ax.plot(xs, ys[::-1], color='r') # Reverse ys due to tick order for axes spines

# Update colorbar legend to ensure the min/max value is present
cbar = ax.collections[0].colorbar
n_ticks = len(cbar.get_ticks())
cbar_ticks = np.round(np.hstack(([0],
                                 np.logspace(0,np.log10(bmax),n_ticks+1)[1:]))
                      ).astype(int)
cbar.set_ticks(cbar_ticks)
cbar.set_ticklabels([str(tick) for tick in cbar_ticks])

# Show intersections so it's possible to read the thing
ax.grid(True)
# Fix labels to be more representative
ax.set_xlabel("TRUE classification bucket")
ax.set_ylabel("Predicted classification bucket (knn)")
ax.set_title(f"Class prediction based on {len(knn)} results")
# I used show -> save in UI, you can use fig.savefig() if you want
plt.show()

