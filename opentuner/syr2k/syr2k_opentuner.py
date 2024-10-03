import opentuner
from opentuner import ConfigurationManipulator
from opentuner import EnumParameter
from opentuner import MeasurementInterface
from opentuner import Result

import pandas as pd
import numpy as np

import random
import pathlib
import warnings

"""
    Based on demo: https://opentuner.org/tutorial/gettingstarted,
    adapted to lookup results from existing dataset
"""

class Syr2kTuner(MeasurementInterface):
    def __init__(self, argparse_args, *args, **kwargs):
        # Load data
        base_path = pathlib.Path(__file__).parents[2] / 'syr2k_data' / 'oracles'
        self.syr2k_data = dict((size, pd.read_csv(base_path / size / f"all_{size}.csv").sort_values(by=['objective']).reset_index(drop=True))
                                for size in ['SM','XL'])
        self.syr2k_cols = [f'p{_}' for _ in range(6)]
        self.syr2k_size = argparse_args.syr2k_size # Which one we'll actually use unless told otherwise
        self.syr2k_results = pd.DataFrame(columns=self.syr2k_cols+['objective','rank']) # Accumulate results
        self.syr2k_output = argparse_args.output # Own means to log results rather than going through OpenTuner
        # Repackage
        args = tuple([argparse_args] + list(args))
        super().__init__(*args, **kwargs)

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
        syr2k = self.syr2k_data[self.syr2k_size]
        if 'size' in cfg:
            sry2k = self.syr2k_data[cfg['size']]
        # OpenTuner is fond of reordering the columns, ensure they come in correct order
        search = tuple([cfg[_] for _ in self.syr2k_cols])
        n_matches = (syr2k[self.syr2k_cols].astype(str) == search).sum(1).to_numpy()
        full_match_idx = np.nonzero(n_matches == len(self.syr2k_cols))[0]
        result_time = float(syr2k.loc[full_match_idx[0],'objective'])
        # Set column values
        cfg['objective'] = result_time
        cfg['rank'] = full_match_idx[0]
        new_result = pd.DataFrame(cfg, columns=self.syr2k_cols+['objective','rank'],
                                  index=[len(self.syr2k_results)])
        with warnings.catch_warnings():
            warnings.simplefilter('ignore')
            # This will generate a warning the first time, just catch it
            self.syr2k_results = pd.concat((self.syr2k_results,
                                            new_result))
        return Result(time=result_time)

    def save_final_config(self, configuration):
        """
        Called at the end of tuning
        """
        if self.syr2k_output is None:
            print(self.syr2k_results)
            print("Optimal result:", configuration.data)
        else:
            self.syr2k_results.to_csv(self.syr2k_output,index=False)
            print("Optimal result:", configuration.data)

if __name__ == '__main__':
    argparser = opentuner.default_argparser()
    argparser.add_argument('--seed', type=int, default=1234, help="Random seed for builtin random and numpy.random (default %(default)s)")
    argparser.add_argument('--output', default=None, help="File to save results to (default: Print)")
    argparser.add_argument('--syr2k-size', choices=['SM','XL'], default='SM', help="Pick a syr2k size (default: %(default)s)")
    args = argparser.parse_args()
    random.seed(args.seed)
    np.random.seed(args.seed)
    Syr2kTuner.main(args)

