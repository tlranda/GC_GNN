#!/bin/bash

#source /home/trandall/set_swing_environment.sh;
#module remove nvhpc;
cd /home/trandall/GC_GNN/opentuner/_3mm/;

#techniques=$( PYTHONPATH=.. python3 _3mm_opentuner.py -lt --size SM );
techniques=( "PerfectRandom" "OS2" );
for technique in ${techniques[@]}; do
    for size in "SM" "XL"; do
        mkdir -p opentuner_results/${technique}/${size};
        for seed in "1234" "2024" "9999"; do
            date;
            todo="PYTHONPATH=.. python3 _3mm_opentuner.py --size ${size} --random-seed ${seed} --technique ${technique} --csv-output opentuner_results/${technique}/${size}/opentuner_seed_${seed}.csv";
            echo $todo;
            #eval $todo;
            if [[ $? -ne 0 ]]; then
                echo "[ $(date) ] Failed OpenTuner ${size} ${seed} ${technique}" >> opentuner_failures.log;
            fi
            date;
        done;
    done;
done;

