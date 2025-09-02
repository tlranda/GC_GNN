#!/bin/bash

# Execute all seeds on all sizes for all techniques, log failures
#for size in "SM" "XL" ; do
for size in "SM" ; do
    mkdir -p bliss_results/${size};
    for seed in "1234" "2024" "9999" ; do
        todo="PYTHONPATH=.. python3 syr2k_bliss.py --max-calls 200 --size ${size} --seed ${seed} --csv-output bliss_results/${size}/bliss_seed_${seed}.csv;";
        echo "${todo}";
        eval "${todo}";
        if [[ $? -ne 0 ]]; then
            echo "[ $(date) ] Failed bliss ${size} ${seed}" >> bliss_failures.log;
        fi
    done;
done;

