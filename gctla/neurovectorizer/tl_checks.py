import numpy as np
import pandas as pd
import scipy
import sklearn
# Builtin modules
import argparse
import warnings

# Key of RQ identifier (expect X.Y)
# Value is a tuple of (RQ name:STR,explanation:STR,requires_exhaustive:BOOL)
rqs_dict = {
    "1.1":
        ("Source->Target response variable has proportional shift",
         "Passing this test supports ability to utilize linear transfer",
         False),
    "1.2":
        ("Source->Target performance distributions are similar",
         "Passing this test supports ability to utilize NON-linear transfer",
         False),
    "1.3":
        ("Source->Target performance rankings are similar",
         "Passing this test supports ability to utilize NON-linear transfer",
         False),
    "1.4":
        ("The top-most and bottom-most configurations are similar between source and target",
         "Passing this test supports ability to prune search based upon known performance outliers",
         True),
    "2.1":
        ("Influential options remain consistent",
         "Passing this test supports ability to prune search to a subset of most influential options",
         False),
    "2.2":
        ("Importance of options remains consistent",
         "Passing this test supports ability to utilize ML / NON-linear transfer",
         False),
    "3.1":
        ("Interactions between configuration options are preserved from Source->Target",
         "Passing this test supports trimming search space to exclude less-important options",
         True),
    "3.2":
        ("Effects of interacting options remain similar",
         "Passing this test supports prioritizing regions that are important in the Source for Target tuning",
         True),
    "4.1":
        ("Percentage of invalid configurations are similar and considerable in Source and Target",
         "Passing this test supports attempting to predict invalid configurations based on Source",
         True),
    "4.2":
        ("Classifier for distinguishing valid/invalid configurations is reusable across environments",
         "Passing this test supports incorporating the Source classifier in Target tuning",
         True),
}
rq_attrnames = dict((k,f"rq{k.split('.')[0]}_{k.split('.')[1]}") for k in rqs_dict.keys())

def build():
    prs = argparse.ArgumentParser()
    files = prs.add_argument_group("Files")
    files.add_argument("--source", nargs='+', required=True,
                       help="Files to load for processing as source")
    files.add_argument("--target", nargs="+", required=True,
                       help="Files to load for processing as target")
    files.add_argument("--perf-column", default="FLOPS",
                       help="Column to treat as objective values (default: %(default)s)")
    files.add_argument("--drop-column", default=None, nargs="*",
                       help="Columns to drop (non-objective and non-parameter) (default: %(default)s)")
    files.add_argument("--exhaustive", action="store_true",
                       help="Indicate that EACH loaded file is exhaustive data (default: %(default)s)")
    files.add_argument("--filter-non-exhaustive", action="store_true",
                       help="Filter source and target data to largest matching subset of values (default: %(default)s)")
    hyps = prs.add_argument_group("Hypotheses")
    hyps.add_argument("--hyp1", action="store_true",
                     help="Enable all research questions under hypothesis 1: Performance Behavior Consistency (default: %(default)s)")
    hyps.add_argument("--hyp2", action="store_true",
                     help="Enable all research questions under hypothesis 2: Similarity of Influential Options (default: %(default)s)")
    hyps.add_argument("--hyp3", action="store_true",
                     help="Enable all research questions under hypothesis 3: Preservation of Option Interactions (default: %(default)s)")
    hyps.add_argument("--hyp4", action="store_true",
                     help="Enable all research questions under hypothesis 4: Invalid Configuration Similarity (default: %(default)s)")
    rqs = prs.add_argument_group("Research Questions")
    for rq_identifier, rq_info in rqs_dict.items():
        arg_key = "--"+rq_attrnames[rq_identifier]
        text_help = f"Enable research question {rq_identifier}: {rq_info[0]} (default: %(default)s)"
        rqs.add_argument(arg_key, action="store_true", help=text_help)
    return prs

