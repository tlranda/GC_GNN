import numpy as np
import pandas as pd
import shap
import argparse
from sklearn.ensemble import RandomForestRegressor
from sklearn.metrics import r2_score
from sklearn.model_selection import train_test_split

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
    for loaded, name in zip(data, names):
        print(name)
        param_names, load_X, load_Y = convert_frame(loaded)
        # Scikit-Learn R2 score / regressor for importance
        regressor = RandomForestRegressor()
        X_train, X_test, Y_train, Y_test = train_test_split(load_X, load_Y.to_numpy().ravel(),
                                                            test_size=0.5,
                                                            random_state=42)
        regressor.fit(X_train, Y_train)
        predictions = regressor.predict(load_X)
        r2 = r2_score(load_Y, predictions)
        print(f"R2 score of RandomForest: {r2}")

        # Scikit-Learn importance
        regression_feature_importance = regressor.feature_importances_
        sklearn_importance = regression_feature_importance.argsort()
        print("\nRandomForest feature priority:\n",param_names[sklearn_importance])
        print("Importances:\n",regression_feature_importance[sklearn_importance])
        print("Ranking:\n",sklearn_importance)

        # SHAP importance
        """
        explainer = shap.TreeExplainer(regressor)
        shap_values = explainer.shap_values(load_X)
        shap_accumulate = shap_values.sum(axis=0)
        # Shap importance is not monotonic -- negative values just mean different classification
        shap_importance = np.abs(shap_accumulate).argsort()
        print("\nShap feature priority:\n",param_names[shap_importance])
        print("Importances:\n",shap_accumulate[shap_importance])
        print("Ranking:\n",shap_importance)
        """

        # Combined importance is misleading and hard to do correctly
        #combined = sklearn_importance + shap_importance
        #combined_importance = combined.argsort()
        #print("Combined feature priority:\n",param_names[combined_importance])
        #print("Ranking based on:\n",combined)
        #print("Ranking:\n",combined_importance)

        print()

if __name__ == '__main__':
    main()

