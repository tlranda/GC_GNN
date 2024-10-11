# Builtin imports
import pathlib

# Dependent imports
import numpy as np
import pandas as pd
from GC_TLA.base_plopper import ECP_Plopper

# Local imports
from bliss_class import BLISS_Tuner

def get_gpu_ids_from_section(section):
    ids = []
    for line in section:
        try:
            after_pipe_char = line.split('|', 1)[1].lstrip()
        except IndexError:
            continue
        try:
            gpu_id = int(after_pipe_char.split(' ',1)[0])
        except ValueError:
            pass
        else:
            ids.append(gpu_id)
    return ids

class SW4Lite_Plopper(ECP_Plopper):
    mapping = {'S': 3,
               'SM': 4,
               'M': 5,
               'ML': 6,
               'L': 7,
               'XL': 8}
    retries = 1
    def set_os_environ(self):
        import os, subprocess
        nvsmi = subprocess.run('nvidia-smi', shell=True, stdout=subprocess.PIPE)
        important = nvsmi.stdout.decode('utf-8').split('+')
        exists = get_gpu_ids_from_section("".join(important[3:-4]).split('\n'))
        occupied = get_gpu_ids_from_section("".join(important[-3:-2]).split('\n'))
        ok = set(exists).difference(set(occupied))
        if len(ok) > 0:
            least_used = list(ok)[0]
        else:
            import numpy as np
            least_used = exists[np.argmin([occupied.count(k) for k in exists])]
        os.environ['CUDA_VISIBLE_DEVICES'] = str(least_used)
        return dict(os.environ) #{'CUDA_VISIBLE_DEVICES': str(least_used)}

    def compileString(self, outfile, dictVal, *args, **kwargs):
        cmds = ["nvcc -O3 -x cu -Isrc -c -dc -arch=sm_60 -DSW4_CROUTINES -DSW4_CUDA "+\
                "-DSW4_NONBLOCKING -ccbin mpicxx -Xptxas -v -Xcompiler -fopenmp -DSW4_OPENMP "+\
                f"-Isrc/double -c {outfile} -o {outfile[:-len(self.output_extension)]}.o",

                "nvcc -arch=sm_60 -Xcompiler -fopenmp -ccbin mpicxx -o "+\
                f"{outfile[:-len(self.output_extension)]} main.o "+\
                f"{outfile[:-len(self.output_extension)]}.o Source.o SuperGrid.o "+\
                "GridPointSource.o time_functions_cu.o ew-cfromfort.o EW_cuda.o Sarray.o "+\
                "device-routines.o EWCuda.o CheckPoint.o Parallel_IO.o EW-dg.o MaterialData.o "+\
                "MaterialBlock.o Polynomial.o SecondOrderSection.o TimeSeries.o sacsubc.o "+\
                "curvilinear-c.o -lcuda -lcudart -L/lcrc/project/perfopt/trandall/sw/lapack-3.10.1 -llapack -lm -lblas -lgfortran",
                ]
        return ";".join(cmds)

    def runString(self, outfile, dictVal, *args, **kwargs):
        d_size = self.mapping[args[0][3:args[0].index('_DATASET')]]
        return f"mpirun -np 1 {outfile[:-len(self.output_extension)]} loh1/LOH.1-h100_s{d_size}.in"

    def getTime(self, process, dictVal, *args, **kwargs):
        try:
            return float(process.stdout.decode('utf-8').split(' ')[-1])
        except ValueError:
            try:
                return float(process.stderr.decode('utf-8').split(' ')[-1])
            except ValueError:
                return None

class sw4lite_Tuner(BLISS_Tuner):
    default_percentage_sampled_by_acq = 0.10
    default_max_calls = 200

    def __init__(self, *args):
        super().__init__(*args)
        template = pathlib.Path('./mmp.c').resolve()
        self.plopper = SW4Lite_Plopper(str(template), str(template.parents[0]), output_extension='.c')
        self.plopper.metric = self.metric

    def metric(self, timing_list):
        try:
            return np.asarray(timing_list)[:,1:].mean()
        except:
            return np.asarray(timing_list).mean()

    def build_parameters(self):
        p0 = ['64','2','4','8','16','32','48','96','128','192','256']
        p1 = ['cores','threads','sockets']
        p2 = ['close','spread','master']
        p3 = ['static','dynamic']
        p4 = [' ','#pragma omp parallel for']
        p5 = [' ','#pragma unroll (6)','#pragma unroll']
        p6 = ['#pragma omp for','#pragma omp for nowait']
        p7 = ['MPI_Barrier(MPI_COMM_WORLD);',' ']
        return [p0,p1,p2,p3,p4,p5,p6,p7]

    def objective(self, configuration, delay):
        configuration = dict((f'P{ind}', self.parameters[ind][v])
                             for (ind,v) in enumerate(configuration))
        obj = self.plopper.findRuntime(list(configuration.values()), list(configuration.keys()), f" -D{self.args.size}_DATASET")
        return obj * -1

    def build(self, prs=None):
        prs = super().build(prs)
        sw4lite = prs.add_argument_group("SW4Lite")
        sw4lite.add_argument("--size", choices=['SM','XL'], default=None, required=True,
                          help="Size to tune")
        return prs

if __name__ == '__main__':
    sw4lite_Tuner().run_BLISS()

