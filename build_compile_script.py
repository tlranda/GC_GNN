import os
import subprocess
import argparse
import pathlib

def build():
    prs = argparse.ArgumentParser()
    prs.add_argument('--output-script', default='compile_script.sh', help='Path for bash script to be written to')
    prs.add_argument('--input-dir', default='syr2k_recreations', help='Directory to read prepared templates from')
    prs.add_argument('--clang', default='/lcrc/project/EE-ECP/jkoo/sw/clang13.2/release_pragma-clang-loop/bin/clang', help="Clang to use (default: Custom Swing system path)")
    prs.add_argument('--include', default="/home/trandall/ytune_2022/ytopt_tlranda/ytopt/benchmark/syr2k_exp", help="Include directories to utilize in compilation")
    prs.add_argument('--IR', action='store_true', help="Only build IR's")
    prs.add_argument('--AS', action='store_true', help="Only do IR assembly")
    return prs

def parse(prs=None, args=None):
    if prs is None:
        prs = build()
    if args is None:
        args = prs.parse_args()
    if args.AS and args.clang[-7:] != "llvm-as":
        args.clang = str(pathlib.Path(args.clang).parent.joinpath("llvm-as"))
    for attr in ['output_script', 'input_dir', 'clang', 'include']:
        setattr(args, attr, pathlib.Path(getattr(args, attr)))
    return args

def main(args=None):
    args = parse(args=args)

    if args.IR:
        cmd_template = "{} {} polybench.c -I{} -DPOLYBENCH_TIME -std=c99 -fno-unroll-loops -O3 "+\
                       "-mllvm -polly -mllvm -polly-process-unprofitable "+\
                       "-mllvm -polly-use-llvm-names -ffast-math -march=native -S -emit-llvm"
    elif args.AS:
        cmd_template = "{} {} -o {}"
    else:
        cmd_template = "{} {} polybench.c -I{} -DPOLYBENCH_TIME -std=c99 -fno-unroll-loops -O3 "+\
                       "-mllvm -polly -mllvm -polly-process-unprofitable "+\
                       "-mllvm -polly-use-llvm-names -ffast-math -march=native {} -o {}"

    with open(args.output_script, 'w') as f:
        for fname in sorted(args.input_dir.iterdir()):
            if fname.suffix != '.c':
                continue
            # This is hardcoded for syr2k detection for now -- a better means of dataset selection could
            # be extracted from GC_TLA at some point
            size = '-DSMALL_DATASET' if 'syr2k_S' in str(fname) else '-DLARGE_DATASET'
            if args.AS:
                cmd = cmd_template.format(args.clang,
                                          fname.with_suffix('.ll'),
                                          fname.with_suffix('.bc'))
            else:
                cmd = cmd_template.format(args.clang,
                                          fname,
                                          args.include,
                                          size,
                                          fname.with_suffix(''))
            f.write(f'echo "{cmd}"'+"\n")
            f.write(cmd+"\n")
            if args.IR:
                f.write(f"if [ $? -ne 0 ]; then exit; else mv *.ll {fname.with_suffix('.ll')}; fi;\n")
            else:
                f.write("if [ $? -ne 0 ]; then exit; fi;\n")

if __name__ == '__main__':
    main()

