#!/bin/bash

source /home/trandall/sw4lite_swing.sh;
cd /home/trandall/GC_GNN/opentuner/sw4lite/;

#techniques=$( PYTHONPATH=.. python3 sw4lite_opentuner.py -lt --size SM );
techniques=( "AUCBanditMetaTechniqueB" "NormalGreedyMutation10" "ga-PX" );
for technique in ${techniques[@]}; do
    for size in "SM" "XL"; do
        mkdir -p opentuner_results/${technique}/${size};
        for seed in "1234" "2024" "9999"; do
            expect="opentuner_results/${technique}/${size}/opentuner_seed_${seed}.csv";
            date;
            if [[ -f "${expect}" ]]; then
                todo="wc -l ${expect}";
            else
                todo="PYTHONPATH=.. python3 sw4lite_opentuner.py --size ${size} --random-seed ${seed} --test-limit 200 --technique ${technique} --csv-output ${expect}";
            fi
            echo $todo;
            #eval $todo;
            if [[ $? -ne 0 ]]; then
                echo "[ $(date) ] Failed OpenTuner ${size} ${seed} ${technique}" >> opentuner_failures.log;
            fi
            date;
        done;
    done;
done;

