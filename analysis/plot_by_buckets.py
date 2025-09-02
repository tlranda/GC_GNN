# Script for producing a confusion scatterplot based on ground truth vs predicted labels from a CSV
# To see runtime options, execute as: `python3 plot_by_buckets.py --help`
import argparse
import pathlib

import pdb

import numpy as np
import matplotlib
import matplotlib.pyplot as plt
import pandas as pd

def build():
    # Make nicer help menus via copy/pasting this string to show the default value
    defhelp = "(Default: %(default)s)"
    prs = argparse.ArgumentParser()
    # Files
    prs.add_argument("--bucket-csv", type=pathlib.Path, required=True)
    prs.add_argument("--save", default=None, type=pathlib.Path, help=f"Specify a file path to save image rather than immediately displaying it")
    # Behavioral controls
    prs.add_argument("--no-plot", action="store_true", help=f"Omit visual graph, text-only output {defhelp}")
    # Data handling controls
    prs.add_argument("--ground-truth-col", default="original", help=f"Column name where ground truth bucket is stored {defhelp}")
    prs.add_argument("--prediction-col", default="predicted", help=f"Column name where NN predicted bucket is stored {defhelp}")
    prs.add_argument("--short-title", action="store_true", help=f"Shorten the filename in the graph title {defhelp}")

    return prs

def parse(args=None, prs=None):
    # Fetch argument handler and use it, then clean up args as needed
    if prs is None:
        prs = build()
    if args is None:
        args = prs.parse_args()

    # Shorten the title or use the fully qualified name as decided by Pathlib
    if args.short_title:
        args.title = args.bucket_csv.name
    else:
        args.title = args.bucket_csv

    # NO CHECK: args.bucket_csv exists (FileNotFoundException on attempted load should be OK)
    # NO CHECK: args.save exists (overwrite OK by default, no warning either)
    # NO CHECK: columns are in CSV (data not loaded yet)

    return args

def main():
    args = parse()

    data = pd.read_csv(args.bucket_csv)
    try:
        ground_truth = data[args.ground_truth_col]
    except KeyError as ke:
        raise KeyError(f"No such column '{args.ground_truth_col}' in {args.bucket_csv}; available columns: {list(data.columns)}") from ke
    try:
        prediction   = data[args.prediction_col]
    except KeyError as ke:
        raise KeyError(f"No such column '{args.prediction_col}' in {args.bucket_csv}; available columns: {list(data.columns)}") from ke

    # Set plot with wide viewing angle as the figure should be wider than tall
    if not args.no_plot:
        fig, ax = plt.subplots(figsize=(12,5))

    # Plot per ground truth class
    classes = sorted(set(ground_truth))
    min_x = 0
    vline_segments = []
    for truth_class in classes:
        # Select indices corresponding to the current segment
        in_this_class = np.where(ground_truth == truth_class)[0]
        new_x = in_this_class.shape[0]
        # Accumulate each class progressively across x-axis
        if not args.no_plot:
            ax.scatter(range(min_x, min_x+new_x),
                       prediction.loc[in_this_class],
                       # Not setting a color == separate color per ground truth class
                       )
        # Count how often each class is predicted within this ground-truth set
        class_counts = [str(np.where(prediction.loc[in_this_class] == pred_class)[0].shape[0]) for pred_class in classes]
        # Text on the figure / output to console
        print(f"Ground truth class: {truth_class}")
        for pred_class, class_count in zip(classes, class_counts):
            if not args.no_plot:
                ax.text(min_x + (new_x//2), pred_class, class_count, va='bottom',ha='center')
            print(f"\tPredict class {pred_class} [{class_count} times]")
        min_x = min_x + new_x
        vline_segments.append(min_x)

    if not args.no_plot:
        # Fix y-axis ticks to match only the class labels
        ax.set_yticks(classes)
        ax.set_yticklabels(map(str,classes))
        # Fix x-axis ticks to match only the class labels (centered on the class segment)
        middle_offsets = [((vlb-vla)//2)+vla for (vla,vlb) in zip([0]+vline_segments, vline_segments)]
        ax.set_xticks(middle_offsets)
        ax.set_xticklabels(map(str,classes))
        # Set vlines between classes
        for vline_idx in vline_segments[:-1]:
            ax.vlines(vline_idx, 0, max(classes), color='k')
        ax.set_xlabel("Ground Truth Bucket")
        ax.set_ylabel("Predicted Bucket")
        ax.set_title(f"Ground Truth vs Prediction for {args.title}")
        plt.tight_layout()
        if not args.save:
            plt.show()
        else:
            fig.savefig(args.save, format=args.save.suffix[1:] or 'png', dpi=300)

if __name__ == "__main__":
    main()

