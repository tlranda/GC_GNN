#!/bin/bash

empirical_SM_data="gc_source_tune_perf_obj/SM/syr2k_train_empirical_oracle_sm_seed_*";
empirical_XL_data="gc_source_tune_perf_obj/XL/syr2k_train_empirical_oracle_xl_seed_*";
empirical_relabel="Empirical_";
empirical_SM_budget="20";
empirical_XL_budget="15";
mga_SM_data="mga_source_tune_perf_obj/SM/syr2k_train_mga_oracle_sm_seed_*";
mga_XL_data="mga_source_tune_perf_obj/XL/syr2k_train_mga_oracle_xl_seed_*";
mga_relabel="MGA_";
mga_SM_budget="15";
mga_XL_budget="15";
oracle_SM_data="oracles/SM/all_SM.csv";
oracle_XL_data="oracles/XL/all_XL.csv";
seeds=( 1234 2024 9999 );

basic_string="python3 visualize.py --title \"Syr2k GC predictions for ";

# SM figures
empirical_only="${basic_string} SM\" --inputs ${empirical_SM_data} --oracle-rank ${oracle_SM_data} --relabel ";
for seed in ${seeds[@]}; do
  empirical_only="${empirical_only} ${empirical_relabel}${seed}";
done;
empirical_only="${empirical_only} --indicate-budget ";
for seed in ${seeds[@]}; do
  empirical_only="${empirical_only} ${empirical_SM_budget}";
done;
empirical_only="${empirical_only} --export Empirical_SM";

mga_only="${basic_string} SM\" --inputs ${mga_SM_data} --oracle-rank ${oracle_SM_data} --relabel ";
for seed in ${seeds[@]}; do
  mga_only="${mga_only} ${mga_relabel}${seed}";
done;
mga_only="${mga_only} --indicate-budget ";
for seed in ${seeds[@]}; do
  mga_only="${mga_only} ${mga_SM_budget}";
done;
mga_only="${mga_only} --export MGA_SM";

both="${basic_string} SM\" --inputs ${empirical_SM_data} ${mga_SM_data} --oracle-rank ${oracle_SM_data} --relabel ";
for seed in ${seeds[@]}; do
  both="${both} ${empirical_relabel}${seed}";
done;
for seed in ${seeds[@]}; do
  both="${both} ${mga_relabel}${seed}";
done;
both="${both} --indicate-budget ";
for seed in ${seeds[@]}; do
  both="${both} ${empirical_SM_budget}";
done;
for seed in ${seeds[@]}; do
  both="${both} ${mga_SM_budget}";
done;
both="${both} --export Both_SM";

echo $empirical_only
eval $empirical_only
echo $mga_only
eval $mga_only
echo $both
eval $both

# XL figures
empirical_only="${basic_string} XL\" --inputs ${empirical_XL_data} --oracle-rank ${oracle_XL_data} --relabel ";
for seed in ${seeds[@]}; do
  empirical_only="${empirical_only} ${empirical_relabel}${seed}";
done;
empirical_only="${empirical_only} --indicate-budget ";
for seed in ${seeds[@]}; do
  empirical_only="${empirical_only} ${empirical_XL_budget}";
done;
empirical_only="${empirical_only} --export Empirical_XL";

mga_only="${basic_string} XL\" --inputs ${mga_XL_data} --oracle-rank ${oracle_XL_data} --relabel ";
for seed in ${seeds[@]}; do
  mga_only="${mga_only} ${mga_relabel}${seed}";
done;
mga_only="${mga_only} --indicate-budget ";
for seed in ${seeds[@]}; do
  mga_only="${mga_only} ${mga_XL_budget}";
done;
mga_only="${mga_only} --export MGA_XL";

both="${basic_string} XL\" --inputs ${empirical_XL_data} ${mga_XL_data} --oracle-rank ${oracle_XL_data} --relabel ";
for seed in ${seeds[@]}; do
  both="${both} ${empirical_relabel}${seed}";
done;
for seed in ${seeds[@]}; do
  both="${both} ${mga_relabel}${seed}";
done;
both="${both} --indicate-budget ";
for seed in ${seeds[@]}; do
  both="${both} ${empirical_XL_budget}";
done;
for seed in ${seeds[@]}; do
  both="${both} ${mga_XL_budget}";
done;
both="${both} --export Both_XL";

echo $empirical_only
eval $empirical_only
echo $mga_only
eval $mga_only
echo $both
eval $both

