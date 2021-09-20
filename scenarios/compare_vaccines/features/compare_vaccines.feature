# Created by andrewc at 16/07/2021
Feature: Compare vaccines
  Which vaccine is most effective at reducing the cumulative number of infections over a given
  period of time?

  Background:
    Given a simulation with parameters
      | parameter     | value  | type  |
      | n_days        | 35     | int   |
      | pop_type      | hybrid | str   |
      | pop_size      | 50000  | int   |
      | pop_infected  | 100    | int   |
      | location      | UK     | str   |
      | interventions |        | list  |
    And the following variables are recorded weekly
      | variable          | type     |
      | cum_infections    | int      |
      | cum_symptomatic   | int      |
      | cum_severe        | int      |
      | cum_critical      | int      |
      | cum_deaths        | int      |
      | cum_vaccinated    | int      |

  Scenario: Draw DAG
    Given a connected repeating unit
    When we prune the following edges
      | s1                 | s2                 |
      | interventions      | cum_symptomatic_n  |
      | interventions      | cum_severe_n       |
      | interventions      | cum_critical_n     |
      | interventions      | cum_deaths_n       |
      | pop_type           | cum_deaths_n       |
      | pop_size           | cum_deaths_n       |
      | location           | cum_deaths_n       |
      | pop_infected       | cum_deaths_n       |
      | n_days             | cum_infections_n   |
      | n_days             | cum_symptomatic_n  |
      | n_days             | cum_severe_n       |
      | n_days             | cum_critical_n     |
      | n_days             | cum_deaths_n       |
      | cum_infections_n   | cum_severe_n1      |
      | cum_infections_n   | cum_critical_n1    |
      | cum_infections_n   | cum_deaths_n1      |
      | cum_symptomatic_n  | cum_critical_n1    |
      | cum_symptomatic_n  | cum_deaths_n1      |
      | cum_severe_n       | cum_infections_n1  |
      | cum_severe_n       | cum_symptomatic_n1 |
      | cum_severe_n       | cum_deaths_n1      |
      | cum_critical_n     | cum_infections_n1  |
      | cum_critical_n     | cum_symptomatic_n1 |
      | cum_critical_n     | cum_severe_n1      |
      | cum_deaths_n       | cum_infections_n1  |
      | cum_deaths_n       | cum_symptomatic_n1 |
      | cum_deaths_n       | cum_severe_n1      |
      | cum_deaths_n       | cum_critical_n1    |
      | cum_vaccinated_n   | cum_symptomatic_n1 |
      | cum_vaccinated_n   | cum_severe_n1      |
      | cum_vaccinated_n   | cum_critical_n1    |
      | cum_vaccinated_n   | cum_deaths_n1      |
    And add the following edges
      | s1                 | s2                 |
      | location           | interventions      |
      | location           | pop_size           |
    Then we obtain the causal DAG for 5 weeks

  Scenario Outline: Single vaccine
    All vaccines should reduce the cumulative number of infections relative to the
    baseline scenario where no vaccine is available.

    Given no vaccine is available
    When the <vaccine_name> is available
    Then the cumulative number of infections should decrease
    Examples:
      | vaccine_name |
      | pfizer       |
      | moderna      |
      | az           |

  Scenario: Age-restricted vaccine
    An age-restricted vaccine should have a greater effect at reducing the cumulative number
    of infections in an elderly population.

    Given no vaccine is available
    When the age-restricted vaccine is available
    Then the following outcomes should change as follows
      | outcome         | increase_or_decrease | min_change | max_change |
      | cum_infections  | decrease             | 2000       | 4000       |
      | cum_deaths      | decrease             | 0          | 10         |
      | cum_symptomatic | decrease             | 1000       | 2000       |
      | cum_severe      | decrease             | 10         | 100        |
      | cum_critical    | decrease             | 1          | 50         |

