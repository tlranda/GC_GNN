import numpy as np, pandas as pd, matplotlib
import matplotlib.pyplot as plt
import argparse, json, os, re, ast

def build():
    prs = argparse.ArgumentParser(description="Parse and plot based on JSONs/CSVs from backwards_solve.py")
    io = prs.add_argument_group("File management")
    io.add_argument("--traces", nargs="+", default=None, required=True,
                    help="JSON-format traces of backwards solves (logs include CSV references, no need to indicate them)")
    io.add_argument("--output", default=None,
                    help="Save figure to file rather than immediately viewing (default: view without saving)")
    io.add_argument("--format", choices=['png','pdf','svg','jpeg'], default='png',
                    help="Format to save figures in (default: %(default)s)")
    plots = prs.add_argument_group("Plotting Arguments")
    plots.add_argument("--seeds", nargs="*", default=None,
                    help="Only include designated seeds in plots (default: all seeds)")
    plots.add_argument("--mean-area", action="store_true",
                    help="Plot a mean line and its stddev area rather than actual seed values (default %(default)s)")
    plots.add_argument("--title", default=None,
                    help="Set figure title (default: %(default)s)")
    return prs

def parse(args=None, prs=None):
    if prs is None:
        prs = build()
    if args is None:
        args = prs.parse_args()
    return args

def trace_load(fname):
    with open(fname,'r') as j:
        loaded = json.load(j)
    # Since the JSON is likely mis-ordered due to multiprocessing, re-order it by ids
    id_groups = dict()
    for msg in loaded:
        identifier = msg['id']
        if identifier in id_groups.keys():
            id_groups[identifier].append((msg['tag'],msg['message']))
        else:
            id_groups[identifier] = [(msg['tag'],msg['message'])]
    return id_groups

# Not robust enough to cover ANY ndarray, but good enough to parse integer ndarrays from their string format
def ndarray_from_string(s):
    substituted = re.sub(r"[ \t]{2,}"," ",re.sub(r"\n","",s))
    modified = ",".join(substituted.split(" "))
    # Sometimes this results in a leading comma (ie: [ 1 2 3 ] --> [,1,2,3])
    if len(modified) >= 3 and modified[1] == ',':
        modified = modified[0]+modified[2:]
    listed = ast.literal_eval(modified)
    return np.asarray(listed)

def make_transparent(color):
    return [_ for _ in matplotlib.colors.hex2color(color)]+[0.3]

def main(args=None):
    args = parse(args)
    loaded = []
    for fname in args.traces:
        loaded.append(trace_load(fname))
    for load in loaded:
        # Record zero for per-program data has fixed structure
        zero = load['0']
        metadata, workdir, input_load_len, learnable, model_scale, constraints, exit_n_data = zero[:]
        assert all((metadata[0] == 'ArgDict', workdir[0] == 'CWD', input_load_len[0] == 'Input_Load_Len', learnable[0] == 'Learnable_Columns', model_scale[0] == 'Model_Scale', constraints[0] == 'Model_Constraints', exit_n_data[0] == 'Exit_N_Data'))
        os.chdir(workdir[1])
        x_data = np.asarray(sorted([int(k) for k in load.keys() if k != '0']))
        # Permit lookups
        x_keys = [[tups[0] for tups in load[str(x)]] for x in x_data]
        # Use lookups
        autobudget = np.asarray([int(load[str(x)][keys.index('Autobudget_Evals')][1]) for (x,keys) in zip(x_data,x_keys)])
        autosuccess = np.atleast_2d([ndarray_from_string(load[str(x)][keys.index('FewShot_Success')][1]) for (x,keys) in zip(x_data,x_keys)])
        # Plot
        fig, ax = plt.subplots()
        ax.set_title(args.title)
        ax.set_xlabel("|training data| for GC fit")
        ax.set_ylabel("Budget Evals")
        ax2 = ax.twinx()
        ax2.set_ylabel("Proportion of Successful Evals")
        budget_line = ax.plot(x_data, autobudget, linewidth=1, linestyle='--', color='orangered', label="Budget")
        limit_line = ax.plot(x_data, [1/budget for budget in autobudget], linewidth=1, linestyle='--', color='k', label="Success")
        if args.mean_area:
            divided = autosuccess / np.broadcast_to(np.atleast_2d(autobudget).T, autosuccess.shape)
            mean = np.mean(divided, axis=1)
            stddev = np.std(divided, axis=1)
            center_line = ax2.plot(x_data, mean, label="Mean seed performance")
            area = ax2.fill_between(x_data, mean-stddev, mean+stddev, color=make_transparent(center_line[0].get_color()), label="Variance in seed performance")
        else:
            for (idx, seed) in enumerate(ast.literal_eval(metadata[1])['sample_seed']):
                if args.seeds is not None and str(seed) not in args.seeds:
                    continue
                y_data = autosuccess.take(indices=idx,axis=1).ravel()
                seed_line = ax2.plot(x_data, y_data/autobudget, label=f"Seed {seed}", linewidth=0.5)
                zero_heights = np.where(y_data == 0)[0]
                seed_dots = ax2.scatter(x_data[zero_heights], [0 for _ in zero_heights], s=2, marker='x', color=seed_line[0].get_color())
        ax2.set_ylim((0,None))
        if args.output is None:
            plt.show()
        else:
            fig.savefig(args.output, format=args.format, dpi=300)

if __name__ == '__main__':
    main()

