for run in $(seq $1 $2)
do
  for sample in {50..1000..50}
  do
    behave features/compare_interventions.feature -D estimates="results/estimates/$sample/estimates-$run.csv" -D data="results/data-1000-$run.csv" -D sample=$sample -D seed=5
  done
  behave features/compare_interventions.feature -D estimates="results/estimates/rct/estimates-$run.csv"
done
