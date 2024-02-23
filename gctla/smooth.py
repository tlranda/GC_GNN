from copy import deepcopy as dcpy
import re
import pathlib
import subprocess
import shlex
# Module dependencies
import pandas as pd, numpy as np
from sklearn.ensemble import RandomForestRegressor
from sklearn.metrics import r2_score
from sklearn.model_selection import train_test_split
import matplotlib
import matplotlib.pyplot as plt

def load(oracle_data):
    print("Begin")
    # Load dataset
    #og_df = pd.read_csv(oracle_data).sort_values(by=["objective"]).reset_index(drop=True)
    og_df = pd.read_csv(oracle_data).sort_values(by=["p3","p4","p1","p2","p0","p5"]).reset_index(drop=True)
    # Columns we're working with
    target_cols = [_ for _ in og_df.columns if re.match(r"p[0-9]+", _) is not None]
    print("Data loaded")
    diff_df = dcpy(og_df)
    # Values (as string for matching)
    values_per_column = dict((col, [str(_) for _ in sorted(set(diff_df[col].values))]) for col in target_cols)
    diff_df = diff_df.astype(str)
    print("Values identified")
    return diff_df, values_per_column, target_cols

def freqs_and_mean(optimal_cutoff, diff_df, values_per_column, target_cols):
    # Ideal zone selection
    cutoff_idx = diff_df.index[:int(round(len(diff_df)*0.1,0))]
    # Identify characteristics of ideal zone
    freqs = dict((k, [diff_df.loc[cutoff_idx, k].to_list().count(vv)/len(cutoff_idx) for vv in v]) for (k,v) in values_per_column.items())
    # Pick starting point for mean representation
    mean_repr = [dict((k, values_per_column[k][np.argmax(freqs[k])]) for k in target_cols)]
    print("Frequencies for optimal mean detected")
    return freqs, mean_repr, cutoff_idx

def random_forest_importance(test_size, random_state, diff_df, values_per_column, target_cols):
    # Use RF to identify importance of each column
    # SKL only operates on floats, so do conversion first
    print("Prepare float-df for RandomForest importance")
    float_df = dcpy(diff_df[target_cols + ['objective']])
    for col in target_cols:
        n_vals = len(values_per_column[col])-1 # minus one so range is [0,1] inclusive rather than [0,1) exclusive
        new_vals = [values_per_column[col].index(_)/n_vals for _ in float_df[col].values]
        float_df.loc[float_df.index, col] = new_vals
    regressor = RandomForestRegressor()
    X_train, X_test, Y_train, Y_test = train_test_split(float_df[target_cols], float_df['objective'], test_size=test_size, random_state=random_state)
    print("Fit and evaluate RandomForest")
    regressor.fit(X_train, Y_train)
    predictions = regressor.predict(float_df[target_cols])
    r2 = r2_score(float_df['objective'], predictions)
    print(f"R2 score for RandomForest: {r2}")
    rf_importance = regressor.feature_importances_ # Actual importance values
    skl_order = rf_importance.argsort() # Least-to-Most important
    print(f"Feature importance: {' '.join([target_cols[s] for s in skl_order])}")
    return skl_order

def fill_mask(blank_mask, data, values_per_column, target_cols):
    new_mask = dcpy(blank_mask)
    if type(data) is pd.Series:
        data = [data]
    for entry in data:
        for x, col in enumerate(target_cols):
            subset = entry[col]
            if type(subset) is not str:
                for val in subset:
                    lookup_idx = values_per_column[col].index(val)
                    new_mask[x,lookup_idx] = True
            else:
                lookup_idx = values_per_column[col].index(subset)
                new_mask[x,lookup_idx] = True
    return new_mask

def match_mask(mask, all_masks):
    # 3D array logical and with contents of 1D array on final axis
    n_matches_per_mask = np.logical_and(all_masks, mask).sum(axis=(2,1))
    # Return complete matches
    return np.where(n_matches_per_mask == mask.shape[0])[0]

