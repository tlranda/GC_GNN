import numpy as np
import pandas as pd
#import shap
from sklearn.ensemble import RandomForestRegressor
from sklearn.metrics import r2_score
from sklearn.model_selection import train_test_split

import argparse
import warnings

def build():
    prs = argparse.ArgumentParser()
    prs.add_argument('--csv', nargs='+', default=None, help="Files to concatenate and do sensitivity analysis on")
    prs.add_argument('--summarize', action='store_true', help="Combine all files (default: treat separately)")
    return prs

def parse(args=None, prs=None):
    if prs is None:
        prs = build()
    if args is None:
        args = prs.parse_args()
    if type(args.csv) is str:
        args.csv = [args.csv]
    return args

def convert_frame(frame):
    param_names = np.asarray([f'p{_}' for _ in range(6)])
    y_name = np.asarray(["objective"])
    frame_X, frame_Y = frame[param_names], frame[y_name]
    # Scikit-Learn will only operate on pure float data
    with warnings.catch_warnings():
        warnings.simplefilter('ignore')
        index = frame_X.index
        frame_X.loc[index,'p0'] = [1. if _ == ' ' else 0. for _ in frame_X['p0']]
        frame_X.loc[index,'p1'] = [1. if _ == ' ' else 0. for _ in frame_X['p1']]
        frame_X.loc[index,'p2'] = [1. if _ == ' ' else 0. for _ in frame_X['p2']]
        p3_list = [4,8,16,20,32,50,64,80,96,100,128]
        p3_len = len(p3_list) - 1
        frame_X.loc[index,'p3'] = [p3_list.index(_)/p3_len for _ in frame_X['p3']]
        p4_list = [4,8,16,20,32,50,64,80,100,128,2048]
        p4_len = len(p4_list) - 1
        frame_X.loc[index,'p4'] = [p4_list.index(_)/p4_len for _ in frame_X['p4']]
        p5_list = [4,8,16,20,32,50,64,80,100,128,256]
        p5_len = len(p5_list) - 1
        frame_X.loc[index,'p5'] = [p5_list.index(_)/p5_len for _ in frame_X['p5']]
    return param_names, frame_X, frame_Y

def get_RF_importance(param_names, X, Y, shap=False):
    # Scikit-Learn R2 score / regressor for importance
    regressor = RandomForestRegressor()
    X_train, X_test, Y_train, Y_test = train_test_split(X, Y.to_numpy().ravel(),
                                                        test_size=0.5,
                                                        random_state=42)
    regressor.fit(X_train, Y_train)
    predictions = regressor.predict(X_test)
    r2 = r2_score(Y_test, predictions)
    print(f"R2 score on TEST of RandomForest: {r2}")
    predictions = regressor.predict(X)
    r2 = r2_score(Y, predictions)
    print(f"R2 score on TRAIN+TEST of RandomForest: {r2}")

    # Scikit-Learn importance
    regression_feature_importance = regressor.feature_importances_
    sklearn_importance = regression_feature_importance.argsort()
    print("\nRandomForest feature priority:\n",param_names[sklearn_importance])
    print("Importances:\n",regression_feature_importance[sklearn_importance])
    print("Ranking:\n",sklearn_importance)

    # Optional, add shap importance
    if shap:
        shap_importance = get_SHAP_importance(param_names, X, Y, regressor)
        #shap_importance = get_SHAP_importance(param_names, X, Y, regressor, sklearn_importance=sklearn_importance)
        return sklearn_importance, shap_importance
    return sklearn_importance

def get_SHAP_importance(param_names, X, Y, regressor, sklearn_importance=None):
    # SHAP importance
    explainer = shap.TreeExplainer(regressor)
    shap_values = explainer.shap_values(X)
    shap_accumulate = shap_values.sum(axis=0)
    # Shap importance is not monotonic -- negative values just mean different classification
    shap_importance = np.abs(shap_accumulate).argsort()
    print("\nShap feature priority:\n",param_names[shap_importance])
    print("Importances:\n",shap_accumulate[shap_importance])
    print("Ranking:\n",shap_importance)

    # Combined importance is misleading and hard to do correctly
    if sklearn_importance is not None:
        combined = sklearn_importance + shap_importance
        combined_importance = combined.argsort()
        print("Combined feature priority:\n",param_names[combined_importance])
        print("Ranking based on:\n",combined)
        print("Ranking:\n",combined_importance)
    return shap_importance

