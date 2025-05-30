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
from ytopt.benchmark.rsbench_exp.problem import RSBench_Plopper as ECP_Plopper

"""
    Based on demo: https://opentuner.org/tutorial/gettingstarted,
    adapted to lookup results from existing dataset
"""

class RSBench_Tuner(OpenTuner_Tuner):
    lookup = {
        'S':  100000,
        'SM': 500000,
        'M':  1000000,
        'ML': 2500000,
        'L':  5000000,
        'XL': 10000000,
    }
    def pmetric(self, timing_list):
        return np.atleast_2d(timing_list)[:,1:].mean()

    def build(self):
        prs, opentuner_args, extra_args = super().build()
        RSBench = prs.add_argument_group('RSBench')
        RSBench.add_argument('--dataset-size', choices=['SM','XL'], default=None, required=True,
                          help="Problem size to tune")
        return prs, opentuner_args, extra_args

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)

        self.dataset_size = self.lookup[self.args.dataset_size]
        #self.dataset_size = self.args.dataset_size

        template = pathlib.Path('./mmp.c').resolve()
        self.plopper = ECP_Plopper(str(template), str(template.parents[0]), output_extension='.c',
                                   ignore_runtime_failure=True)
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
                EnumParameter('p0', ['128','2','4','8','16','32','48','64','192','256']),
                EnumParameter('p1', ['1000','100','200','400','640','800','1280','1600','2000']),
                EnumParameter('p2', [' ',"#pragma clang loop unrolling full"]),
                EnumParameter('p3', [' ',"#pragma omp parallel for"]),
                EnumParameter('p4', ['96','2','4','8','16','32','64','128','256']),
                EnumParameter('p5', ['256','2','4','8','16','32','64','96','128']),
                EnumParameter('p6', ['100','10','20','40','64','80','128','160','200']),
                EnumParameter('p7', ['none','compact','scatter','balanced','disabled','explicit']),
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
    RSBench_Tuner().main()

