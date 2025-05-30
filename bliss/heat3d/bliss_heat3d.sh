#!/bin/bash

source /home/trandall/set_swing_environment.sh;
module remove nvhpc;
cd /home/trandall/GC_GNN/bliss/heat3d;

# Execute all seeds on all sizes for all techniques, log failures
for size in "SM" "EXTRALARGE" ; do
    mkdir -p bliss_results/${size};
    for seed in "1234" "2024" "9999" ; do
        date;
        todo="PYTHONPATH=.. python3 heat3d_bliss.py --max-calls 200 --size ${size} --seed ${seed} --csv-output bliss_results/${size}/bliss_seed_${seed}.csv;";
        echo "${todo}";
        eval "${todo}";
        if [[ $? -ne 0 ]]; then
            echo "[ $(date) ] Failed bliss ${size} ${seed}" >> bliss_failures.log;
        fi
        date;
    done;
done;

