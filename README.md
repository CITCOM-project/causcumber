# Causcumber

We use [cucumber](https://cucumber.io/)  specifications to describe and execute modelling scenarios, and systematically produce corresponding causal graphs that can be used to test causal relationships.

This repository is currently in an experimental phase.

# How to use

## Installation

1. Clone this repository `git clone https://github.com/CITCOM-project/causcumber.git`
2. Change to the folder containing the repository `cd causcumber`
3. Create a virtual environment e.g.:
   1. In `./causcumber`, run `python3 -m venv causcumber_venv`
   2. To activate the virtual environment, run `source causcumber_venv/bin/activate`
4. [Install `GraphViz`](https://graphviz.org/)
5. Install `causcumber` using the command `pip install -e .`

# Contributing

Due to the current experimental nature of this work, contributions are currently limited to the core citcom team. Once key architectural decisions are finalised, we will open to a broader community. The current process for making changes to the code (e.g. adding new features or fixing bugs) in this repository are:

1. Install as above
2. Make a branch and check it out
3. Make your changes
4. Make a pull request against the `main` branch and request a review from one of the citcom team
5. On an approving review, merge your changes into `main`

# Key Concepts

## Structure
The `scenarios` directory contains different example scenarios implemented in the Covasim model. For each scenario in the directory, a separate sub-directory should be created that contains the simulation and a cucumber specification. Within each scenario sub-directory, three directories should be created:
1. `dags/`: this directory should contain any causal graphs as `.dot` files. This is where CauseCumber will place causal graphs too.
2. `features/`: this directory should contain all of the elements for behave, including `.feature` files, an `environment.py` file, and a directory `steps/` containing python scripts to implement step definitions for each `.feature` file.
3. `observational_data/`: this directory should contain any observational data that you wish to use instead of running the model. This is optional.

## Proposed Causcumber workflow
1. Create a `.feature` file specifying desired causal properties as scenarios in Gherkin language.
2. Specify a `Background` scenario that lists the inputs and outputs of interest.
3. Transform each scenario into a causal question
4. Infer a fully-connected causal DAG from the `Background` and prune manually.
5. Run the system to get data for each causal question or, alternatively, select previous execution data to achieve the same.
6. Write step definitions (AKA hooks) into the data with Cucumber and use DoWhy to calculate causal estimates for each scenario and check that these match the specified behaviour in the `Then` clauses.

# Covasim
## Results Format
We work with CSV files produced by Covasim simulations. These have 164 columns, the headings of which is as follows:
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
