#!/usr/bin/env bash

for filename in observational_data/RQ2/*.csv; do
  behave features/compare_vaccines.feature --no-capture -D data="$filename" -D output_directory="results/RQ2"
  behave features/compare_vaccines.feature --no-capture -D data="$filename" -D disable_identification -D output_directory="results/RQ2"
done
