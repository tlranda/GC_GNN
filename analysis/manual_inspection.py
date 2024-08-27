import pandas as pd, numpy as np
import pathlib
import warnings
import itertools
from scipy.stats import entropy
import matplotlib.pyplot as plt
from sdv.single_table import GaussianCopulaSynthesizer as GaussianCopula
from sdv.metadata import SingleTableMetadata
from sdv.sampling.tabular import Condition
from sdv.constraints import ScalarRange
import argparse

compare_cols = [f'p{_}' for _ in range(6)]+['input']
display_cols = [compare_cols[_] for _ in [0,1,2,3,4,5]]
lookup_ival = {20: ("N", "MINI"), 60: ("S", "SMALL"), 130: ("SM", "SM"), 200: ("M", "MEDIUM"),
               600: ("ML", "ML"), 1000: ("L", "LARGE"), 2000: ("XL", "EXTRALARGE"),
               3000: ("H", "HUGE"),}

def make_dist(value_dict, data):
    # Use value dictionary to get distribution histogram for this dataset
    breakdown = {}
    common_denom = len(data)
    for key in compare_cols:
        values = value_dict[key]
        keydata = list(data[key])
        breakdown[key] = [keydata.count(val) / common_denom for val in values]
    return breakdown

def add_input_column(df, name):
    inverted = dict((v[0],k) for (k,v) in lookup_ival.items())
    matches = [(k,v) for (k,v) in inverted.items() if k in name]
    # Longest substring should be the match we desire for the size
    match = matches[np.argmax([_ for _ in map(len,[_[0] for _ in matches])])][1]
    df.insert(len(df.columns), 'input', [match] * len(df))
    return df

def load_csv(name, drop_invalid=False, quantile=1.0, transform=None):
    data = pd.read_csv(name)
    data.insert(len(data.columns), 'source', [name]*len(data))
    data = data.sort_values(by=['objective']).reset_index(drop=True)
    # Quantile selection
    qlen = int(np.round(quantile * len(data), 0))
    data = data.iloc[0:qlen]
    # Transformation
    if transform is not None:
        data = transform(data, name)
    return data

def GC_SDV(source_dist, quantile, input_size):
    conditions = [Condition({'input': input_size},
                            num_rows=200)]
    constraints = [{'constraint_class': 'ScalarRange', # App scale limits
                        'constraint_parameters': {
                            'column_name': 'input',
                            'low_value': 20,
                            'high_value': 3000,
                            'strict_boundaries': False,
                        },
                   },
                  ]
    train_data = source_dist[compare_cols]
    metadata = SingleTableMetadata()
    metadata.detect_from_dataframe(train_data)
    warnings.simplefilter('ignore')
    model = GaussianCopula(metadata, enforce_min_max_values=False)
    model.add_constraints(constraints=constraints)
    model.fit(train_data)
    warnings.simplefilter('default')
    # Conditional sampling
    cond_samples = model.sample_from_conditions(conditions)
    return cond_samples, model

def build():
    prs = argparse.ArgumentParser()

    target = prs.add_argument_group('target')
    target_sizes = list(lookup_ival.keys())
    target.add_argument("--problem-class", "--app-size", type=int, default=60, choices=target_sizes,
                     help="Target application size to predict in Conditional Sampling (default: %(default)s)")

    transfer = prs.add_argument_group('transfer')
    transfer.add_argument("--comparison", required=True,
                     help="Data to use as ground truth for TL target")
    transfer.add_argument("--dataset", nargs="*", default=None, required=True,
                     help="Data to use to TRAIN transfer learning")
    transfer.add_argument("--drop", nargs="*", default=None,
                     help="Data to NOT include in transfer learning (anti-globbing) (default: always include all --comparison values)")
    transfer.add_argument("--fit-quantile", type=float, default=0.8,
                     help="Dataset filtered to top-quantile performance for GC fitting (default: %(default)s)")
    transfer.add_argument("--precomputed", default=None,
                     help="Data to use AS results from trained transfer learning (skip GC-fitting and conditional sampling in this runtime)")

    inspection = prs.add_argument_group("inspection")
    inspection.add_argument("--quantile", type=float, default=0.8,
                     help="Ground Truth quantile for TL to beat (default: %(default)s)")
    inspection.add_argument("--skip-immediate-display", action="store_true",
                     help="Skip interactive display (figures are always saved to disk) (default: %(default)s)")
    return prs

def parse(args=None, prs=None):
    if prs is None:
        prs = build()
    if args is None:
        args = prs.parse_args()
    # Set up dataset
    if args.drop is None:
        args.drop = []
    if args.comparison not in args.drop:
        args.drop.append(args.comparison)
    data = []
    for d in args.dataset:
        if d not in args.drop:
            data.append(d)
    args.dataset = data
    return args

