""" Utilities for running Covasim. """
import covasim as cv
import pandas as pd
import os


def dict_plus(dic1, dic2):
    for field in dic2:
        if field not in dic1:
            dic1[field] = []
        dic1[field].append(dic2[field])


def chunks(lst, n):
    """Yield successive n-sized chunks from lst."""
    for i in range(0, len(lst), n):
        yield lst[i:i + n]


def aggregate_by_week(data, desired_outputs=None):
    if desired_outputs is None:
        desired_outputs = data.columns
    week_by_week = {k: [] for k in desired_outputs}
    for c in chunks(data, 7):
        for k in week_by_week:
            if k.startswith('new_'):
                week_by_week[k].append(c[k].sum())
            elif k.startswith('n_'):
                week_by_week[k].append(c[k].iloc[-1])
            else:
                week_by_week[k].append(c[k].iloc[0])
    return pd.DataFrame(week_by_week)


def run_covasim_by_week(label, params, desired_outputs, n_runs=10):
    intervention_sim = cv.MultiSim(cv.Sim(pars=params, label=label, verbose=0))
    intervention_sim.run(n_runs=n_runs, verbose=0)
    temporal = []
    for sim in intervention_sim.sims:
        df = sim.to_df()
        quar_period = 14
        for i in sim['interventions']:
            if hasattr(i, "quar_period"):
                quar_period = i.quar_period
        df = df[desired_outputs]
        week_by_week = pd.DataFrame(aggregate_by_week(df, desired_outputs))
        dic = week_by_week.to_dict(orient='list')
        week_dic = {f"{k}_{w+1}": item for k in desired_outputs for w, item in enumerate(dic[k])}
        week_dic['quar_period'] = quar_period
        week_dic['intervention'] = sim.label
        for k, v in params.items():
            week_dic[k] = v
        temporal.append(week_dic)
    return pd.DataFrame(temporal)


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


def save_results_df(results_df, out_path, file_name):
    """
    Given a data frame containing Covasim results, save the dataframe to a specified path.
    If the out_path directory doesn't exist, this method will create it.
    :param results_df: (pandas data frame) containing Covasim results.
    :param out_path: (string) path to save location.
    :param file_name: (string) name of file excluding extension.
    """
    if not os.path.exists(out_path):
        os.mkdir(out_path)
    out_path = os.path.join(out_path, f"{file_name}.csv")
    results_df.to_csv(out_path)
