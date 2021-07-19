"""Utilities for running covasim"""
import covasim as cv
import pandas as pd


def dict_plus(dic1, dic2):
    for field in dic2:
        if field not in dic1:
            dic1[field] = []
        dic1[field].append(dic2[field])


def run_covasim(label, params, desired_outputs, n_runs=10, run=True):
    intervention_sim = cv.MultiSim(cv.Sim(pars=params, label=label, verbose=0))
    intervention_sim.run(n_runs=n_runs, verbose=0)
    fields = {'intervention': []}
    for sim in intervention_sim.sims:
        fields['intervention'].append(label)
        dict_plus(fields, {k: v for k, v in sim.compute_summary(output=True, full=False).items() if k in desired_outputs})
        dict_plus(fields, {k: v for k, v in params.items() if k != "intervention"})
    data = pd.DataFrame.from_dict(fields)
    return data


def msims(default, investigate, include_baseline=True):
    """
    Generate a list of MultiSims to be run to investigate a series of parameter
    changes.

    Parameters
    ----------
    default : dict
        The default parameters with which to run covasim.
    investigate : [dict]
        A list of dictionaries with the investigation parameters.

    Returns
    -------
    [MultiSim]
        A list of MultiSims with the specified parameters.

    """
    sims = [cv.MultiSim(cv.Sim(pars= {**default, **d}, label=l, verbose=0)) for d, l in investigate]
    if include_baseline:
        sims += [cv.MultiSim(cv.Sim(pars=default, label="Baseline"))]
    return sims


def chunks(lst, n):
    """Yield successive n-sized chunks from lst."""
    for i in range(0, len(lst), n):
        yield lst[i:i + n]


def aggregate_by_week(data, to_keep):
    print(data)
    data = data[to_keep]
    week_by_week = {k: [] for k in to_keep}
    for c in chunks(data, 7):
        for k in week_by_week:
            if k.startswith('new_'):
                week_by_week[k].append(c[k].sum())
            elif k.startswith('n_'):
                week_by_week[k].append(c[k].iloc[-1])
            else:
                week_by_week[k].append(c[k].iloc[0])
    return pd.DataFrame(week_by_week)