def parse(args, prs=None):
    if prs is None:
        prs = build()
    if args is None:
        args = prs.parse_args()
    # Passing the filter-non-exhaustive option should automatically ENABLE the exhaustive flag
    if args.filter_non_exhaustive:
        args.exhaustive = True
    # Flag-ON all RQs for hypotheses that are given
    for hyp_idx in range(1,5):
        if getattr(args, f"hyp{hyp_idx}"):
            for rq_name in rqs_dict.keys():
                if int(rq_name.split('.')[0]) == hyp_idx:
                    setattr(args, rq_attrnames[rq_name], True)
    # Drop all hyp arguments
    hyp_names = [_ for _ in dir(args) if _.startswith('hyp')]
    for attrname in hyp_names:
        delattr(args, attrname)
    # Flag-OFF all RQs that require exhaustive data when non-exhaustive
    if not args.exhaustive:
        for rq_name, rq_info in rqs_dict.items():
            if rq_info[2] and getattr(args, rq_attrnames[rq_name]):
                warnings.warn(f"Disabling RQ {rq_name} as it requires exhaustive data, use --exhaustive to permit", UserWarning)
                setattr(args, rq_attrnames[rq_name], False)
    # Drop exhaustive flag
    del args.exhaustive
    # Convert all RQs into flag dictionary
    args.rq_flags = dict((k,getattr(args,rq_attrnames[k])) for k in rqs_dict.keys())
    # Drop converted names
    for name in rq_attrnames.values():
        delattr(args, name)
    # Ensure drop column is OK
    if type(args.drop_column) is not list:
        if args.drop_column is None:
            args.drop_column = []
        else:
            args.drop_column = [args.drop_column]
    return args

def load_data(args_list, args):
    return pd.concat([pd.read_csv(fname).drop(columns=args.drop_column) for fname in args_list])

def non_exhaustive_filter(source, target, args):
    # Use sets to speed up processing
    # Identify common values between datasets, then remap to indices and return trimmed data to only match common rows
    df1 = source.drop(columns=[args.perf_column])
    df2 = target.drop(columns=[args.perf_column])
    set_df1 = set(map(tuple, df1.values))
    set_df2 = set(map(tuple, df2.values))
    common_rows = set_df1.intersection(set_df2)
    print(len(common_rows))
    indices_df1 = sorted([i for i, row in df1.iterrows() if tuple(row) in common_rows])
    indices_df2 = sorted([i for i, row in df2.iterrows() if tuple(row) in common_rows])
    return source.iloc[indices_df1], target.iloc[indices_df2]

def rq1_1(source_data, target_data, args):
    # Pearson Correlation of response variable is positively linearlly correlated
    # Focus on response variable data only
    source_response = source_data[args.perf_column].to_numpy()
    target_response = target_data[args.perf_column].to_numpy()
    pearsonr_stat = scipy.stats.pearsonr(source_response, target_response)
    if hasattr(scipy.stats, '_result_classes') and isinstance(pearsonr_stat, scipy.stats._result_classes.PearsonRResult):
        pearsonr_stat = (pearsonr_stat.statistic, pearsonr_stat.pvalue)
    expected_threshold = 0.9
    expected_pvalue_max = 0.05
    testpass = False
    reason = f"Fails to exceed expected threshold: {expected_threshold}"
    if pearsonr_stat[0] >= expected_threshold:
        if pearsonr_stat[1] > expected_pvalue_max:
            reason = f"Pvalue insufficient to support conclusion (>{expected_pvalue_max})"
        else:
            testpass = True
            reason = ""
    print(f"1.1 Test {'PASS' if testpass else 'FAIL:'} {reason}")
    print("\t"+f"Statistic: {pearsonr_stat[0]}")
    print("\t"+f"P-value: {pearsonr_stat[1]}")

def rq1_2(source_data, target_data, args):
    # Focus on KL_Div to describe similarity of distributions
    """
    # Unrepresented options are automatically dropped, which slightly eases the KL Div but for large datasets should not be an issue
    param_names = np.asarray(sorted([_ for _ in set(source_data.columns).union(target_data.columns).difference(set([args.perf_column]))]))
    param_values = [sorted(set(source_data.loc[:,col].values).union(set(target_data.loc[:,col].values))) for col in param_names]
    param_lens = [len(_)-1 for _ in param_values]
    source_X = source_data[param_names]
    source_idx = source_X.index
    target_X = target_data[param_names]
    target_idx = target_X.index
    for col, pvs, n in zip(param_names, param_values, param_lens):
        source_X.loc[source_idx, col] = [pvs.index(i)/n for i in source_x[col]]
        target_X.loc[target_idx, col] = [pvs.index(i)/n for i in target_x[col]]
    # Paper suggests 3
    expected_threshold = 3*len(param_names)
    testpass = False
    reason = "Sum of "
    """

    # For response data, normalize to account for mean shifts
    source_Y = (source_data[args.perf_column] / source_data[args.perf_column].mean()).to_numpy()
    target_Y = (target_data[args.perf_column] / target_data[args.perf_column].mean()).to_numpy()
    expected_threshold = 3.
    testpass = False
    reason = f"Sum of KL Divergence exceeds threshold: {expected_threshold}"
    kldiv_sum = scipy.special.kl_div(source_Y, target_Y).sum()
    if kldiv_sum < expected_threshold:
        testpass = True
        reason =""
    print(f"1.2 Test {'PASS' if testpass else 'FAIL:'} {reason}")
    print("\t"+f"Sum of KL Divergence of Performance Distributions: {kldiv_sum}")

