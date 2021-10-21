import covasim as cv
import pandas as pd

runs = pd.read_csv("results/compare_interventions_basic/runs.csv", index_col=0)

desired_outputs = ["cum_tests", "cum_quarantined", "cum_infections", "cum_deaths"]

all_runs = []
for _, run in runs.iterrows():
    testing = cv.test_prob(
        symp_prob=run["symp_prob"],
        asymp_prob=run["asymp_prob"],
        symp_quar_prob=run["symp_quar_prob"],
        asymp_quar_prob=run["asymp_quar_prob"],
    )
    tracing = cv.contact_tracing(trace_probs=run["trace_probs"])
    params = {k: run[k] for k in run.to_dict() if "_prob" not in k}
    sim = cv.Sim(interventions=[testing, tracing], pop_type="hybrid", **params)
    msim = cv.MultiSim(sim)
    msim.run(n_runs=30, verbose=0)
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
    for k, v in params.items():
        data[k] = [v for _ in range(30)]
    all_runs.append(data)
pd.concat(all_runs).to_csv("results/compare_interventions_basic/data.csv")