"""
Smoothness = as you open up towards uniform space, you should introduce _minimal_ skipping in your out-of-order matches
ie: for an objective such as the one below
  |                ST|
  |               R  |
o |              Q   |
b |              P   |
j |              O   |
e |             N    |
c |            M     |
t |          KL      |
i |         J        |
v |         I        |
e |      FGH         |
  |   CDE            |
  | AB               |
  L__________________|
     perfect order

assuming you start at 'A', the smallest variations in each parameter value from 'A's setting should keep you in the neighborhood
of low-alphabet letters (B,C,D,E,F,G,H, for example), with the least-significant variations being closest to A and the most significant being further.

However, if small alterations push the configuration to something later in the alphabet (O,P,Q,R,S,T, for example), this means that remaining optimal
requires a lot of very nuanced precision and tiny turbulence can knock you from being 'near-to-optimal' to 'very poor', which is adversarial to the
assumptions of the Gaussian Copula model
"""
def prep_masks(diff_df, values_per_column, target_cols, mean_repr):
    print("Begin smoothness analysis")
    # Create a boolean mask representing one bit for 'on' per value a variable can take
    # For ease of numpy operations, the 2d shape is set by the longest-description variable
    blank_mask = np.zeros((len(target_cols), max([len(li) for li in values_per_column.values()])), dtype=bool)
    initial_mask = fill_mask(blank_mask, mean_repr, values_per_column, target_cols)
    print("Precompute all masks")
    # Save us time calculating masks by precomputing them all once
    all_masks = np.asarray([fill_mask(blank_mask, row, values_per_column, target_cols) for (idx, row) in diff_df.iterrows()])
    return blank_mask, initial_mask, all_masks

def jitter(mask, values_per_column, target_cols, skl_order, inplace=True):
    # Find out how many 'true' values are in each variable
    true_counts = mask.sum(axis=1)
    # Only consider variables that aren't 100% true right now
    ok_to_jitter = [_ for _ in range(len(true_counts)) if true_counts[_] < len(values_per_column[target_cols[_]])]
    # Increment each variable once before re-cycling through it
    not_iterated_yet = [_ for _ in ok_to_jitter if true_counts[_] == min(true_counts[ok_to_jitter])]
    # Pick lowest importance variable after considering all of the above
    best_to_jitter = [_ for _ in skl_order if _ in not_iterated_yet][0]
    mask_range = len(values_per_column[target_cols[best_to_jitter]])
    sub_mask = mask[best_to_jitter][:mask_range]
    # Find leftmost 'True' value
    ltrue = np.argmax(sub_mask)
    # Find rightmost 'True' value
    rtrue = len(sub_mask)-np.argmax(sub_mask[::-1])
    if inplace:
        rmask = mask
    else:
        rmask = dcpy(mask)
    if ltrue == 0:
        # Must step right
        rmask[best_to_jitter,rtrue] = True
    elif rtrue == len(sub_mask):
        # Must step left
        rmask[best_to_jitter,ltrue-1] = True
    elif ((rtrue-ltrue) % 2) == 1:
        # Prefer odd steps to start going right as an arbitrary choice
        rmask[best_to_jitter,rtrue] = True
    else:
        rmask[best_to_jitter,ltrue-1] = True
    return rmask

