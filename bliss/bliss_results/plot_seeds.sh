#!/bin/bash

# Plot all seeds of the same technique using dual_oracle
for d in `ls -d */`; do
    d="${d::-1}";
    python3 ../dual_oracle.py --oracle-truth ../oracles/${d}/all_${d}.csv --inputs ${d}/*.csv;
done;