def select_key_configs(param_names, X, Y, args, importance, name):
    # Negate the values to ensure largest magnitude is sorted to the front
    sort_y_order = np.argsort(-Y.to_numpy().ravel())
    sort_objectives = Y.loc[sort_y_order,'objective']
    sort_params = X.loc[sort_y_order,param_names]
    # Determine a set of examples that differ on importance and span performance
    p0_list = p1_list = p2_list = ['#pragma', 'XXXXXXX']
    p3_list = [4,8,16,20,32,50,64,80,96,100,128]
    p4_list = [4,8,16,20,32,50,64,80,100,128,2048]
    p5_list = [4,8,16,20,32,50,64,80,100,128,256]
    plists = [p0_list, p1_list, p2_list, p3_list, p4_list, p5_list]

    force_strs = dict((k,str) for k in param_names)
    original = pd.read_csv(name, dtype=force_strs)
    if 'size' not in original.columns:
        if '_xl_' in name.lower():
            size = 'XL'
        elif '_sm_' in name.lower():
            size = 'SM'
        elif '_l_' in name.lower():
            size = 'L'
        elif '_m_' in name.lower():
            size = 'M'
        elif '_s_' in name.lower():
            size = 'S'
        else:
            if '_sm' in name.lower():
                size = 'SM'
            elif '_xl' in name.lower():
                size = 'XL'
            else:
                raise ValueError(f"Size not determined from filename '{name}'")
        original.insert(0,'size',[size]*len(original))
    if size in ['SM','XL']:
        collated = original
    else:
        collated = pd.read_csv("/home/tlranda/ANL_22/ytopt_tlranda/ytopt/benchmark/rebuild_collations/syr2k_collated.csv",
            dtype=force_strs)

    # Make our own quantiles based on the sorted index
    n_quants = 10
    quant_size = len(Y)//n_quants
    quantile_slices = [slice(i*quant_size, min((i+1)*quant_size, len(Y))) for i in range(n_quants)]
    key_configs = []
    for idx, qs in enumerate(quantile_slices):
        print(f"Quantile #{idx+1}/{n_quants}")
        # Qs --> indexed
        qsi = sort_params.index[qs]
        # Map each parameter to a map of...
        # Map each value the parameter takes to its occurrence count
        dist = dict((p,dict((k,sort_params.loc[qsi,p].tolist().count(k)) for k in set(sort_params.loc[qsi,p]))) for p in param_names)
        #print("\n".join([f"{p}: "+str([f"{k}: {dist[p][k]}" for k in sorted(dist[p].keys())]) for p in param_names]))
        dist_inv = dict((p,dict((v,k) for (k,v) in dist[p].items())) for p in dist.keys())
        """
        # Pick based on maximum-likelihood
        select = [dist_inv[p][max(dist_inv[p].keys())] for p in dist.keys()]
        # Re-convert float to index
        select_idx = [int(select[i]*(len(plists[i])-1)) for i in range(len(plists))]
        # Re-convert index to string
        select_str = [plists[i][select_idx[i]] for i in range(len(plists))]
        # Get string
        print(", ".join([str(_) for _ in select_str]))
        """
        #print(original.loc[qsi[0]])
        lookup = original.loc[qsi[0],param_names]
        search = (collated[param_names] == lookup).sum(1)
        found = np.where(search == len(param_names))[0]
        if len(found) == 0:
            if size not in ['SM','XL']:
                raise ValueError(f"Bad find with {len(found)} results")
            else:
                print(original.loc[found[0]])
                key_configs.append(found[0])
        else:
            try:
                print(collated.loc[found[0],'id'])
            except:
                print(found[0])
            out = list(param_names)+['size']
            print(", ".join([collated.loc[found[0],p] for p in out]))
            key_configs.append(found[0])
    return size, key_configs

def main(args=None):
    args = parse(args)
    # Loading
    csvs = []
    for csv in args.csv:
        try:
            csvs.append(pd.read_csv(csv))
        except FileNotFoundError:
            print(f"Could not open file {csv}")
    if args.summarize:
        data = [pd.concat(csvs).reset_index(drop=True)]
        names = [f'concatenated: {args.csv}']
    else:
        data = csvs
        names = args.csv
    out_data = []
    for loaded, name in zip(data, names):
        print(f"-- START PROCESSING: {name} --")
        param_names, load_X, load_Y = convert_frame(loaded)
        rf_imp = get_RF_importance(param_names, load_X, load_Y, shap=False)
        #(rf_imp, shap_imp) = get_RF_importance(param_names, load_X, load_Y, shap=True)
        # Figure out how to use the importance to span performance
        (size, key_configs) = select_key_configs(param_names, load_X, load_Y, args, rf_imp, name)
        out_data.append(pd.DataFrame({'size': [size]*len(key_configs),
                                      'mmp#': key_configs,
                                      'goodness': range(len(key_configs)),
                                      }))
    pd.concat(out_data).to_csv('key_configs.csv',index=False)

if __name__ == '__main__':
    main()

