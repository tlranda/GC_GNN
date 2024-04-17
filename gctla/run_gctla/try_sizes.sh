#!/bin/bash

#SIZES=( 1 8 32 64 128 256 512 768 );
SIZES=( 8 32 64 128 256 512 768 );

for size in ${SIZES[@]}; do
  echo "Size ${size}";
  # Change N_FEATURES
  sed -i "s/^N_FEATURES = .*/N_FEATURES = ${size}/" train_embeddings.py
  # Confirm N_FEATURES set OK
  grep -e "^N_FEATURES = " train_embeddings.py

  # Execute the run
  time python3 train_embeddings.py | tee train_${size}_embeddings.out;

  # Restore to None
  sed -i "s/^N_FEATURES = .*/N_FEATURES = None/" train_embeddings.py
done;

