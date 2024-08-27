#!/bin/bash

# Make sure IFS doesn't ruin things
old_IFS="${IFS}";
IFS="^";

sizes=( "SM" "XL" );
empirical_data=( "gc_source_tune_perf_obj/SM/syr2k_train_empirical_oracle_sm_seed_*" "gc_source_tune_perf_obj/XL/syr2k_train_empirical_oracle_xl_seed_*" );
empirical_budget=( "20" "15" );
empirical_relabel="BO->GC (seed ";
mga_data=( "mga_source_tune_perf_obj/SM/syr2k_train_mga_oracle_sm_seed_*" "mga_source_tune_perf_obj/XL/syr2k_train_mga_oracle_xl_seed_*" );
mga_budget=( "15" "15" );
mga_relabel="MGA->GC (seed ";
oracle_data=( "oracles/SM/all_SM.csv" "oracles/XL/all_XL.csv");
mga_oracle_data=( "oracles/SM/mga_sm_predictions.csv" "oracles/XL/mga_xl_predictions.csv" );
seeds=( 1234 2024 9999 );

for (( idx=0; idx < ${#sizes[@]}; ++idx )); do
  # CONSTANTS
  size=${sizes[$idx]};
  o_data=${oracle_data[$idx]};
  basic_string="python3 dual_oracle.py --zoom-y 0.1 --title \"[Syr2k ${size}] Brute-Forced Search Space\" --oracle-truth ${o_data}";

  # For usage in later cases
  mo_data=${mga_oracle_data[$idx]};

  # ALL empirically trained cases
  emp_data=${empirical_data[$idx]};
  emp_relabel="";
  for seed in ${seeds[@]}; do
    emp_relabel+=" \"${empirical_relabel}${seed})\"";
  done;
  emp_budget=${empirical_budget[$idx]};
  emp_string="${basic_string} --inputs ${emp_data} --relabel ${emp_relabel} --budget ${emp_budget}";
  # Class 1: Evaluate BO->GC->Empirical
  emp_emp_string="${emp_string} --export ${size}_BO_GC_Empirical";
  # Class 2: Evaluate BO->GC->Oracle
  emp_orc_string="${emp_string} --oracle-rank ${o_data} --export ${size}_BO_GC_Oracle";
  # Class 3: Evaluate BO->GC->MGA
  emp_mga_string="${emp_string} --oracle-rank ${mo_data} --export ${size}_BO_GC_MGA";
  eval_strings=( ${emp_emp_string} ${emp_orc_string} ${emp_mga_string} );

  # ALL MGA trained cases
  m_data=${mga_data[$idx]};
  m_relabel="";
  for seed in ${seeds[@]}; do
    m_relabel+=" \"${mga_relabel}${seed})\"";
  done;
  m_budget=${mga_budget[$idx]};
  mga_string="${basic_string} --inputs ${m_data} --relabel ${m_relabel} --budget ${m_budget}";
  # Class 1: Evaluate MGA->GC->Empirical
  mga_emp_string="${mga_string} --export ${size}_MGA_GC_Empirical";
  # Class 2: Evaluate MGA->GC->Oracle
  mga_orc_string="${mga_string} --oracle-rank ${o_data} --export ${size}_MGA_GC_Oracle";
  # Class 3: Evaluate MGA->GC ->MGA
  mga_mga_string="${mga_string} --oracle-rank ${mo_data} --export ${size}_MGA_GC_MGA";
  eval_strings+=( ${mga_emp_string} ${mga_orc_string} ${mga_mga_string} );

  # Print and evaluate
  for estring in ${eval_strings[@]}; do
    echo "${estring}";
    eval "${estring}";
  done;
done;

# Restore IFS, though you shouldn't source this script so technically I don't have to restore it
IFS=${old_IFS};

