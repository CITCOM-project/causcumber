# Created by andrewc at 16/07/2021
Feature: Compare vaccines
  Which vaccine is most effective at reducing the cumulative number of infections over a given
  period of time?

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
      | variable          | type     |
      | cum_infections    | int      |
      | cum_symptomatic   | int      |
      | cum_severe        | int      |
      | cum_critical      | int      |
      | cum_deaths        | int      |

  Scenario: Baseline
    Given a simulation run with no vaccine available
    When the simulation is finished
    Then the weekly cumulative infections should be reported

  Scenario: Single vaccine
    All vaccines should reduce the cumulative number of infections relative to the
    baseline scenario where no vaccine is available.

    Given a single one of the following vaccines is available in the model
      | vaccine |
      | pfizer  |
      | moderna |
      | az      |
    When the simulation is finished for all vaccines
    Then the cumulative number of infections should be less than the baseline

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

