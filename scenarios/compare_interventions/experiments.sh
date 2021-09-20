# N=8
for sample in {2000..2500..50}
do
  for run in {1..30}
  # (
  do
    # ((i=i%N)); ((i++==0)) && wait
    behave features/compare_interventions.feature -D estimates="results/estimates-2500/$sample/estimates-$run.csv" -D data="results/data/data-2500/data-2500-$run.csv" -D sample=$sample -D seed=5
  done
  # )
done
behave features/compare_interventions.feature -D estimates="results/estimates-2500/rct/estimates.csv"
