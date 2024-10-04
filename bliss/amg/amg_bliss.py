# Builtin imports
import pathlib

# Dependent imports
import numpy as np
import pandas as pd
from GC_TLA.base_plopper import ECP_Plopper

# Local imports
from bliss_class import BLISS_Tuner

class AMG_Plopper(ECP_Plopper):
    def compileSTring(self, outfile, dictVal, *args, **kwargs):
        compile_cmd = "mpicc -fopenmp -std=c99 -fno-unroll-loops -O3 -mllvm -polly -mllvm "+\
                          "-polly-process-unprofitable -mllvm -polly-use-llvm-names -ffast-math "+\
                          f"-march=native -o {outfile[:-len(self.output_extension)]} {outfile} -I./ "+\
                          "-I./struct_mv -I./sstruct_mv -I./IJ_mv -I./seq_mv -I./parcsr_mv -I./utilities "+\
                          "-I./parcsr_ls -I./krylov -DTIMER_USE_MPI -DHYPRE_USING_OPENMP -DHYPRE_LONG_LONG "+\
                          "-DHYPRE_NO_GLOBAL_PARTITION -DHYPRE_USING_PERSISTENT_COMM -DHYPRE_HOPSCOTCH "+\
                          "-DHYPRE_BIGINT -DHYPRE_TIMING -L./parcsr_ls -L./parcsr_mv -L./IJ_mv -L./seq_mv "+\
                          "-L./sstruct_mv -L./struct_mv -L./krylov -L./utilities -lparcsr_ls -lparcsr_mv "+\
                          "-lseq_mv -lsstruct_mv -lIJ_mv -lHYPRE_struct_mv -lkrylov -lHYPRE_utilities -lm "
            return compile_cmd
    def runString(self, outfile, dictVal, *args, **kwargs):
        d_size = args[0]
        return f"mpirun -np 1 {outfile[:-len(self.output_extension)]} -laplace -n {d_size} {d_size} {d_size} -P 1 1 1"
    def getTime(self, process, dictVal, *args, **kwargs):
        try:
            return float(process.stdout.decode('utf-8').split('\n')[-1].split(' ')[-1])
        except ValueError:
            try:
                return float(process.stderr.decode('utf-8').split('\n')[-1].split(' ')[-1])
            except ValueError:
                return None

class amg_Tuner(BLISS_Tuner):
    default_percentage_sampled_by_acq = 0.10
    default_max_calls = 200

    def __init__(self, *args):
        super().__init__(*args)
        template = pathlib.Path('./mmp.c').resolve()
        self.plopper = AMG_Plopper(str(template), str(template.parents[0]), output_extension='.c')
        self.plopper.metric = self.metric

    def metric(self, timing_list):
        return np.asarray(timing_list)[:,1:].mean()

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

