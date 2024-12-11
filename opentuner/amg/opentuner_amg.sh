#!/bin/bash

EXECUTE="${EXECUTE-1}";
MODULE="${MODULE-1}";

if [[ ${MODULE} -eq 1 ]]; then
    source /home/trandall/set_swing_environment.sh;
    module remove nvhpc;
fi
cd /home/trandall/GC_GNN/opentuner/amg/;


#techniques=$( PYTHONPATH=.. python3 amg_opentuner.py -lt --dataset-size SM );
#techniques=( "AUCBanditMetaTechniqueB" "NormalGreedyMutation10" "ga-PX" );
techniques=( "NormalGreedyMutation10" );
for technique in ${techniques[@]}; do
    for size in "SM" "XL"; do
        mkdir -p opentuner_results/${technique}/${size};
        for seed in "1234" "2024" "9999"; do
            expect="opentuner_results/${technique}/${size}/opentuner_seed_${seed}.csv";
            date;
            if [[ -f "${expect}" ]]; then
                todo="wc -l ${expect}";
            else
                todo="PYTHONPATH=.. python3 amg_opentuner.py --dataset-size ${size} --random-seed ${seed} --test-limit 200 --technique ${technique} --csv-output ${expect}";
            fi
            echo $todo;
            if [[ "${todo}" == "wc -l "* || ${EXECUTE} -eq 1 ]]; then
                eval $todo;
            fi
            if [[ $? -ne 0 ]]; then
                echo "[ $(date) ] Failed OpenTuner ${size} ${seed} ${technique}" >> opentuner_failures.log;
            fi
            date;
        done;
    done;
done;

