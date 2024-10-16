# Builtin imports
import pathlib

# Dependent imports
import numpy as np
import pandas as pd
from ytopt.benchmark.amg_exp.problem import AMG_Plopper

# Local imports
from bliss_class import BLISS_Tuner

class amg_Tuner(BLISS_Tuner):
    default_percentage_sampled_by_acq = 0.10
    default_max_calls = 200

    def __init__(self, *args):
        super().__init__(*args)
        template = pathlib.Path('./mmp.c').resolve()
        self.plopper = AMG_Plopper(str(template), str(template.parents[0]), output_extension='.c')
        self.plopper.metric = self.metric

    def metric(self, timing_list):
        try:
            return np.asarray(timing_list)[:,1:].mean()
        except:
            return np.asarray(timing_list).mean()

    def build_parameters(self):
        p0 = ['8','4','5','6','7']
        p1 = ['100','10','20','40','64','80','128','160','200']
        p2 = [' ','#pragma clang unrolling full']
        p3 = [' ','#pragma omp parallel for']
        p4 = ['96','2','4','8','16','32','64','128','256']
        p5 = ['256','2','4','8','16','32','64','96','128']
        p6 = ['100','10','20','40','64','80','128','160','200']
        p7 = ['compact','scatter','balanced']
        p8 = ['cores','threads','sockets']
        return [p0,p1,p2,p3,p4,p5,p6,p7,p8]

    def objective(self, configuration, delay):
        configuration = dict((f'P{ind}', self.parameters[ind][v])
                             for (ind,v) in enumerate(configuration))
        obj = self.plopper.findRuntime(list(configuration.values()), list(configuration.keys()), f" -D{self.args.size}_DATASET")
        return obj * -1

    def build(self, prs=None):
        prs = super().build(prs)
        amg = prs.add_argument_group("AMG")
        amg.add_argument("--size", choices=['SM','XL'], default=None, required=True,
                          help="Size to tune")
        return prs

if __name__ == '__main__':
    amg_Tuner().run_BLISS()

