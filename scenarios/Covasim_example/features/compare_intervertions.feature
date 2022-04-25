Feature: Compare intervertions
  Background: IO spec
    Given a simulation with parameters
      | parameter     | type      | distribution |
      | n_days  | int  | stats.betabinom(60,2,3,loc=60)  |
      | quar_period  | int  | stats.betabinom(60,2,3,loc=60)  |
      | pop_size  | int  | stats.betabinom(60,2,3,loc=60)  |
      | pop_infected  | int  | stats.betabinom(60,2,3,loc=60)  |
      | location  | str  | stats.betabinom(60,2,3,loc=60)  |
      | symp_prob  | float  | stats.betabinom(60,2,3,loc=60)  |
      | asymp_prob  | float  | stats.betabinom(60,2,3,loc=60)  |
      | symp_quar_prob  | float  | stats.betabinom(60,2,3,loc=60)  |
      | asymp_quar_prob  | float  | stats.betabinom(60,2,3,loc=60)  |
      | trace_probs  | float  | stats.betabinom(60,2,3,loc=60)  |
    And the following variables are recorded 
      | variable          | type |
