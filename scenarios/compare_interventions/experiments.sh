N=8
for run in {1..30}
do
  (
  for sample in {50..2500..50}
  do
    ((i=i%N)); ((i++==0)) && wait
    behave features/compare_interventions.feature -D estimates="results/estimates/$sample/estimates-$run.csv" -D data="results/data-2/data-2500-$run.csv" -D sample=$sample -D seed=5 &
  done
  )
  behave features/compare_interventions.feature -D estimates="results/estimates/rct/estimates-$run.csv"
done
