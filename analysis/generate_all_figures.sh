#!/bin/bash

#collate=( "syr2k" "3mm" "heat3d" "amg" "rsbench" "sw4lite" );
collate=( "heat3d" "amg" "rsbench" );
types=( "GaussianCopula" "opentuner" "bliss" "GPTune" );
for c in ${collate[@]}; do
    for t in ${types[@]}; do
        todo=("python3 "
             "endToEnd.py "
             "arafat_all_convert/${c}/all_arafat_${c}.csv "
             "--rank-column score "
             "--invert-sort "
             "--searches search_compilations/${c}/*${t}*.csv "
             "--export Figures/${c}_${t} "
             );
        todo="${todo[*]}";
        echo "${todo}";
        eval "${todo}";
        if [ $? -ne 0 ]; then
            exit;
        fi;
    done;
done;
