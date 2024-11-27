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

from opentuner_class import OpenTuner_Tuner
#from ytopt.benchmark.base_plopper import ECP_Plopper
from ytopt.benchmark.amg_exp.problem import AMG_Plopper as ECP_Plopper

"""
    Based on demo: https://opentuner.org/tutorial/gettingstarted,
    adapted to lookup results from existing dataset
"""

class AMG_Tuner(OpenTuner_Tuner):
    size_lookups = {
        'S': 50,
        'SM': 75,
        'M': 100,
        'ML': 125,
        'L': 150,
        'XL': 175,
        'H': 200
    }
    def pmetric(self, timing_list):
        return np.atleast_2d(timing_list)[:,1:].mean()

    def build(self):
        prs, opentuner_args, extra_args = super().build()
        AMG = prs.add_argument_group('AMG')
        AMG.add_argument('--dataset-size', choices=['SM','XL'], default=None, required=True,
                          help="Problem size to tune")
        return prs, opentuner_args, extra_args

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)

        self.dataset_size = self.size_lookups[self.args.dataset_size]

        template = pathlib.Path('./amg2013.c').resolve()
        self.plopper = ECP_Plopper(str(template), str(template.parents[0]), output_extension='.c')
        self.plopper.metric = self.pmetric

        self.configure_desired_result([f'p{_}' for _ in range(9)]+['objective'])
        self.opentuner_results = pd.DataFrame(columns=sorted(self.opentuner_params))

    def manipulator(self):
        """
        Define the search space by creating a ConfigurationManipulator
        """
        manipulator = ConfigurationManipulator()
        # Options are not weighted by order, first option in list is default
        parameters = [
                EnumParameter('p0', ['8','4','5','6','7']),
                EnumParameter('p1', ['100','10','20','40','64','80','128','160','200']),
                EnumParameter('p2', [' ',"#pragma clang unrolling full"]),
                EnumParameter('p3', [' ',"#pragma omp parallel for"]),
                EnumParameter('p4', ['96','2','4','8','16','32','64','128','256']),
                EnumParameter('p5', ['256','2','4','8','16','32','64','96','128']),
                EnumParameter('p6', ['100','10','20','40','64','80','128','160','200']),
                EnumParameter('p7', ['compact','scatter','balanced']),
                EnumParameter('p8', ['cores','threads','sockets']),
                ]
        for parameter in parameters:
            manipulator.add_parameter(parameter)
        return manipulator

    def run(self, desired_result, input, limit):
        """
        'Compile' and 'run' a given configuration, then return performance
        """
        cfg = desired_result.configuration.data
        cfg_params = dict((k.upper(),cfg[k]) for k in [f'p{_}' for _ in range(9)])
        result_time = self.plopper.findRuntime(list(cfg_params.values()), list(cfg_params.keys()), self.dataset_size)
        cfg['objective'] = result_time
        self.add_opentuner_result(desired_result)
        return Result(time=result_time)

if __name__ == '__main__':
    AMG_Tuner().main()

