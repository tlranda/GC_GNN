import opentuner
from opentuner import ConfigurationManipulator
from opentuner import EnumParameter
from opentuner import Result

import pandas as pd
import numpy as np

import random
import pathlib
import warnings

from opentuner_class import OpenTuner_Tuner

"""
    Based on demo: https://opentuner.org/tutorial/gettingstarted,
    adapted to lookup results from existing dataset
"""

class Syr2kTuner(OpenTuner_Tuner):
    def build(self):
        prs, opentuner_args, extra_args = super().build()
        syr2k = prs.add_argument_group('Syr2k')
        syr2k.add_argument('--size', choices=['SM','XL'], default='SM', help="Pick a syr2k size (default: %(default)s)")
        return prs, opentuner_args, extra_args

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)

        # Load data
        base_path = pathlib.Path(__file__).parents[2] / 'syr2k_data' / 'oracles'
        self.syr2k_size = self.args.size # Which one we'll actually use unless told otherwise
        self.syr2k_data = pd.read_csv(base_path / self.args.size / f"all_{self.args.size}.csv").sort_values(by=['objective']).reset_index(drop=True)
        self.syr2k_cols = [f'p{_}' for _ in range(6)]
        self.configure_desired_result(self.syr2k_cols+['objective','rank'])
        self.opentuner_results = pd.DataFrame(columns=self.opentuner_params)

    def manipulator(self):
        """
        Define the search space by creating a ConfigurationManipulator
        """
        manipulator = ConfigurationManipulator()
        # Options are not weighted by order, first option in list is default
        parameters = [
                EnumParameter('p0', [" ", "#pragma clang loop(j2) pack array(A) allocate(malloc)"]),
                EnumParameter('p1', [" ", "#pragma clang loop(i1) pack array(B) allocate(malloc)"]),
                EnumParameter('p2', [" ", "#pragma clang loop(i1,j1,k1,i2,j2) interchange permutation(j1,k1,i1,j2,i2)"]),
                EnumParameter('p3', ['96','4','8','16','20','32','50','64','80','100','128']),
                EnumParameter('p4', ['2048','4','8','16','20','32','50','64','80','100','128']),
                EnumParameter('p5', ['256','4','8','16','20','32','50','64','80','100','128']),
                ]
        for parameter in parameters:
            manipulator.add_parameter(parameter)
        return manipulator

    def run(self, desired_result, input, limit):
        """
        'Compile' and 'run' a given configuration, then return performance
        """
        cfg = desired_result.configuration.data
        # Look up this config
        # OpenTuner is fond of reordering the columns, ensure they come in correct order
        search = tuple([cfg[_] for _ in self.syr2k_cols])
        n_matches = (self.syr2k_data[self.syr2k_cols].astype(str) == search).sum(1).to_numpy()
        full_match_idx = np.nonzero(n_matches == len(self.syr2k_cols))[0]
        result_time = float(self.syr2k_data.loc[full_match_idx[0],'objective'])
        # Set column values
        cfg['objective'] = result_time
        cfg['rank'] = full_match_idx[0]
        self.add_opentuner_result(desired_result)
        return Result(time=result_time)

if __name__ == '__main__':
    Syr2kTuner().main()