"""
What is the significance of smoothness based on distance?

FACT: The minimum distance is dependent on the length of the list and how many entries are added each iteration,
and due to how the masking operation works, the number of entries added each iteration is >= previous iteration
ERGO: The minimum distance for any pair on any iteration is possibly 1, but your maximum minimum distance for all pairs
MUST inevitably be >1

Non-Mathematically Rigorous, but Sufficient Proof: Logic similar to Pidegonhole Principle

The minimum possible smoothness for an arbitrary comparison is 1 (right beside an old entry), but in the long run this
won't be possible for every entry:
iteration 1: new [5] old []
iteration 2: new [4] old [5], dist [1]
iteration 3: new [3,6] old [4,5], dist [1,1]
iteration 4: new [1,2,7,8] old [3,4,5,6], dist [2,1,1,2] !! some distances >1 !!

In this example, in order to reduce the >1 distances in iteration 4, we MUST increase the distance of some earlier pairing in
an earlier iteration, which means we get >1 distances at another point (resolvable, but only temporarily!)
We can choose any starting point we like (not just [5]), but as long as the size of the new entries list is >= previous iteration's list,
you have to prepare spaces with >1 distance to maintain ==1 distance on a given iteration.

Given an old list X with entries [x0,x1,x2,...,xn] and |Y| new entries in list Y, the minimum possible distance for any Y is logically:
1 for each entry in Y that could possibly fall beside an entry in X (ie: min(X) > 0 || max(X) < |indices| || min(gap_between_entries(X)) >= 1)
    That last one seems tricky, but it is equal to the # of 1+ length gaps between entries in X
2 for each remaining entry in Y (similar bounds: min(X) > 1 || max(X) < |indices|-1 || min(gap_between_entries(X)) >= 2)
... and so on

Because of this, we make the "capacity of X" equal to this trend, extrapolated
"""
def capacity(used_indices, lower, upper):
    avail_dict = dict()
    # Unspoken for indices we may fill
    remaining_to_cover = (upper-lower) - len(used_indices)
    current_length = 1
    used_min = min(used_indices)
    used_max = max(used_indices)
    # Identify gaps between indices
    gap_sizes = [b-a for (a,b) in zip(used_indices, used_indices[1:])]
    while remaining_to_cover > 0:
        # Boundary fills
        if used_min-current_length >= lower:
            remaining_to_cover -= 1
            if current_length in avail_dict.keys():
                avail_dict[current_length] += 1
            else:
                avail_dict[current_length] = 1
        if used_max+current_length < upper:
            remaining_to_cover -= 1
            if current_length in avail_dict.keys():
                avail_dict[current_length] += 1
            else:
                avail_dict[current_length] = 1
        # Gap fills
        for gap in gap_sizes:
            if gap >= current_length:
                remaining_to_cover -= 1
                if current_length in avail_dict.keys():
                    avail_dict[current_length] += 1
                else:
                    avail_dict[current_length] = 1
        # Measure longer gap next iteration
        current_length += 1
    return avail_dict

def get_idxes_and_jitter(mask, all_masks, values_per_column, target_cols, skl_order, iter_n, max_iter):
    idx = match_mask(mask, all_masks)
    try:
        jitter(mask, values_per_column, target_cols, skl_order, inplace=True)
    except IndexError:
        pass
    iter_n += 1
    return idx, iter_n

def save_iter_figure(diff_df, jitter_idx, new_jitter_idx, iteration):
    sel_fig, sel_ax = plt.subplots()
    sel_ax.plot(range(len(diff_df)), sorted(diff_df['objective']), marker=None, linewidth=0.5)
    sel_ax.scatter(jitter_idx, diff_df.loc[jitter_idx,'objective'], s=2, color=(0.6,0,0,0.2))
    sel_ax.scatter(new_jitter_idx.ravel(), diff_df.loc[new_jitter_idx.ravel(),'objective'], s=4)
    sel_ax.get_yaxis().set_visible(False)
    sel_fig.savefig(f"Selection_Iteration_{iteration}.png", format='png', dpi=100)
    matplotlib.pyplot.close(sel_fig)
    del sel_fig, sel_ax

def measure_smoothness(new_jitter_idx, last_jitter_idx, diff_df, smooth_mean, smooth_std, iteration):
    # Measure smoothness as least-displacement from previous data
    reshaped = np.broadcast_to(new_jitter_idx, (len(new_jitter_idx), len(last_jitter_idx)))
    dist = np.abs(reshaped - last_jitter_idx)
    min_dist = dist[range(len(new_jitter_idx)),np.argmin(dist,axis=1)]
    print(f"Smoothness of new entries: {np.mean(min_dist)} mean, {np.std(min_dist)} stddev")
    avail_capacity = capacity(last_jitter_idx, 0, len(diff_df))
    best_smoothness = []
    length_accounted = 0
    to_account = new_jitter_idx.shape[0]
    capacity_index = 0 # Pre-increment to make continue work more smoothly
    while length_accounted < to_account:
        capacity_index += 1
        try:
            accounted = min(to_account-length_accounted, avail_capacity[capacity_index])
        except KeyError:
            continue
        best_smoothness += [capacity_index] * accounted
        length_accounted += accounted
    best_smoothness = np.asarray(best_smoothness)
    print(f"Best possible smoothness: {np.mean(best_smoothness)} mean, {np.std(best_smoothness)} stddev")
    smooth_mean[iteration] = np.mean(min_dist)
    smooth_std[iteration] = np.std(min_dist)
    return min_dist

