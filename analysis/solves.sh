#!/bin/sh

# Settings
override=1; # Set =0 to not repeat experiments when directory already exists. Set =1 to clobber existing directories/repeat experiments

# Static Components
fit_seed="1234";
sample_seeds="1234 2024 9999 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20";
input_data="oracles/SM/all_SM.csv";
problem_file="~/ANL_23/dependencies/GC_TLA/Benchmarks/polybench/syr2k/problem.py";
input_scale="SM";
budget_ideal="0.3";
custom_data_schedule="full_schedule.npy";
# Fix values in place
static_args="--fit-seed ${fit_seed} --sample-seed ${sample_seeds} --input-data ${input_data} --problem-file ${problem_file} --input-scale ${input_scale} --custom-data-schedule ${custom_data_schedule} --budget-ideal ${budget_ideal} --always-max-evals";

# Dynamic components
fit_method=( "objective-best" "objective-worst" "objective-cocktail" );
fit_method_name=( "obj_b" "obj_w" "obj_c" );
transfer_method=( "interpolate" "extrapolate+" "extrapolate-" );
transfer_method_name=( "intpl" "extpl+" "extpl-" );
transfer_permutation=( "naive" "anti-naive" "shuffle" );
transfer_permutation_name=( "naive" "anti" "shuffl" );

base_call="python3 backwards_solve.py ${static_args}";
base_analysis_call="python3 backwards_analysis.py";

for (( fm=0; fm<${#fit_method[@]}; fm++ )); do
  for (( tm=0; tm<${#transfer_method[@]}; tm++ )); do
    for (( tp=0; tp<${#transfer_permutation[@]}; tp++ )); do
      # Set dynamic elements
      dynamic_args="--fit-method ${fit_method[$fm]} --transfer-method ${transfer_method[$tm]} --transfer-permutation ${transfer_permutation[$tp]}";
      experiment_dir="${fit_method_name[$fm]}_${transfer_method_name[$tm]}_${transfer_permutation_name[$tp]}";
      dynamic_files="--log-experiment ${experiment_dir}/logs.json --output ${experiment_dir}/gc.csv";
      dynamic_analysis="--traces ${experiment_dir}/logs.json --title \"${experiment_dir}\" --output ${experiment_dir}/${experiment_dir}.png";
      dynamic_mean_analysis="--traces ${experiment_dir}/logs.json --title \"${experiment_dir}\" --output ${experiment_dir}/${experiment_dir}_mean.png --mean-area";

      # Assemble and launch full calls
      call="${base_call} ${dynamic_args} ${dynamic_files}";
      analysis_call="${base_analysis_call} ${dynamic_analysis}";
      analysis_mean_call="${base_analysis_call} ${dynamic_mean_analysis}";

      if [[ -e ${experiment_dir} ]] && [[ ${override} -ne 1 ]]; then
        echo "Experiment already exists for below call -- not re-running (edit override variable in $0 to change behavior)";
        echo "${call}";
        echo "${analysis_call}";
        eval "${analysis_call}";
        if [[ $? -ne 0 ]]; then
          break 3;
        fi
        echo "${analysis_mean_call}";
        eval "${analysis_mean_call}";
        if [[ $? -ne 0 ]]; then
          break 3;
        fi
        continue;
      fi
      echo "${call}";
      eval "${call}";
      if [[ $? -ne 0 ]]; then
        break 3;
      fi
      echo "${analysis_call}";
      eval "${analysis_call}";
      if [[ $? -ne 0 ]]; then
        break 3;
      fi
      echo "${analysis_mean_call}";
      eval "${analysis_mean_call}";
      if [[ $? -ne 0 ]]; then
        break 3;
      fi
    done;
  done;
done;
