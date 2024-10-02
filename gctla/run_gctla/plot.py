import numpy as np, matplotlib.pyplot as plt
true = np.load('original_ranks.npy')
N_FEATURES = 100
gen  = np.load('generated_ranks.npy' if N_FEATURES is None else f"generated_from_{N_FEATURES}_features.npy")
import pdb
pdb.set_trace()
x = range(true.shape[0])
fig,ax = plt.subplots()
reorder = np.argsort(true)
ax.plot(x, true[reorder], label="True rank")
ax.scatter(x, gen[reorder], s=1, label="Generated rank", color='tab:orange')
ax.legend()
if N_FEATURES is not None:
    ax.set_title(f"{N_FEATURES} features")
ax.set_ylim([-10,100])
plt.show()

