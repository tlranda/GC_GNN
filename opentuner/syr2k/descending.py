import pathlib

import matplotlib.pyplot as plt
import numpy as np
import pandas as pd

def descend(path, output='trace', rval=True):
    csv = pd.read_csv(path)
    ranks = csv['rank'].to_numpy()
    descending = np.ones_like(ranks)
    descending[0] = ranks[0]
    for idx,rank in enumerate(ranks[1:]):
        # idx 0-(|ranks|-1) == read index, not write index (write +1)
        descending[idx+1] = min(descending[idx], rank)
    change_idx = np.nonzero(descending[:-1]-descending[1:])[0]+1
    if rval:
        if output == 'trace':
            return descending[change_idx]
        elif output == 'best':
            return descending[-1]
        elif output == 'best_at':
            return change_idx[-1]
        else:
            raise NotImplemented(f"No output defined for '{output}'")
    else:
        if output == 'trace':
            print(f"Results for {path}")
            for change in change_idx:
                print(f"Eval #{change} --> {descending[change]}")
        elif output == 'best':
            print(f"Best of {path}: {descending[-1]}")
        elif output == 'best_at':
            print(f"Best {path} at {change_idx[-1]}")
        else:
            raise NotImplemented(f"No output defined for '{output}'")

def mean(accumulate, **kwargs):
    print(f"Mean for {files[idx-1].stem}: {np.mean(accumulate)}")
    accumulate.clear()

def plot(accumulate, title='abc'):
    max_len = max(map(len,accumulate))
    new_accumulate = [np.pad(x, (0,max_len-len(x)), mode='minimum') for x in accumulate]
    new_accumulate = np.atleast_2d(new_accumulate)
    new_accumulate = new_accumulate.mean(axis=0)
    ax.plot(range(new_accumulate.shape[0]), new_accumulate, label=title, marker='.')
    ax.set_title("Opentuner Changes in Best-So-Far Optimum")
    accumulate.clear()

if __name__ == '__main__':
    files = pathlib.Path('.').glob('**/*.csv')
    files = sorted([_ for _ in files], key=lambda x: (x.stem, x.parents[0]))
    files = list(filter(lambda f: any([_ in str(f) for _ in ['AUCBanditMetaTechnique','NormalGreedyMutation10','UniformGreedyMutation05','ga-CX','ga-OX1','ga-OX3','ga-PMX','ga-PX']]), files))

    method = plot
    accumulate = list()
    fig,ax = plt.subplots()
    for idx, csv in enumerate(files):
        print(csv)
        rval = descend(csv, 'trace')
        if len(accumulate) == 0 or files[idx-1].stem == csv.stem:
            accumulate.append(rval)
        else:
            method(accumulate, title=files[idx-1].stem)
            print()
            accumulate = [rval]
    method(accumulate, title=csv.stem)
    plt.legend()
    plt.show()

