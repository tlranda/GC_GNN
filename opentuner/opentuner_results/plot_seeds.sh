#!/bin/bash

# Plot all seeds of the same technique using dual_oracle
for d in `ls`; do
    for technique in `ls -l ${d}/seed_* | awk '{print $NF}' | sort | uniq | grep -e '.csv'`; do
        python3 ../dual_oracle.py --oracle-truth ../oracles/${d}/all_${d}.csv --inputs ${d}/seed_*/${technique};
    done;
done;

