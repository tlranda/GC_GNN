# Dependent imports
import numpy as np
import pandas as pd

# Local imports
from bliss_class import BLISS_Tuner

class Syr2k_Tuner(BLISS_Tuner):
    def __init__(self, *args):
        super().__init__(*args)
        # Load exhaustive dataset
        self.dataset = pd.read_csv(self.args.dataset).sort_values(by=['objective']).reset_index(drop=True)
        self.datacols = [f'p{_}' for _ in range(6)]

    def build_parameters(self):
        p0 = [" ", "#pragma clang loop(j2) pack array(A) allocate(malloc)"]
        p1 = [" ", "#pragma clang loop(i1) pack array(B) allocate(malloc)"]
        p2 = [" ", "#pragma clang loop(i1,j1,k1,i2,j2) interchange permutation(j1,k1,i1,j2,i2)"]
        p3 = ['96','4','8','16','20','32','50','64','80','100','128']
        p4 = ['2048','4','8','16','20','32','50','64','80','100','128']
        p5 = ['256','4','8','16','20','32','50','64','80','100','128']
        return [p0,p1,p2,p3,p4,p5]

    def objective(self, configuration, delay):
        # Look up configuration in dataset and report its value
        search = tuple([self.parameters[ind][v] for (ind,v) in enumerate(configuration)])
        n_matches = (self.dataset[self.datacols].astype(str) == search).sum(1).to_numpy()
        full_match_idx = np.nonzero(n_matches == len(self.datacols))[0]
        obj = self.dataset.loc[full_match_idx[0],'objective']
        return obj * -1

    def build(self, prs=None):
        prs = super().build(prs)
        syr2k = prs.add_argument_group("Syr2k")
        syr2k.add_argument("--dataset", type=str, default=None, required=True,
                           help="Dataset of exhaustive data")
        return prs

if __name__ == '__main__':
    Syr2k_Tuner().run_BLISS()

