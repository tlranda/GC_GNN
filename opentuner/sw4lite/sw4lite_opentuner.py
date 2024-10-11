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
from ytopt.benchmark.base_plopper import Polybench_Plopper
#from GC_TLA.base_plopper import Polybench_Plopper

"""
    Based on demo: https://opentuner.org/tutorial/gettingstarted,
    adapted to lookup results from existing dataset
"""

class SW4Lite_Tuner(OpenTuner_Tuner):
    def pmetric(self, timing_list):
        return np.asarray(timing_list)[:,1:].mean()

    def build(self):
        prs, opentuner_args, extra_args = super().build()
        SW4Lite = prs.add_argument_group('SW4Lite')
        SW4Lite.add_argument('--dataset-size', choices=['SM','XL'], default=None, required=True,
                          help="Problem size to tune")
        return prs, opentuner_args, extra_args

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)

        self.dataset_size = self.args.dataset_size

        template = pathlib.Path('./mmp.c').resolve()
        self.plopper = Polybench_Plopper(str(template), str(template.parents[0]), output_extension='.c')
        self.plopper.metric = self.pmetric

        self.configure_desired_result([f'p{_}' for _ in range(8)]+['objective'])
        self.opentuner_results = pd.DataFrame(columns=sorted(self.opentuner_params))

    def manipulator(self):
        """
        Define the search space by creating a ConfigurationManipulator
        """
        manipulator = ConfigurationManipulator()
        # Options are not weighted by order, first option in list is default
        parameters = [
                EnumParameter('p0', ['64','2','4','8','16','32','48','96','128','192','256']),
                EnumParameter('p1', ['cores','threads','sockets']),
                EnumParameter('p2', ['close','spread','master']),
                EnumParameter('p3', ['static','dynamic']),
                EnumParameter('p4', [' ',"#pragma omp parallel for"]),
                EnumParameter('p5', [' ',"#pragma unroll (6)","#pragma unroll"]),
                EnumParameter('p6', ["#pragma omp for","#pragma omp for nowait"]),
                EnumParameter('p7', ["MPI_BARRIER(MPI_COMM_WORLD);",' ']),
                ]
        for parameter in parameters:
            manipulator.add_parameter(parameter)
        return manipulator

    def run(self, desired_result, input, limit):
        """
        'Compile' and 'run' a given configuration, then return performance
        """
        cfg = desired_result.configuration.data
        cfg_params = dict((k.upper(),cfg[k]) for k in [f'p{_}' for _ in range(8)])
        result_time = self.plopper.findRuntime(list(cfg_params.values()), list(cfg_params.keys()), f" -D{self.dataset_size}_DATASET")
        cfg['objective'] = result_time
        self.add_opentuner_result(desired_result)
        return Result(time=result_time)

if __name__ == '__main__':
    SW4Lite_Tuner().main()

