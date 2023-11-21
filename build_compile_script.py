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
    prs.add_argument('--DIS', action='store_true', help="Only do Bitcode Disassembly")
    prs.add_argument('--with-opt', action='store_true', help="Add optimization to Bitcode Disassembly")
    return prs

def parse(prs=None, args=None):
    if prs is None:
        prs = build()
    if args is None:
        args = prs.parse_args()
    # Don't do more than one of these at once
    exclusives = ["IR", "AS", "DIS"]
    if sum([getattr(args, e) for e in exclusives]) > 1:
        multipleExclusiveOptions = f"Can only specify one of {', '.join(['--'+e for e in exclusives])} at a time"
        raise ValueError(multipleExclusiveOptions)
    # Keep relative path
    if args.AS and args.clang[-7:] != "llvm-as":
        args.clang = str(pathlib.Path(args.clang).parent.joinpath("llvm-as"))
    elif args.DIS and args.clang[-8:] != "llvm-dis":
        args.clang = str(pathlib.Path(args.clang).parent.joinpath("llvm-dis"))
    # Convert these attributes to pathlib Paths
    for attr in ['output_script', 'input_dir', 'clang', 'include']:
        setattr(args, attr, pathlib.Path(getattr(args, attr)))
    return args

def main(args=None):
    args = parse(args=args)

    if args.IR:
        cmd_template = "{} {} polybench.c -I{} -DPOLYBENCH_TIME -std=c99 -fno-unroll-loops -O3 "+\
                       "-mllvm -polly -mllvm -polly-process-unprofitable "+\
                       "-mllvm -polly-use-llvm-names -ffast-math -march=native -S -emit-llvm"
    elif args.AS or args.DIS:
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
            elif args.DIS:
                cmd = cmd_template.format(args.clang,
                                          fname.with_suffix('.bc'),
                                          fname.with_name(fname.stem+'_reassembled.ll'))
                if args.with_opt:
                    cmd += f"; {args.clang.with_name('opt')} -S -O3 {fname.with_name(fname.stem+'_reassembled.ll')} -o {fname.with_name(fname.stem+'_optimized.ll')}"
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

