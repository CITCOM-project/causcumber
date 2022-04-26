Feature: Compare interventions
  Background: IO spec
    Given a simulation with parameters
      | parameter     | type      | distribution |
      | n_days  | int  | stats.betabinom(60, 2, 3, loc=60)  |
      | quar_period  | int  | stats.binom(n=25, p=0.5)  |
      | pop_size  | int  | stats.betabinom(100000, 15, 100)  |
      | pop_infected  | int  | stats.betabinom(1000, 1, 5, loc=100)  |
      | location  | str  | countries  |
      | symp_prob  | float  | stats.beta(a=1.5, b=2)  |
      | asymp_prob  | float  | stats.beta(a=1.5, b=2)  |
      | symp_quar_prob  | float  | stats.beta(a=0.8, b=5)  |
      | asymp_quar_prob  | float  | stats.beta(a=1.5, b=2)  |
      | trace_probs  | float  | stats.beta(a=1.5, b=2)  |
    And the following meta variables
      | variable          | type |
      | average_age  | int  |
      | household_size  | float  |
    And the following variables are recorded at the end of the simulation
      | variable          | type |
      | cum_quarantined  | int  |
      | cum_infections  | int  |
      | cum_deaths  | int  |
    And 60 <= n_days <= 365
    And 0 <= quar_period <= n_days
    And 10000 <= pop_size <= 20000
    And 100 <= pop_infected <= pop_size
    And location in covasim.data.country_age_data.data
    And average_age = average_ages(location)
    And average_age > 0
    And household_size = household_sizes(location)
    And 0 <= symp_prob <= 1
    And 0 <= asymp_prob <= 1
    And 0 <= symp_quar_prob <= 1
    And 0 <= asymp_quar_prob <= 1
    And 0 <= trace_probs <= 1
    And 0.1 <= symp_prob <= 0.5
    And 0 <= asymp_prob <= 0.05
    And 0.5 <= symp_quar_prob <= 1
    And 0.5 <= asymp_quar_prob <= 1
    And 0.1 <= trace_probs <= 0.3
    And quar_period <= 14

  @draw_dag
  Scenario: Draw DAG
    Given a connected DAG
    When we prune the following edges
      | s1                | s2                 |
      | cum_deaths | .* | 
      | cum_quarantined | .* | 
      | .* | cum_deaths | 
      | cum_infections | cum_quarantined | 
      | .*_prob         | cum_infections  |
      | .*_prob         | cum_deaths      |
      | trace_probs | .* | 
      | location | .* | 
    And we add the following edges
      | s1                | s2                 |
      | cum_infections | cum_deaths | 
      | average_age | cum_deaths | 
      | cum_quarantined | cum_infections | 
      | trace_probs | cum_quarantined | 
      | n_days | cum_deaths | 
      | location | average_age | 
      | location | household_size | 
    Then we obtain the causal DAG

  @quar_period
  Scenario Outline: quar_period
  When we increase the quar_period
  Then the <output> should <change>
  Examples:
  | output          | change          | comment                                                                            |
  | cum_quarantined | decrease        | Longer quarantine means fewer cases means fewer quarantine                         |
  | cum_infections  | decrease        | Longer quarantine means less chance of infected individuals passing on the disease |
  | cum_deaths      | remain the same | No direct causal effect, only via cum_infections                                   |

  @average_age
  Scenario Outline: average_age
    When we increase the average_age
    Then the <output> should <change>
    Examples:
    | output          | change   |
    | cum_quarantined | decrease |
    | cum_infections  | increase |
    | cum_deaths      | increase |
    
  @n_days
  Scenario Outline: n_days
    When we increase the n_days
    Then the <output> should increase
    Examples:
    | output          |
    | cum_quarantined |
    | cum_infections  |
    | cum_deaths      |

  @pop_size
  Scenario Outline: pop_size
    When we increase the pop_size
    Then the <output> should increase
    Examples:
    | output          |
    | cum_quarantined |
    | cum_infections  |
    | cum_deaths      |

  @pop_infected
  Scenario Outline: pop_infected
    When we increase the pop_infected
    Then the <output> should <change>
    Examples:
    | output          | change          | comment                                   |
    | cum_quarantined | increase        | More people to quarantine                 |
    | cum_infections  | increase        | More people to get the disease            |
    | cum_deaths      | remain the same | No direct effect, only via cum_infections |

  @symp_prob
  Scenario: symp_prob
    When we increase the symp_prob
    Then the cum_quarantined should decrease
    And the cum_infections should decrease
    And the cum_deaths should remain the same

  @asymp_prob
  Scenario: asymp_prob
    When we increase the asymp_prob
    Then the cum_quarantined should decrease
    And the cum_infections should decrease
    And the cum_deaths should remain the same

  @symp_quar_prob
  Scenario: symp_quar_prob
    When we increase the symp_quar_prob
    Then the cum_quarantined should remain the same
    And the cum_infections should decrease
    And the cum_deaths should remain the same

  @asymp_quar_prob
  Scenario: asymp_quar_prob
    When we increase the asymp_quar_prob
    Then the cum_quarantined should decrease
    And the cum_infections should decrease
    And the cum_deaths should remain the same

  @trace_probs
  Scenario: trace_probs
    When we increase the trace_probs
    Then the cum_quarantined should increase
    And the cum_infections should decrease
    And the cum_deaths should remain the same



