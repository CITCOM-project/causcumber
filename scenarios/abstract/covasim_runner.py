import covasim as cv
import pandas as pd

import sys

runs = pd.read_csv("results/compare_interventions_basic/data.csv", index_col=0)
outfile = "results/compare_interventions_basic/data.csv"
if len(sys.argv) > 1:
    runs = pd.read_csv(
        f"results/compare_interventions_basic/{sys.argv[1]}.csv", index_col=0
    )
    outfile = f"results/compare_interventions_basic/{sys.argv[1]}.csv"


desired_outputs = ["cum_tests", "cum_quarantined", "cum_infections", "cum_deaths"]

all_runs = []
n_runs = 30

for i, run in runs.iterrows():
    testing = cv.test_prob(
        symp_prob=run["symp_prob"],
        asymp_prob=run["asymp_prob"],
        symp_quar_prob=run["symp_quar_prob"],
        asymp_quar_prob=run["asymp_quar_prob"],
    )
    print(f"RUN: {i}/{len(runs)}")
    tracing = cv.contact_tracing(trace_probs=run["trace_probs"])
    run_params = {k: run[k] for k in run.to_dict() if "_prob" not in k}
    sim = cv.Sim(interventions=[testing, tracing], pop_type="hybrid", **run_params)
    msim = cv.MultiSim(sim)
    msim.run(n_runs=n_runs, verbose=0)
    results = {k: [] for k in desired_outputs}
    results["quar_period"] = []
    for sim in msim.sims:
        df = sim.to_df()
        quar_period = 14
        for i in sim["interventions"]:
            if hasattr(i, "quar_period"):
                quar_period = i.quar_period
        df = df[desired_outputs]

        for k in desired_outputs:
            results[k].append(df[k].iloc[-1])

        results["quar_period"].append(quar_period)

    data = pd.DataFrame(results)
    for k, v in run.items():
        data[k] = [v for _ in range(n_runs)]
    all_runs.append(data)
pd.concat(all_runs).to_csv(outfile)
