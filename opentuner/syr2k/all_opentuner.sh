#!/bin/bash

# Execute all seeds on all sizes for all techniques, log failures
for size in "SM" "XL" ; do
    for seed in "1234" "2024" "9999" ; do
        mkdir -p opentuner_results/${size}/seed_${seed};
        for strat in `PYTHONPATH=.. python3 syr2k_opentuner.py -lt`; do
            echo $strat;
            PYTHONPATH=.. python3 syr2k_opentuner.py --test-limit 200 --size ${size} --no-dups --technique ${strat} --random-seed ${seed} --output opentuner_results/${size}/seed_${seed}/opentuner_${strat}.csv;
            if [[ $? -ne 0 ]]; then
                echo "Failed opentuner ${size} ${seed} ${strat}" >> opentuner_failures.log;
            fi
        done;
    done;
done;

