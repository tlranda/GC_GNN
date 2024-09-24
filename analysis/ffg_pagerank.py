# Builtin
import argparse
import itertools
import multiprocessing
import pathlib

# Dependencies
import numpy as np
import networkx as nx
import pandas as pd
import tqdm

def build():
    d = "(default: %(default)s)"
    prs = argparse.ArgumentParser()
    prs.add_argument("--target-size", dest='tgt_size', choices=['SM','XL'],
                     default='SM', help=f"Target size to evaluate against {d}")
    prs.add_argument("--thresholds", nargs="+", type=float, default=None,
                     required=True, help="Proportion of accepted minima to evaluate")
    return prs

def parse(args=None, prs=None):
    if prs is None:
        prs = build()
    if args is None:
        args = prs.parse_args()
    return args

# Load all observations and define a lookup for the objective based on parameterization
def load_data(args):
    base_path = pathlib.Path(__file__).parents[1] / 'syr2k_data'
    # Accumulate all data
    data = None
    for src_size in ['S','M','L']:
        src = (base_path / 'syr2k_reference').joinpath(f"syr2k_{src_size}.csv")
        csv = pd.read_csv(src)
        # Add the size key
        csv.insert(0,'size',[src_size] * len(csv))
        # Re-sort for objective lookups
        csv = csv.sort_values(by=['objective']).reset_index(drop=True)
        if data is None:
            data = csv
        else:
            data = pd.concat((data,csv))
    # Fetch target data
    tgt = (base_path / 'oracles').joinpath(args.tgt_size).joinpath(f"all_{args.tgt_size}.csv")
    csv = pd.read_csv(tgt)
    # Add the size key
    csv.insert(0,'size',[args.tgt_size] * len(csv))
    # Re-sort for objective lookups
    csv = csv.sort_values(by=['objective']).reset_index(drop=True)
    data = pd.concat((data,csv))
    # Single index over all data so indexing can be unique but sorted rank still accessible
    data = data.reset_index(names="rank_within_size")
    return data

def rank(query):
    global all_data, nr_vars
    select = (all_data == query).sum(1)
    matched = np.where(select == nr_vars)[0]
    return matched[0]

def make_neighbors_for_idx(args):
    idx, row, all_data, searchspace, indices = args
    neighbors_set = set()

    # Round-robin leave-one-out parameter masking
    for leftout_param in searchspace.keys():
        neighbors_arr = None
        for param in searchspace.keys():
            if param == leftout_param:
                # This parameter can be ANY other value
                continue
            # All other parameters must exactly match all values (set intersection)
            candidates = indices[param][row[param]]
            # Fitness Flow Graph: not a neighbor unless the objective improves;
            # we modify this to NOT be required when changing problem sizes
            if leftout_param != 'size':
                improving_obj = (all_data.loc[candidates,'objective'] < row['objective']).to_numpy()
                candidates = candidates[improving_obj]
            if neighbors_arr is None:
                neighbors_arr = candidates
            else:
                neighbors_arr = neighbors_arr[np.isin(neighbors_arr,
                                                      candidates,
                                                      assume_unique=True)]
        # Update neighbors, kept as a set for 'in' operation speed later, as
        # neighbors_arr should be unique each iteration for the same idx as the
        # leftout parameter dictates formerly constant value changed and all
        # formerly varied values deviated
        neighbors_set.update(neighbors_arr)
    # We should have identified ourselves as a neighbor of ourselves -- but we
    # don't want to consider that as an edge so delete it
    neighbors_set.remove(idx)
    return idx, neighbors_set

