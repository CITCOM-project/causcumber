# Created by andrewc at 16/07/2021
Feature: Compare vaccines
  Which vaccine is most effective at reducing the cumulative number of infections over a given
  period of time?

  Background:
    Given a simulation with parameters
      | parameter    | value  | type |
      | n_days       | 35     | int  |
      | pop_type     | hybrid | str  |
      | pop_size     | 50000  | int  |
      | pop_infected | 100    | int  |
      | location     | UK     | str  |
    And the following variables are recorded weekly
      | variable          | type     |
      | cum_infections    | int      |
      | cum_symptomatic   | int      |
      | cum_severe        | int      |
      | cum_critical      | int      |
      | cum_deaths        | int      |
      | cum_vaccinated    | int      |

  Scenario: Baseline
    Given a simulation run with no vaccine available
    When the model is run
    Then the weekly cumulative infections should be reported

  Scenario: Draw DAG
    Given a connected repeating unit
    When we prune the following edges
      | s1                | s2                 |
      | intervention      | cum_infections_n   |
      | intervention      | cum_symptomatic_n  |
      | intervention      | cum_severe_n       |
      | intervention      | cum_critical_n     |
      | intervention      | cum_deaths_n       |
      | pop_type          | cum_deaths_n       |
      | pop_size          | cum_deaths_n       |
      | location          | cum_deaths_n       |
      | pop_infected      | cum_deaths_n       |
      | n_days            | cum_infections_n   |
      | n_days            | cum_symptomatic_n  |
      | n_days            | cum_severe_n       |
      | n_days            | cum_critical_n     |
      | n_days            | cum_deaths_n       |
      | cum_infections_n  | cum_severe_n1      |
      | cum_infections_n  | cum_critical_n1    |
      | cum_infections_n  | cum_deaths_n1      |
      | cum_symptomatic_n | cum_critical_n1    |
      | cum_symptomatic_n | cum_deaths_n1      |
      | cum_severe_n      | cum_infections_n1  |
      | cum_severe_n      | cum_symptomatic_n1 |
      | cum_severe_n      | cum_deaths_n1      |
      | cum_critical_n    | cum_infections_n1  |
      | cum_critical_n    | cum_symptomatic_n1 |
      | cum_critical_n    | cum_severe_n1      |
      | cum_deaths_n      | cum_infections_n1  |
      | cum_deaths_n      | cum_symptomatic_n1 |
      | cum_deaths_n      | cum_severe_n1      |
      | cum_deaths_n      | cum_critical_n1    |
      | cum_vaccinated_n  | cum_symptomatic_n1 |
      | cum_vaccinated_n  | cum_severe_n1      |
      | cum_vaccinated_n  | cum_critical_n1    |
      | cum_vaccinated_n  | cum_deaths_n1      |
    Then we obtain the causal DAG for 5 weeks

  @combine
  Scenario Outline: Single vaccine
    All vaccines should reduce the cumulative number of infections relative to the
    baseline scenario where no vaccine is available.

    Given a baseline run of the model
    When the model is run with vaccine <vaccine_name>
    Then the cumulative number of infections should be less than the baseline
    Examples:
      | vaccine_name |
      | pfizer       |
      | moderna      |
      | az           |

#  Scenario Outline: Multiple vaccines
#    Any pair of vaccines should not be significantly worse than a single vaccine.
#
#    Given that the <first_vaccine_name> and <second_vaccine_name> vaccines are available
#    When the simulation is complete
#    Then the cumulative number of infections should be less than when just <single_vaccine_name> is available.
#    Examples:
#      | first_vaccine_name | second_vaccine_name | single_vaccine_name |
#      | pfizer             | moderna             | pfizer              |
#      | pfizer             | moderna             | moderna             |
#      | pfizer             | moderna             | az                  |
#      | pfizer             | az                  | pfizer              |
#      | pfizer             | az                  | az                  |
#      | pfizer             | az                  | moderna             |
#      | moderna            | az                  | az                  |
#      | moderna            | az                  | moderna             |
#      | moderna            | az                  | pfizer              |

