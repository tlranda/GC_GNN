import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import matplotlib.colors as mcolors
import seaborn as sns

# Data is hard-coded here, for this script all you'd have to do to replicate the dataset is filter down to only include data pertaining to the SM and XL sizes
# (Originally includes observations for S, M and L training sizes)
knn = pd.read_csv('knn_converted.csv')
# This makes a count of predicted-original occurrences so we can have x/y be the classes and heat/color be the occurrence count
# Predicted x Original makes the heatmap use original on x-axis, I do not know why that seems backwards to me
ct = contingency_table = pd.crosstab(knn['predicted'],knn['original'])

# Custom cmap to make sparse data easier to view and not get lost in 0's
cmap = plt.cm.plasma # plasma is a good basic heatmap to start with
colors = cmap(np.arange(cmap.N))
colors[0,-1] = 0 # Set alpha of first color (heat==0) to 0 for sparse data visibility
custom_cmap = mcolors.ListedColormap(colors)
bounds = np.linspace(ct.min().min(), ct.max().max(), cmap.N) # Set range of colors to range of observations
norm = mcolors.BoundaryNorm(bounds, cmap.N)

# Seaborn makes heatmaps very easy
ax = sns.heatmap(contingency_table, cmap=custom_cmap, norm=norm)
fig = ax.get_figure()
# Show intersections so it's possible to read the thing
ax.grid(True)
# Fix labels to be more representative
ax.set_xlabel("TRUE classification bucket")
ax.set_ylabel("Predicted classification bucket (knn)")
ax.set_title(f"Class prediction based on {len(knn)} results")
# I used show -> save in UI, you can use fig.savefig() if you want
plt.show()

