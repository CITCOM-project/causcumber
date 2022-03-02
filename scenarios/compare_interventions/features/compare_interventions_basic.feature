# This file MUST be run from inside ../compare_interventions, otherwise it won't
# be able to find the causal DAG. Run as `behave features/compare_interventions.feature`
Feature: Compare interventions basic
  Background:
    Given a simulation with parameters
      | parameter     | value          | type |
      | quar_period   | 14             | int  |
      | n_days        | 84             | int  |
      | pop_size      | 50000          | int  |
      | pop_infected  | 100            | int  |
      | location      | United Kingdom | str  |
      | interventions | baseline       | str  |
    And the following variables are recorded at the end of the simulation
      | variable          | type |
      | cum_tests         | int  |
      | cum_quarantined   | int  |
      | cum_infections    | int  |
      | cum_symptomatic   | int  |
      | cum_severe        | int  |
      | cum_critical      | int  |
      | cum_deaths        | int  |

  # TODO: this is a bit clunky. It might not be  reasonable to assume that a
  # domain expert would be able to list all edges that wouldn’t be present
  # before seeing the connected graph
  Scenario: Draw DAG
    Given a connected DAG
    When we prune the following edges
    | s1              | s2              |
    | cum_deaths      | cum_tests       |
    | cum_deaths      | cum_infections  |
    | cum_deaths      | cum_severe      |
    | cum_deaths      | cum_symptomatic |
    | cum_deaths      | cum_critical    |
    | cum_deaths      | cum_quarantined |
    | cum_tests       | cum_deaths      |
    | cum_tests       | cum_infections  |
    | cum_tests       | cum_severe      |
    | cum_tests       | cum_symptomatic |
    | cum_tests       | cum_critical    |
    | cum_infections  | cum_deaths      |
    | cum_infections  | cum_tests       |
    | cum_infections  | cum_severe      |
    | cum_infections  | cum_critical    |
    | cum_severe      | cum_deaths      |
    | cum_severe      | cum_tests       |
    | cum_severe      | cum_infections  |
    | cum_severe      | cum_symptomatic |
    | cum_severe      | cum_quarantined |
    | cum_symptomatic | cum_deaths      |
    | cum_symptomatic | cum_tests       |
    | cum_symptomatic | cum_infections  |
    | cum_symptomatic | cum_critical    |
    | cum_critical    | cum_tests       |
    | cum_critical    | cum_infections  |
    | cum_critical    | cum_severe      |
    | cum_critical    | cum_symptomatic |
    | cum_critical    | cum_quarantined |
    | cum_quarantined | cum_deaths      |
    | cum_quarantined | cum_tests       |
    | cum_quarantined | cum_infections  |
    | cum_quarantined | cum_severe      |
    | cum_quarantined | cum_symptomatic |
    | cum_quarantined | cum_critical    |
    | interventions    | cum_deaths      |
    | interventions    | cum_infections  |
    | interventions    | cum_severe      |
    | interventions    | cum_symptomatic |
    | interventions    | cum_critical    |
    Then we obtain the causal DAG

  Scenario Outline: Test and trace
    Given we run the model with interventions=<control>
    When we run the model with interventions=<treatment>
    Then the cum_deaths should be <relationship> <control>
    Examples:
      | treatment     | relationship | control       |
      | standardTest  | <            | baseline      |
      | noTest        | =            | baseline      |
      | optimalTest   | <            | standardTest  |
      | standardTrace | <            | baseline      |
      | standardTrace | <            | standardTest  |
      | noTrace       | =            | standardTest  |
      | optimalTrace  | <            | standardTrace |
      | traceNoTest   | =            | baseline      |

  # This depends on the existence of observational data. We need lots of runs to
  # get a reliable estimate. Essentially, we need to just run the model with
  # some different starting parameters. We can reuse data from prior test runs
  # by just pulling it all in. This works under the assumption that all the
  # CSV files have the same columns.
  Scenario: Subsequent mortality (has confounding)
    Given a control scenario where cum_infections=4000
    When cum_infections=5000
    Then the cum_deaths should be > control

  Scenario Outline: Locations
    Given we run the model with location=<control>
    When we run the model with location=<treatment>
    Then the cum_deaths should be <relationship> <control>
    Examples:
      | treatment | relationship | control        | note                                    |
      | Japan     | >            | United Kingdom | Because Japan has an older population   |
      | Rwanda    | <            | United Kingdom | Because Rwanda has a younger population |

  Scenario: Large population
    Given we run the model with pop_size=50000
    When we run the model with pop_size=100000
    Then the cum_infections should be > control
    # And the peak should appear later # Need phase detection preprocessing for this