def make_neighbors(searchspace, all_data):
    """
    Bloopy assigns node ID's based on order of parameters/bitstrings, which
    helps with neighbor searching. But their definition of neighbor doesn't
    quite align with what I need.

    Instead, we consider two nodes to be neighbors when a single parameter
    edit makes them identical. This ensures ONLY direct copies between
    problem sizes are mapped and that the shortest path from source to sink
    has length >= nr_vars (Fitness Flow may require sub-optimal steps to
    prevent fitness value from approaching optimal too quickly thereby
    trapping traversal within a local minima)
    """

    # Precompute masks to speed up neighbor calculation
    # bsize = # indices to store, each mask requires at least 1 bit per entry
    # in all_data (generously assume 1 byte because of Python overheads)
    indices = dict()
    for (param, param_values) in searchspace.items():
        indices[param] = dict()
        for value in param_values:
            indices[param][value] = all_data.loc[all_data[param] == value].index.to_numpy()
    # Since this is a function-local variable, we can GC it when this function
    # returns and Cpython should prevent us from having to lug it around

    neighbors = dict()
    # Prepare for multiprocessing since this embarassingly parallel workload
    # takes a while otherwise
    args = [(idx,row,all_data,searchspace,indices) for (idx,row) in all_data.iterrows()]
    with multiprocessing.Pool() as pool:
        results = list(tqdm.tqdm(pool.imap(make_neighbors_for_idx, args), total=len(args)))
    # Build neighbors dictionary from the results
    for idx, neighbor_set in results:
        neighbors[idx] = neighbor_set
    """
    for (idx, row) in tqdm.tqdm(all_data.iterrows(), total=len(all_data)):
        neighbors[idx] = set()
        for leftout_param in searchspace.keys():
            neighbors_arr = None
            for param in searchspace.keys():
                if param == leftout_param:
                    continue
                candidates = indices[param][row[param]]
                if leftout_param != 'size':
                    improving_obj = (all_data.loc[candidates,'objective'] < row['objective']).to_numpy()
                    candidates = candidates[improving_obj]
                if neighbors_arr is None:
                    neighbors_arr = candidates
                else:
                    neighbors_arr = neighbors_arr[np.isin(neighbors_arr,
                                                          candidates,
                                                          assume_unique=True)]
            neighbors[idx].update(neighbors_arr)
        neighbors[idx].remove(idx)
    """
    return neighbors
    # nidxs_dict = dictionary mapping a tuple of bitstring to node_idx (0->#nodes) and fitness value, essentially decides what node IDs to use
    # Uses itertools.product(*list_params(list_indices_for_param_values)) as ordering for node ID's in case that order matters

    # Use bloopy analysis critical points to get saddles, minima, maxima, regular points
    # same iteration order as node IDs previously
    # used a bounded neighbors perdim, ie: without wraparound, if you can step once left or right on a single dimension, that config is considered a neighbor
    """
    Setting this exactly the same would mean that the only connection from a source point is its exact match in the target space (assuming we order target spaces to be adjacent, which isn't possible in 1D)
    'circular' would include wraparound
    'hamming' includes ALL 1-edit deviations
    """
    # Searches neighbors of the point to find how many have larger objectives (bloopy is objective maximizer, we can write as minimize)
    # also counts number of dims is minimal += 1 when finding at all neighbors are larger
    # If the source point and any of its neighbors are infinite, marks source as Regular and ceases neighbor search on the source (will be symmetric for the other neighbors)
    # After checking all neighbors, classifies this point as regular (condition described above regarding infinites), local maximum if no objective better than it, local minima if smallest in all neighbors, else saddle
    # Does this for all points and all of their neighbors and returns a mapping of parameterization --> (class, fitness, nodeID)
    # Separately remaps this to nodeID --> (parameterization, fitness, class)


def main(args):
    # Defines the search space and a few values bsaed on its size and perplexity
    searchspace = {
     'p0': [' ','#pragma clang loop(j2) pack array(A) allocate(malloc)'],
     'p1': [' ','#pragma clang loop(i1) pack array(B) allocate(malloc)'],
     'p2': [' ','#pragma clang loop(i1,j1,k1,i2,j2) interchange permutation(j1,k1,i1,j2,i2)'],
     'p3': [4,8,16,20,32,50,64,80,96,100,128],
     'p4': [4,8,16,20,32,50,64,80,100,128,2048],
     'p5': [4,8,16,20,32,50,64,80,100,128,256],
     'size': ['S','SM','M','L','XL'],
    } # |p#'s| = 2,2,2,11,11,11,5
    param_cols = list(searchspace.keys())
    bsize = sum(map(len,searchspace.values()))   # 44
    nr_vars = len(param_cols)                    # 7

    all_data = load_data(args)

    """
    # disc_space = literally the same thing but in bloopy
    # Determine how bitstrings will work
    bitstring_index = 0
    boundary_list = [] # List of bitstring indices as inclusive tuples
    for param in searchspace.values():
        boundary_list.append((bitstring_index, bitstring_index+(len(param)-1)))
        bitstring_index += len(param)
    [(0,1),(2,3),(4,5),(6,16),(17,27),(28,38),(39,43)]
    """

    # Look up the global optimum
    glob_argmin = all_data.loc[(all_data['size'] == args.tgt_size) &
                               (all_data['rank_within_size'] == 0)].index[0]
    glob_fit = all_data.loc[glob_argmin,'objective']

    # Decide on neighbors based on similarity AND improving objective
    # These are ALL of the edges for our graph
    neighbors = make_neighbors(searchspace, all_data)

    # Build the graph
    G = nx.DiGraph()
    G.add_nodes_from(range(len(all_data)))
    for src, tgt_list in neighbors.items():
        G.add_edges_from([(src,tgt) for tgt in tgt_list])

    # Get centrality for the graph
    centrality_dict = nx.algorithms.link_analysis.pagerank_alg.pagerank(G)
    # Assumes .values() will order based on .keys() order being 0->max index
    abs_centrality = np.abs(np.asarray(list(centrality_dict.values())))
    # Evaluate the centrality of the global optimum
    global_centrality = centrality_dict[glob_argmin]
    print(f"Global Centrality: {global_centrality}")

    # Get global centrality for acceptable thresholds
    total_centrality = abs_centrality.sum()
    print(f"Total graph centrality = {total_centrality}")
    for threshold in args.thresholds:
        target_objective = glob_fit * (1+threshold)
        acceptable_minima = all_data[all_data['objective'] <= target_objective].index.to_numpy()

        acceptable_centrality = abs_centrality[acceptable_minima].sum()
        print(f"For threshold {threshold}, acceptable centrality = {acceptable_centrality}")

if __name__ == '__main__':
    main(parse())
