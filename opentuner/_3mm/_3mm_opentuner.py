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

"""
    Based on demo: https://opentuner.org/tutorial/gettingstarted,
    adapted to lookup results from existing dataset
"""

class _3mm_Tuner(OpenTuner_Tuner):
    def pmetric(self, timing_list):
        return np.asarray(timing_list)[:,1:].mean()

    def build(self):
        prs, opentuner_args, extra_args = super().build()
        _3mm = prs.add_argument_group('3MM')
        _3mm.add_argument('--size', choices=['SM','XL'], default=None, required=True,
                          help="Problem size to tune")
        return prs, opentuner_args, extra_args

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)

        self.dataset_size = self.args.size

        template = pathlib.Path('./mmp.c').resolve()
        self.plopper = Polybench_Plopper(str(template), str(template.parents[0]),
                                         output_extension='.c')
        self.plopper.metric = self.pmetric

        self.configure_desired_result([f'p{_}' for _ in range(10)]+['objective'])
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
                EnumParameter('p3', ['256','4','8','16','20','32','50','64','80','96','100','128','512','1024','2048']),
                EnumParameter('p4', ['256','4','8','16','20','32','50','64','80','100','128','512','1024','2048']),
                EnumParameter('p5', ['256','4','8','16','20','32','50','64','80','100','128','512','1024','2048']),
                EnumParameter('p6', [" ", "#pragma clang loop(j2) pack array(C) allocate(malloc)"]),
                EnumParameter('p7', [" ", "#pragma clang loop(i1) pack array(D) allocate(malloc)"]),
                EnumParameter('p8', [" ", "#pragma clang loop(j2) pack array(E) allocate(malloc)"]),
                EnumParameter('p9', [" ", "#pragma clang loop(i1) pack array(F) allocate(malloc)"]),
                ]
        for parameter in parameters:
            manipulator.add_parameter(parameter)
        return manipulator

    def run(self, desired_result, input, limit):
        """
        'Compile' and 'run' a given configuration, then return performance
        """
        cfg = desired_result.configuration.data
        cfg_params = dict((k.upper(),cfg[k]) for k in [f'p{_}' for _ in range(10)])
        result_time = self.plopper.findRuntime(list(cfg_params.values()), list(cfg_params.keys()), f" -D{self.dataset_size}_DATASET")
        cfg['objective'] = result_time
        self.add_opentuner_result(desired_result)
        return Result(time=result_time)

if __name__ == '__main__':
    _3mm_Tuner().main()

