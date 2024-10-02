import pickle
import numpy as np

DATA_PATH_IN="tensors_syr2k_exhaustive_data.pkl"
NAME_PATH_IN="tensors_syr2k_exhaustive_names.pkl"
DATA_PATH_OUT="sorted_tensors_syr2k_exhaustive_data.pkl"
NAME_PATH_OUT="sorted_tensors_syr2k_exhaustive_names.pkl"

with open(DATA_PATH_IN,'rb') as dpf:
    # List of numpy ndarrays
    loaded_data = np.asarray(pickle.load(dpf))
with open(NAME_PATH_IN,'rb') as npf:
    # List of strings, convert to ndarray
    loaded_names = np.asarray(pickle.load(npf))

# Separate the data
print(len(loaded_names), "Total names")
sm_names = np.asarray([idx for (idx,name) in enumerate(loaded_names) if '_SM' in name])
xl_names = np.asarray([idx for (idx,name) in enumerate(loaded_names) if '_XL' in name])
other_names = np.asarray(sorted(set(range(len(loaded_names))).difference(set(sm_names).union(xl_names))))
print(len(sm_names), "SMs")
print(len(xl_names), "XLs")
print(len(other_names), "Others")
# Sorting order within sets
sm_name_ivals = np.asarray([int(_.rsplit("_",1)[1].split('.')[0]) for _ in loaded_names[sm_names]])
sm_order = np.argsort(sm_name_ivals)
xl_name_ivals = np.asarray([int(_.rsplit("_",1)[1].split('.')[0]) for _ in loaded_names[xl_names]])
xl_order = np.argsort(xl_name_ivals)
# Restack for the order I want
full_order = np.concatenate((sm_names[sm_order], xl_names[xl_order], other_names))

with open(DATA_PATH_OUT,'wb') as dpf:
    np.save(dpf, loaded_data[full_order], allow_pickle=True, fix_imports=False)
with open(NAME_PATH_OUT,'wb') as npf:
    np.save(npf, loaded_names[full_order], allow_pickle=True, fix_imports=False)
