import covasim as cv
import pandas as pd

n_runs = 100
n_weeks = 10

def msims(default, investigate):
    sims = [cv.MultiSim(cv.Sim(pars=base_pars, label="Baseline"))]
    for d, l in investigate:
        pars = {**default, **d}
        sims.append(cv.MultiSim(cv.Sim(pars=pars, label=l, verbose=0)))
    return sims


def dict_plus(dic1, dic2):
    for field in dic2:
        if field not in dic1:
            dic1[field] = []
        dic1[field].append(dic2[field])


def chunks(lst, n):
    """Yield successive n-sized chunks from lst."""
    for i in range(0, len(lst), n):
        yield lst[i:i + n]

""" Which intervention is more effective at reducing the cumulative number of infections? """
base_pars = dict(
    pop_type='hybrid',
    pop_size=50e3,
    pop_infected=100,
    # start_day='2020-03-01',
    # end_day='2020-05-31',
    n_days=(7*n_weeks)-1, # we need to take one away because it prints from day 0 to day n INCLUSIVE (i.e. n+1 days)
    location='UK'
)

# Define interventions
testing_intervention = cv.test_prob(symp_prob=0.2, asymp_prob=0.001, symp_quar_prob=1.0, asymp_quar_prob=1.0)
optimal_testing_intervention = cv.test_prob(symp_prob=1, asymp_prob=1, symp_quar_prob=1, asymp_quar_prob=1)
zero_testing_intervention = cv.test_prob(symp_prob=0, asymp_prob=0, symp_quar_prob=0, asymp_quar_prob=0)
contact_tracing_intervention = cv.contact_tracing(trace_probs=dict(h=1.0, s=0.5, w=0.5, c=0.3), quar_period=14)
zero_contact_tracing_intervention = cv.contact_tracing(trace_probs=dict(h=0, s=0, w=0, c=0), quar_period=14)
optimal_contact_tracing_intervention = cv.contact_tracing(trace_probs=dict(h=1, s=1, w=1, c=1), quar_period=14)

intervention_sims = msims(base_pars, [
    ({"interventions": testing_intervention}, "Standard testing"),
    ({"interventions": [testing_intervention, contact_tracing_intervention]}, "Standard tracing"),
    ({"interventions": zero_testing_intervention}, "No testing"),
    ({"interventions": zero_contact_tracing_intervention}, "No tracing"),
    ({"interventions": [contact_tracing_intervention]}, "Trace without test"),
    ({"interventions": optimal_testing_intervention}, "Optimal Testing"),
    ({"interventions": [testing_intervention, optimal_contact_tracing_intervention]}, "Optimal Tracing"),
    # ({"start_day": '2021-11-01', "end_day": '2022-02-01'}, "Winter"),
    # ({"start_day": '2021-03-01', "end_day": '2021-06-01'}, "Spring"),
    ])

to_keep = ['cum_infections', 'cum_deaths', 'cum_symptomatic',
       'cum_severe', 'cum_critical', 'cum_tests',
       'n_exposed', 'n_quarantined']

dfs = []

for intervention, intervention_sim in enumerate(intervention_sims):
    intervention_sim.run(n_runs=n_runs, verbose=0)
    for sim in intervention_sim.sims:
        df = sim.to_df()
        quar_period = 14
        for i in sim['interventions']:
            if hasattr(i, "quar_period"):
                quar_period = i.quar_period
        df = df[to_keep]
        
        # aggregate by week
        week_by_week = {k:[] for k in to_keep}
        for c in chunks(df, 7):
            assert(len(c) == 7)
            for k in week_by_week:
                if k.startswith('new_'):
                    week_by_week[k].append(c[k].sum())
                elif k.startswith('n_'):
                    week_by_week[k].append(c[k].iloc[-1])
                else:
                    week_by_week[k].append(c[k].iloc[0])
        
        dfs.append((pd.DataFrame(week_by_week), quar_period, intervention))

#%%
temporal = []
for df, quar_period, intervention in dfs:
    dic = df.to_dict(orient='list')
    week_dic = {f"{k}_w{w+1}": item for k in to_keep for w, item in enumerate(dic[k])}
    week_dic['quar_period'] = quar_period
    week_dic['intervention'] = intervention
    for k, v in base_pars.items():
        week_dic[k] = v
    temporal.append(week_dic)

data = pd.DataFrame(temporal)
print(data)
data.to_csv(f"results/week-by-week_{n_runs}.csv")

# for col in data.columns:
#     print(col)