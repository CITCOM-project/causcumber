# This file MUST be run from inside ../compare_interventions, otherwise it won't
# be able to find the causal DAG. Run as `behave features/compare_interventions.feature`
Feature: Compare interventions
  Background:
    Given a simulation with parameters
      | parameter    | value  | type |
      | quar_period  | 14     | int  |
      | n_days       | 84     | int  |
      | pop_type     | hybrid | str  |
      | pop_size     | 50000  | int  |
      | pop_infected | 100    | int  |
      | location     | UK     | str  |
    And the following variables are recorded weekly
      | variable          | type |
      | cum_tests         | int  |
      | n_quarantined     | int  |
      | n_exposed         | int  |
      | cum_infections    | int  |
      | cum_symptomatic   | int  |
      | cum_severe        | int  |
      | cum_critical      | int  |
      | cum_deaths        | int  |

  @current
  Scenario: Baseline
    Given a simulation run with only the background parameters
    When the simulation is complete
    Then all weekly variables are recorded

  @current
  Scenario: Draw DAG
    Given a connected repeating unit
    When we prune the following edges
      | s1                | s2                 |
      | quar_period       | n_exposed_n        |
      | quar_period       | cum_infections_n   |
      | quar_period       | cum_symptomatic_n  |
      | quar_period       | cum_severe_n       |
      | quar_period       | cum_critical_n     |
      | quar_period       | cum_deaths_n       |
      | quar_period       | cum_tests_n        |
      | intervention      | cum_infections_n   |
      | intervention      | cum_symptomatic_n  |
      | intervention      | cum_severe_n       |
      | intervention      | cum_critical_n     |
      | intervention      | cum_deaths_n       |
      | pop_type          | cum_deaths_n       |
      | pop_type          | cum_tests_n        |
      | pop_size          | cum_deaths_n       |
      | pop_size          | cum_tests_n        |
      | location          | cum_deaths_n       |
      | location          | cum_tests_n        |
      | pop_infected      | n_quarantined_n    |
      | pop_infected      | n_exposed_n        |
      | pop_infected      | cum_deaths_n       |
      | pop_infected      | cum_tests_n        |
      | n_days            | n_quarantined_n    |
      | n_days            | n_exposed_n        |
      | n_days            | cum_infections_n   |
      | n_days            | cum_symptomatic_n  |
      | n_days            | cum_severe_n       |
      | n_days            | cum_critical_n     |
      | n_days            | cum_deaths_n       |
      | n_days            | cum_tests_n        |
      | n_quarantined_n   | cum_infections_n1  |
      | n_quarantined_n   | cum_symptomatic_n1 |
      | n_quarantined_n   | cum_severe_n1      |
      | n_quarantined_n   | cum_critical_n1    |
      | n_quarantined_n   | cum_tests_n1       |
      | n_quarantined_n   | cum_deaths_n1      |
      | n_exposed_n       | n_quarantined_n1   |
      | n_exposed_n       | cum_symptomatic_n1 |
      | n_exposed_n       | cum_severe_n1      |
      | n_exposed_n       | cum_critical_n1    |
      | n_exposed_n       | cum_deaths_n1      |
      | n_exposed_n       | cum_tests_n1       |
      | cum_infections_n  | cum_severe_n1      |
      | cum_infections_n  | cum_critical_n1    |
      | cum_infections_n  | cum_deaths_n1      |
      | cum_infections_n  | cum_tests_n1       |
      | cum_symptomatic_n | n_exposed_n1       |
      | cum_symptomatic_n | cum_critical_n1    |
      | cum_symptomatic_n | cum_deaths_n1      |
      | cum_symptomatic_n | cum_tests_n1       |
      | cum_severe_n      | n_quarantined_n1   |
      | cum_severe_n      | n_exposed_n1       |
      | cum_severe_n      | cum_infections_n1  |
      | cum_severe_n      | cum_symptomatic_n1 |
      | cum_severe_n      | cum_tests_n1       |
      | cum_severe_n      | cum_deaths_n1      |
      | cum_critical_n    | n_quarantined_n1   |
      | cum_critical_n    | n_exposed_n1       |
      | cum_critical_n    | cum_infections_n1  |
      | cum_critical_n    | cum_symptomatic_n1 |
      | cum_critical_n    | cum_severe_n1      |
      | cum_critical_n    | cum_tests_n1       |
      | cum_tests_n       | n_exposed_n1       |
      | cum_tests_n       | cum_infections_n1  |
      | cum_tests_n       | cum_symptomatic_n1 |
      | cum_tests_n       | cum_severe_n1      |
      | cum_tests_n       | cum_critical_n1    |
      | cum_tests_n       | cum_deaths_n1      |
      | cum_deaths_n      | n_quarantined_n1   |
      | cum_deaths_n      | cum_infections_n1  |
      | cum_deaths_n      | cum_symptomatic_n1 |
      | cum_deaths_n      | cum_severe_n1      |
      | cum_deaths_n      | cum_critical_n1    |
    Then we obtain the causal DAG for 12 weeks

  Scenario: Testing
    Given testing interventions <label> with parameters: <symp_prob>, <asymp_prob>, <symp_quar_prob>, <asymp_quar_prob>
      | label        | symp_prob | asymp_prob | symp_quar_prob | asymp_quar_prob | relationship | id1          |
      | standardTest | 0.2       | 0.001      | 1              | 1               | <            | Baseline     |
      | noTest       | 0         | 0          | 0              | 0               | =            | Baseline     |
      | optimalTest  | 1         | 1          | 1              | 1               | <            | standardTest |
    When all simulations are complete
    Then the "cum_deaths" should be <relationship> <id1>

  Scenario: Contact Tracing
    Given a testing intervention standardTest with parameters: 0.2, 0.001, 1, 1
    And a tracing intervention <label> with parameters: trace_probs=dict(h=<h>, w=<w>, s=<s>, c=<c>)
      | label         | h | w   | s   | c   | relationship | id1            |
      | standardTrace | 1 | 0.5 | 0.5 | 0.3 | <            | Baseline       |
      | optimalTrace  | 1 | 1   | 1   | 1   | <            | standardTest   |
      | noTrace       | 0 | 0   | 0   | 0   | =            | standardTest   |
    When all simulations are complete
    Then the "cum_deaths" should be <relationship> <id1>

  @current
  Scenario: Contact Tracing Without Testing
      Given a testing intervention noTest with parameters: 0, 0, 0, 0
      And a tracing intervention with parameters: trace_probs=dict(h=1, s=0.5, w=0.5, c=0.3)
      When the simulation is complete
      Then the "cum_deaths" should be "equal to" Baseline
