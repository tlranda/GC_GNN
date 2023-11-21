# Iowa State Tool Compatibility Check

After cloning this repository, please run the following:

```bash
python3 build_compile_script.py --clang <path/to/your/clang_10> --DIS
```

This should update the file `compile_script.sh`, which you can run without arguments: `./compile_script.sh`.
It will read all of the BitCode (.bc) files in the folder `syr2k_recreations` and attempt to convert them into LLVM IR's using your Clang's tools.
If there are errors, the script will halt, otherwise it should create files of the form `syr2k_recreations/mmp_syr2k_[SML]_[0-199]_reassembled.ll` (there are 600 such files in total).

Please attempt to use these files in your GNN tools.

I believe optimization of the disassembly is omitted by default, which may not be reasonable for our use case.
If optimization is required, add the flag `--with-opt` to the python script at the top, then rerun `./compile_script.sh`.
This includes basic optimization via your Clang tool, and may need to be customized (see [build_compile_script.py:68](https://github.com/tlranda/GC_GNN/blob/afe561e11944ab9813c3779714a6118aa612962f/build_compile_script.py#L68)).
Optimization takes a considerable amount of time, so expect this to take much longer than the original suggestion.

