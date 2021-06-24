# Causcumber
Can we use cucumber specifications to systematically produce causal graphs that can be used to answer causal questions about a particular scenario in the Covasim model?

## Structure
The scenarios directory contains different example scenarios implemented in the Covasim model. For each scenario in the directory, a separate sub-directory should be created that contains the simulation and a cucumber specification.

## Steps to create a virtual environment:
1. In `./covasim/causcumber`, run `python3 -m venv causcumber`
2. To activate the virtual environment, run `source causcumber/bin/activate`
3. To install the necessary requirements, in the root directory (`./covasim`), run `pip install -r requirements.txt`
4. To install the necessary testing requirements, in the tests directory (`./covasim/tests`), run `pip install -r requirements_test.txt`

## Proposed Causcumber workflow
1. Create a `.feature` file specifying desired causal properties as scenarios in Gherkin language
2. Transform each scenario into a causal question
3. Infer a causal DAG baseline from each scenario - the user may need to correct this
4. Run the system to get data for each causal question
   >This is why I'd like to have the scenarios in each feature file use the same DAG. If we make this assumption, we can then use the scenarios to direct the exact runs of the model so we can test multiple scenarios with the same data. If we only test one scenario, we can effectively do an RCT. We could, I guess, only change the parameters according to the scenarios.
5. Write hooks into the data with Cucumber and use doWhy to calculate causal estimates for each scenario and check that these match the specified behaviour in the `Then` clauses

## Results Format
We work with CSV files produced by the simulations. These have 164 columns, the headings of which is as follows:
- `t` (time step)
- `date`
- Cumulative (`cum_`) and new (`new_`)
  - `infections`
  - `reinfections`
  - `infectious`
  - `symptomatic`
  - `severe`
  - `critical`
  - `recoveries`
  - `deaths`
  - `tests`
  - `diagnoses`
  - `known_deaths`
  - `quarantined`
  - `vaccinations`
  - `vaccinated`
- `n_susceptible`
- `n_exposed`
- `n_infectious`
- `n_symptomatic`
- `n_severe`
- `n_critical`
- `n_recovered`
- `n_dead`
- `n_diagnosed`
- `n_known_dead`
- `n_quarantined`
- `n_vaccinated`
- `n_alive`
- `n_naive`
- `n_preinfectious`
- `n_removed`
- `prevalence`
- `incidence`
- `r_eff`
- `doubling_time`
- `test_yield`
- `rel_test_yield`
- `frac_vaccinated`
- `pop_nabs`
- `pop_protection`
- `pop_symp_protection`

Each row in the CSV represents a single time step (day) in the model. The outputs are stored in `compare_interventions/results`, which is ignored by Git during the development process. We will make our results publicly available via ORDA when it is appropriate to do so.
