#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Wed Nov  3 07:21:59 2021

@author: michael
"""

import argparse
import sys
import covasim as cv
import pandas as pd


def run_covasim(run_params, n_runs, desired_outputs, results_file=None):
    all_runs = []
    for i in range(n_runs):
        testing = cv.test_prob(
            symp_prob=run_params["symp_prob"],
            asymp_prob=run_params["asymp_prob"],
            symp_quar_prob=run_params["symp_quar_prob"],
            asymp_quar_prob=run_params["asymp_quar_prob"],
        )
        tracing = cv.contact_tracing(trace_probs=run_params["trace_probs"])
        run_params["rand_seed"] = i

        filtered_run_params = {k: run_params[k] for k in run_params if "_prob" not in k}

        sim = cv.Sim(
            interventions=[testing, tracing], pop_type="hybrid", **filtered_run_params
        )
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
    data = pd.concat(all_runs).reset_index()
    if results_file is not None:
        data.to_csv(results_file)
    return data


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Run Covasim.")

    parser.add_argument(
        "--n_days",
        type=int,
        nargs=1,
        help="Number of days to run the sim.",
        required=True,
    )
    parser.add_argument(
        "--quar_period", type=int, nargs=1, help="The quarantine period.", required=True
    )
    parser.add_argument(
        "--pop_size",
        type=int,
        nargs=1,
        help="The size of the population",
        required=True,
    )
    parser.add_argument(
        "--pop_infected",
        type=int,
        nargs=1,
        help="The number of people initially infected.",
        required=True,
    )
    parser.add_argument(
        "--location", type=str, nargs=1, help="The location.", required=True
    )

    parser.add_argument(
        "--symp_prob",
        type=float,
        nargs=1,
        help="The probability of a symptomatic person getting a test.",
        required=True,
    )
    parser.add_argument(
        "--asymp_prob",
        type=float,
        nargs=1,
        help="The probability of an asymptomatic person getting a test.",
        required=True,
    )
    parser.add_argument(
        "--symp_quar_prob",
        type=float,
        nargs=1,
        help="The probability of a symptomatic person in quarantine getting a test.",
        required=True,
    )
    parser.add_argument(
        "--asymp_quar_prob",
        type=float,
        nargs=1,
        help="The probability of an asymptomatic person in quarantine getting a test.",
        required=True,
    )
    parser.add_argument(
        "--trace_probs",
        type=float,
        nargs=1,
        help="The tracing probability.",
        required=True,
    )
    parser.add_argument(
        "--n_runs", type=int, nargs=1, help="The number of repeats.", default=[1]
    )
    parser.add_argument(
        "--desired_outputs",
        type=str,
        nargs="+",
        help="The number of repeats.",
        default=["cum_tests", "cum_quarantined", "cum_infections", "cum_deaths"],
    )
    parser.add_argument(
        "--results_file",
        type=str,
        nargs=1,
        help="Where to save the results.",
        required=True,
    )

    args = parser.parse_args(sys.argv[1:])
    run_params = {
        k: v[0]
        for k, v in vars(args).items()
        if k not in ["desired_outputs", "n_runs", "results_file"]
    }

    run_covasim(run_params, args.n_runs[0], args.desired_outputs, results_file=args.results_file[0])
