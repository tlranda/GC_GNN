import os
import subprocess
import argparse

def build():
    prs = argparse.ArgumentParser()
    prs.add_argument('--output-script', default='compile_script.sh', help='Path for bash script to be written to')
    prs.add_argument('--input-dir', default='syr2k_recreations', help='Directory to read prepared templates from')
    prs.add_argument
    return prs

def parse(prs=None, args=None):
    if prs is None:
        prs = build()
    if args is None:
        args = prs.parse_args()
    return args

def main(args=None):
    args = parse(args=args)

    cmd_template = "/lcrc/project/EE-ECP/jkoo/sw/clang13.2/release_pragma-clang-loop/bin/clang {} polybench.c "+
                   "-I/home/trandall/ytune_2022/ytopt_tlranda/ytopt/benchmark/syr2k_exp {} -DPOLYBENCH_TIME "+
                   "-std=c99 -fno-unroll-loops -O3 -mllvm -polly -mllvm -polly-process-unprofitable "+
                   "-mllvm -polly-use-llvm-names -ffast-math -march=native -o {}"
    with open(args.output_script, 'w') as f:
        for fname in sorted(os.listdir(args.input_dir)):
            if not fname.endswith('.c'):
                continue
            # This is hardcoded for syr2k detection for now -- a better means of dataset selection could
            # be extracted from GC_TLA at some point
            size = '-DSMALL_DATASET' if 'syr2k_S' in fname else '-DLARGE_DATASET'
            cmd = cmd_template.format(args.input_dir+'/'+fname, size, args.input_dir+'/'+fname.rsplit('.',1)[0])
            f.write(f'echo "{cmd}"'+"\n")
            f.write(cmd+"\n")
            f.write("if [ $? -ne 0 ]; then exit; fi;\n")