def rq1_3(source_data, target_data, args):
    # Rankings remain the same
    # Focus on response variable data only
    source_response = source_data[args.perf_column].to_numpy()
    target_response = target_data[args.perf_column].to_numpy()
    spearmanr_stat = scipy.stats.spearmanr(source_response, target_response)
    # Could return SignificanceResult but this appears to be only a tuple
    expected_threshold = 0.9
    expected_pvalue_max = 0.05
    testpass = False
    reason = f"Fails to exceed expected threshold: {expected_threshold}"
    if spearmanr_stat[0] >= expected_threshold:
        if spearmanr_stat[1] > expected_pvalue_max:
            reason = f"Pvalue insufficient to support conclusion (>{expected_pvalue_max})"
        else:
            testpass = True
            reason = ""
    print(f"1.3 Test {'PASS' if testpass else 'FAIL:'} {reason}")
    print("\t"+f"Statistic: {spearmanr_stat[0]}")
    print("\t"+f"P-value: {spearmanr_stat[1]}")

def rq1_4(source_data, target_data, args):
    # Top-10% and bottom-10% have highly similar inclusion rates
    non_perf_columns = set(source_data.columns).difference({args.perf_column,})
    sorted_source = source_data.sort_values(by=[args.perf_column])
    sorted_target = target_data.sort_values(by=[args.perf_column])
    for (testnum, (testname, quantile, ineq_lt)) in enumerate(zip(["Top", "Bottom"], [0.1, 0.9], [True, False])):
        source_select = sorted_source[getattr(sorted_source[args.perf_column],'__lt__' if ineq_lt else '__gt__')(sorted_source[args.perf_column].quantile(quantile,interpolation='nearest'))]
        target_select = sorted_target[getattr(sorted_target[args.perf_column],'__lt__' if ineq_lt else '__gt__')(sorted_target[args.perf_column].quantile(quantile,interpolation='nearest'))]
        matching = pd.concat((source_select,target_select)).duplicated(subset=non_perf_columns).sum() / len(source_select)
        #matching = 100 - 100*((len(pd.concat((source_select,target_select)).drop_duplicates(subset=non_perf_columns)) - len(source_select)) / len(source_select))
        expected_threshold = 0.75
        testpass = False
        reason = f"Fails to exceed expected threshold: {100*expected_threshold:.2f}%"
        if matching >= expected_threshold:
            testpass = True
            reason = ""
        print(f"1.4.{testnum} Test {'PASS' if testpass else 'FAIL:'} {reason}")
        print("\t"+f"Matching: {testname}-{100*quantile:.2f}%")
        print("\t"+f"Common Percentage: {100*matching:.2f}%")

def main(args=None):
    args = parse(args)
    source_data = load_data(args.source, args)
    target_data = load_data(args.target, args)
    if args.filter_non_exhaustive:
        source_data, target_data = non_exhaustive_filter(source_data, target_data, args)
    rq_callables = dict((k,v) for k,v in globals().items() if callable(v) and k.startswith('rq'))
    for rq_name, rq_flag in args.rq_flags.items():
        fn_name = rq_attrnames[rq_name]
        if rq_flag and fn_name in rq_callables.keys():
            print(f"Running test {rq_name}: {rqs_dict[rq_name][0]}")
            print("\t"+rqs_dict[rq_name][1])
            rq_callables[fn_name](source_data, target_data, args)
            print()

if __name__ == '__main__':
    main()