def main(args=None):
    args = parse(args)
    # Load data
    ground_truth = load_csv(args.comparison)
    ground_truth = add_input_column(ground_truth, args.comparison)
    print(f"Loaded {len(ground_truth)} values for ground truth distribution (From: {args.comparison})")
    # Filter to what we'd like to see things look like
    best = ground_truth[ground_truth['objective'] >= ground_truth['objective'].quantile(args.quantile)]
    print(f"Selected {len(best)} values for best distribution (quantile = {args.quantile})")

    # Determine available values
    value_dict = {
                  'p0': ["#pragma clang loop(j2) pack array(A) allocate(malloc)", " "],
                  'p1': ["#pragma clang loop(i1) pack array(B) allocate(malloc)", " "],
                  'p2': ["#pragma clang loop(i1,j1,k1,i2,j2) interchange permutation(j1,k1,i1,j2,i2)", " "],
                  'p3': [4,8,16,20,32,50,64,80,96,100,128],
                  'p4': [4,8,16,20,32,50,64,80,100,128,2048],
                  'p5': [4,8,16,20,32,50,64,80,100,128,256],
                  'input': list(lookup_ival.keys()),
                 }

    source_dataset = []
    for fname in args.dataset:
        source_dataset.append(load_csv(fname, quantile=args.fit_quantile, transform=add_input_column))
    source_dataset = pd.concat(source_dataset).reset_index(drop=True)
    print(f"Loaded {len(args.dataset)} files and {len(source_dataset)} values for TL distribution")

    if args.precomputed is None:
        # Set up TL model
        sd = source_dataset.copy()
        sd[display_cols] = sd[display_cols].astype(str)
        cond_samples, model = GC_SDV(sd, args.fit_quantile, args.problem_class)
        cond_samples[['p3','p4','p5']] = cond_samples[['p3','p4','p5']].astype(int)
    else:
        cond_samples = load_csv(args.precomputed)
        if 'input' not in cond_samples:
            cond_samples = add_input_column(cond_samples, args.precomputed)
        print(f"Loaded precomputed file with {len(source_dataset)} values for TL distribution")

    # Make the comparable distributions
    true_dist = make_dist(value_dict, ground_truth)
    best_dist = make_dist(value_dict, best)
    tl_dist = make_dist(value_dict, source_dataset)
    cond_dist = make_dist(value_dict, cond_samples)

    # Prepare sub distributions for source data
    sub_dists = []
    source_names = []
    for (source_name, by_source) in source_dataset.groupby('source'):
        sub_dists.append(make_dist(value_dict, by_source))
        source_names.append(str(pathlib.Path(source_name).parent.stem))
    # Compare
    kl_div = np.zeros((len(display_cols), 4))
    for idx, col in enumerate(display_cols):
        for subidx, (name, a_dist, b_dist) in enumerate(zip(['TL vs Truth', 'TL vs Best', 'CS vs Truth', 'CS vs Best'],
                                                         [tl_dist, tl_dist, cond_dist, cond_dist],
                                                         [true_dist, best_dist, true_dist, best_dist])):
            kl_div[idx,subidx] = entropy(a_dist[col], b_dist[col])
            if not np.isfinite(kl_div[idx,subidx]):
                kl_div[idx,subidx] = entropy(b_dist[col], a_dist[col])
        td = np.asarray(true_dist[col])
        bs = np.asarray(best_dist[col])
        tld = np.asarray(tl_dist[col])
        csd = np.asarray(cond_dist[col])
        warnings.simplefilter('ignore')
        tld_truth_arr = np.asarray([_ for _ in td * np.log(td / tld) if np.isfinite(_)])
        csd_truth_arr = np.asarray([_ for _ in td * np.log(td / csd) if np.isfinite(_)])
        tld_best_arr = np.asarray([_ for _ in bs * np.log(bs / tld) if np.isfinite(_)])
        csd_best_arr = np.asarray([_ for _ in bs * np.log(bs / csd) if np.isfinite(_)])
        warnings.simplefilter('default')
        options = value_dict[col]
        print(col, "KL Div:\t", kl_div[idx])
        print("Options:\t",options)
        print("True Dist:\t", td, (td * len(ground_truth)).astype(int), sum((td * len(ground_truth)).astype(int)))
        print("Best Dist:\t", bs, (bs * len(best)).astype(int), sum((bs * len(best)).astype(int)))
        print("TL Data Dist:\t", tld, (tld * len(source_dataset)).astype(int), sum((tld * len(source_dataset)).astype(int)))
        print("Conditional Dist:\t", csd, (csd * len(cond_samples)).astype(int), sum((csd * len(cond_samples)).astype(int)))
        print("TL vs Truth Partial KL:\t", tld_truth_arr, tld_truth_arr.sum())
        print("CS vs Truth Partial KL:\t", csd_truth_arr, csd_truth_arr.sum())
        print("TL vs Best Partial KL:\t", tld_best_arr, tld_best_arr.sum())
        print("CS vs Best Partial KL:\t", csd_best_arr, csd_best_arr.sum())
        print()
        fig, ax = plt.subplots()
        ax.plot(np.arange(len(options)), td, label="True Dist", marker='.')
        ax.plot(np.arange(len(options)), bs, label="Best Dist", marker='+')
        ax.plot(np.arange(len(options)), tld, label="TL Dist", linestyle='--', marker='o')
        ax.plot(np.arange(len(options)), csd, label="CS Dist", linestyle='--', marker='*')
        ax.set_xticks(np.arange(len(options)))
        ax.set_xticklabels(options)
        ax.legend()
        ax.set_title(f"Distribution for {col} (TL Target: {args.problem_class} Syr2k)")
        fig.savefig(f"KL_Div_{col}.png", dpi=400)
        # Get Source attribution as stacked bar plot
        fig, ax = plt.subplots()
        heights = np.zeros((len(set(source_dataset['source'].values)), len(options)))
        for src_idx in range(len(sub_dists)):
            col_heights = np.asarray(sub_dists[src_idx][col])
            # Normalize and scale to TLD
            heights[src_idx] = ((col_heights/len(sub_dists)))*tld
        ticks = np.arange(len(options))
        for idx,name in enumerate(source_names):
            ax.bar(ticks, heights[idx],label=name,bottom=heights[:idx].sum(axis=0))
        ax.set_title(f"Source Contribution for {col} (Left out: {args.problem_class} Syr2k)")
        ax.set_xticks(ticks)
        ax.set_xticklabels(options)
        ax.legend()
        fig.savefig(f"Source_Dist_{col}.png", dpi=400)
        # Save memory
        if args.skip_immediate_display:
            plt.close(fig=fig)
    if not args.skip_immediate_display:
        plt.show()

if __name__ == '__main__':
    main()