def smoothness_plot(smooth_mean, smooth_std):
    smoothness_fig, smoothness_ax = plt.subplots()
    line = smoothness_ax.plot(range(len(smooth_mean)), smooth_mean)
    off_color = [_ for _ in matplotlib.colors.to_rgba(line[0].get_color())]
    if len(off_color) == 4:
        off_color[3] = 0.2
    else:
        off_color.append(0.2)
    smoothness_ax.fill_between(range(len(smooth_mean)), smooth_mean-smooth_std, smooth_mean+smooth_std, color=off_color)
    smoothness_ax.set_yscale('log')
    smoothness_fig.savefig("Smoothness.png", format='png', dpi=100)

def make_gif():
    gif_frames = []
    for path in pathlib.Path('.').iterdir():
        if (groups := re.match(r"Selection_Iteration_([0-9]+).png", path.name)) is not None:
            gif_frames.append(path.name)
    print(gif_frames)
    gif_frames = sorted(gif_frames, key=lambda x: int(re.match(r"Selection_Iteration_([0-9]+).png", x).groups(0)[0]))
    print(gif_frames)
    subprocess.run(shlex.split(f"convert -delay 1 -loop 0 {' '.join(gif_frames)} Selections.gif"))

def main():
    oracle_data = "oracles/SM/all_SM.csv"
    diff_df, values_per_column, target_cols = load(oracle_data)

    optimal_cutoff = 0.1
    freqs, mean_repr, cutoff_idx = freqs_and_mean(optimal_cutoff, diff_df, values_per_column, target_cols)

    test_size = 0.2
    random_state = 42
    skl_order = random_forest_importance(test_size, random_state, diff_df, values_per_column, target_cols)

    blank_mask, iter_mask, all_masks = prep_masks(diff_df, values_per_column, target_cols, mean_repr)

    # Measure smoothness as you broaden out
    last_jitter, last_jitter_idx = [], []
    iteration = 0
    iteration_limit = np.sum([len(_) for _ in values_per_column.values()]) - len(target_cols) + 1
    smooth_mean, smooth_std = np.zeros(iteration_limit), np.zeros(iteration_limit)
    while iteration < iteration_limit:
        print(f"Iteration {iteration} uses mask {iter_mask.sum(axis=1)}")
        # These come pre-sorted, but may fill gaps in previous array
        jitter_idx = match_mask(iter_mask, all_masks)
        new_jitter_idx = np.asarray([_ for _ in jitter_idx if _ not in last_jitter_idx]).reshape((-1,1))
        print(f"Found {new_jitter_idx.shape[0]} new values")
        save_iter_figure(diff_df, jitter_idx, new_jitter_idx, iteration)

        if iteration > 0:
            min_dist = measure_smoothness(new_jitter_idx, last_jitter_idx, diff_df, smooth_mean, smooth_std, iteration)
            # Continuously add to records
            last_jitter.extend([_ for _ in min_dist])
        last_jitter_idx = jitter_idx
        print(f"Continual smoothness: {np.mean(last_jitter)} mean, {np.std(last_jitter)} stddev")
        # ID how many are in range of optimal cutoff
        optimal_ranged = [_ for _ in new_jitter_idx.T[0] if _ in cutoff_idx]
        all_optimal_ranged = [_ for _ in last_jitter_idx if _ in cutoff_idx]
        print(f"{len(optimal_ranged)} / {len(new_jitter_idx)} ({100*len(optimal_ranged)/len(new_jitter_idx)}%) new values are optimal (top-{optimal_cutoff})")
        print(f"{len(all_optimal_ranged)} / {len(last_jitter_idx)} ({100*len(all_optimal_ranged)/len(last_jitter_idx)}%) total values are optimal (top-{optimal_cutoff})")

        # Loop condition
        jitter_idx, iteration = get_idxes_and_jitter(iter_mask, all_masks, values_per_column, target_cols, skl_order, iteration, iteration_limit)
    smoothness_plot(smooth_mean, smooth_std)

    # Make the gif
    make_gif()

if __name__ == '__main__':
    main()

