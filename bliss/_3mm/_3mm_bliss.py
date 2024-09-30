# Builtin imports
import pathlib

# Dependent imports
import numpy as np
import pandas as pd
from GC_TLA.base_plopper import Polybench_Plopper

# Local imports
from bliss_class import BLISS_Tuner

class _3mm_Tuner(BLISS_Tuner):
    def __init__(self, *args):
        super().__init__(*args)
        template = pathlib.Path('./mmp.c').resolve()
        self.plopper = Polybench_Plopper(template, template.parents[0], output_extension='.c')

    def build_parameters(self):
        p0 = [" ", "#pragma clang loop(j2) pack array(A) allocate(malloc)"]
        p1 = [" ", "#pragma clang loop(i1) pack array(B) allocate(malloc)"]
        p2 = [" ", "#pragma clang loop(i1,j1,k1,i2,j2) interchange permutation(j1,k1,i1,j2,i2)"]
        p3 = ['256','4','8','16','20','32','50','64','80','96','100','128','512','1024','2048']
        p4 = ['256','4','8','16','20','32','50','64','80','100','128','512','1024','2048']
        p5 = ['256','4','8','16','20','32','50','64','80','100','128','512','1024','2048']
        p6 = [" ", "#pragma clang loop(j2) pack array(C) allocate(malloc)"]
        p7 = [" ", "#pragma clang loop(i1) pack array(D) allocate(malloc)"]
        p8 = [" ", "#pragma clang loop(j2) pack array(E) allocate(malloc)"]
        p9 = [" ", "#pragma clang loop(i1) pack array(F) allocate(malloc)"]
        return [p0,p1,p2,p3,p4,p5,p6,p7,p8,p9]

    def objective(self, configuration, delay):
        configuration = dict((f'p{ind}', self.parameters[ind][v])
                             for (ind,v) in enumerate(configuration))
        obj = self.plopper.objective(configuration, f" -D{self.args.size}_DATASET")
        return obj * -1

    def build(self, prs=None):
        prs = super().build(prs)
        _3mm = prs.add_argument_group("3mm")
        _3mm.add_argument("--size", choices=['SM','XL'], default=None, required=True,
                          help="Size to tune")
        return prs

if __name__ == '__main__':
    import pdb
    pdb.set_trace()
    x = _3mm_Tuner()
    x.run_BLISS()

