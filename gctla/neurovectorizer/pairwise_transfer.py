import numpy as np
import pandas as pd
from GC_TLA.implementations.neurovectorizer import neurovectorizer_titan as nvt
from sklearn.ensemble import RandomForestRegressor
from sklearn.metrics import r2_score
from sklearn.model_selection import train_test_split
import tqdm
import matplotlib
import matplotlib.pyplot as plt

print(str(nvt))
possible_names = np.asarray(sorted(set(nvt.executor.oracle_data['app'])))
np.random.seed(2024)
# Get a random order of names
#random_name_order = np.arange(len(possible_names))
#np.random.shuffle(random_name_order)
#source_pairs = possible_names[random_name_order[0:2]]
#target = possible_names[random_name_order[2:3]]
# Demonstrate if any correlation exists?
def convert_app_frame(frame,app):
    subset = frame.loc[frame['app']==app]
    # Scikit-Learn only works with pure float data
    pnames = np.asarray(['IF','VF'])
    y_name = np.asarray(['runtime'])
    frame_X, frame_Y = subset[pnames], subset[y_name]
    index = frame_X.index
    if_list = [1,2,4,8,16]
    if_len = len(if_list)-1
    frame_X.loc[index,'IF'] = [if_list.index(_)/if_len for _ in frame_X['IF']]
    vf_list = [1,2,4,8,16,32,64]
    vf_len = len(vf_list)-1
    frame_X.loc[index,'VF'] = [vf_list.index(_)/vf_len for _ in frame_X['VF']]
    # Flatten frame_Y so that it is automatically raveled
    frame_Y = frame_Y.to_numpy().ravel()
    return frame_X, frame_Y

raw_data = nvt.executor.oracle_data.drop(columns=['Unnamed: 0'])
# Train once
app1x, app1y = convert_app_frame(raw_data, possible_names[0])
regressor = RandomForestRegressor()
regressor.fit(app1x,app1y)
r2_scores = []
# Predict for each other target
for app_name in tqdm.tqdm(possible_names[1:]):
    app2x, app2y = convert_app_frame(raw_data, app_name)
    predictions = regressor.predict(app2x)
    r2 = r2_score(app2y, predictions)
    #if r2 > -1:
    r2_scores.append(r2)
    #print(f"R2 score of RandomForest for {possible_names[0]}-->{app_name}: {r2}")
r2_scores = np.asarray(r2_scores)
fig, ax = plt.subplots()
ax.scatter(np.arange(len(r2_scores)), r2_scores, marker='.')
plt.savefig('neurovec_correlations.png')
print(f"Highest correlations with {possible_names[0]}:")
for idx in np.argsort(-r2_scores)[:5]:
    print(f"{possible_names[idx]}: {r2_scores[idx]}")
print(f"Lowest correlations with {possible_names[0]}:")
for idx in np.argsort(r2_scores)[:5]:
    print(f"{possible_names[idx]}: {r2_scores[idx]}")

