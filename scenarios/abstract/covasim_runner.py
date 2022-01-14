import covasim as cv
import pandas as pd

import sys

import random

runs = pd.read_csv(
    f"results/compare_interventions_basic/runs/{sys.argv[1]}.csv", index_col=0
)
outfile = f"results/compare_interventions_basic/data/{sys.argv[1]}.csv"


desired_outputs = ["cum_tests", "cum_quarantined", "cum_infections", "cum_deaths"]

all_runs = []
n_runs = 2


def fuzz(param, prob=0.8):
    if random.random() > prob:
        return param
    if isinstance(param, str):
        return param
    if isinstance(param, int):
        return round(param + (random.uniform(-1, 1) * param))
    if isinstance(param, float):
        return param + (random.uniform(-1, 1) * param)
    raise ValueError(f"Parameter {param} of type {type(param)} could not be fuzzed.")


for i, run in runs.iterrows():
    print(f"RUN: {i+1}/{len(runs)}")
    for i in range(n_runs):
        run_params = {k: run[k] for k in run.to_dict()}
        for k in run_params:
            run_params[k] = fuzz(run_params[k])
        testing = cv.test_prob(
            symp_prob=run_params["symp_prob"],
            asymp_prob=run_params["asymp_prob"],
            symp_quar_prob=run_params["symp_quar_prob"],
            asymp_quar_prob=run_params["asymp_quar_prob"],
        )
        tracing = cv.contact_tracing(trace_probs=run_params["trace_probs"])
        run_params["rand_seed"] = i

        filtered_run_params = {k: run_params[k] for k in run_params if "_prob" not in k}

        sim = cv.Sim(interventions=[testing, tracing], pop_type="hybrid", **filtered_run_params)
        sim.run()
        results = {k: [] for k in desired_outputs}
        results["quar_period"] = []
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
        for k, v in run_params.items():
            data[k] = [v for _ in range(1)]
        all_runs.append(data)
pd.concat(all_runs).to_csv(outfile)
