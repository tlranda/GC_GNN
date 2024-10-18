#!/bin/bash

# Execute all seeds on all sizes for all techniques, log failures
for size in "SM" "XL" ; do
    for seed in "1234" "2024" "9999" ; do
        mkdir -p opentuner_results/${size}/seed_${seed};
        strategies=$( PYTHONPATH=.. python3 syr2k_opentuner.py -lt | grep -v -e "PatternSearch" -e "pso-OX3" -e "pso-OX1" -e "RegularNelderMead" -e "RightNelderMead" -e "RegularTorczon" -e "RightTorczon" -e "MultiNelderMead" -e "MultiTorczon");
        for strat in ${strategies[@]}; do
            expect="opentuner_results/${size}/seed_${seed}/opentuner_${strat}.csv";
            todo="PYTHONPATH=.. python3 syr2k_opentuner.py --test-limit 200 --size ${size} --no-dups --technique ${strat} --random-seed ${seed} --csv-output ${expect}";
            if [[ -e ${expect} ]]; then
                line_count=$( wc -l ${expect} | awk '{print $1}');
                if [[ ${line_count} -ge 200 ]]; then
                    echo "OK ${expect} has expected 200 lines -- Skipping";
                else
                    echo "File ${expect} exists with ${line_count} lines, running to get 200";
                    echo $todo;
                    eval $todo;
                    if [[ $? -ne 0 ]]; then
                        echo "Failed opentuner ${size} ${seed} ${strat}" >> opentuner_failures.log;
                    fi
                fi
            else
                echo $todo;
                eval $todo;
                if [[ $? -ne 0 ]]; then
                    echo "Failed opentuner ${size} ${seed} ${strat}" >> opentuner_failures.log;
                fi
            fi
        done;
    done;
done;

