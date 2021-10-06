# This file MUST be run from inside ../compare_interventions, otherwise it won't
# be able to find the causal DAG. Run as `behave features/compare_interventions.feature`
Feature: Compare interventions basic
  Background:
    Given a simulation with parameters
      | parameter       | type  |
      | n_days          | int   |
      | quar_period     | int   |
      | pop_size        | int   |
      | pop_infected    | int   |
      | location        | str   |
      | average_age     | float |
      | simp_prob       | float |
      | asimp_prob      | float |
      | simp_quar_prob  | float |
      | asimp_quar_prob | float |
      | trace_probs     | float |
    And the following variables are recorded at the end of the simulation
      | variable        | type |
      | cum_tests       | int  |
      | cum_quarantined | int  |
      | cum_infections  | int  |
      | cum_deaths      | int  |
    # Bounds for the number of days
    # Not much point in running it less than two months or more than a year
    # These are pretty much arbitrary, but we want to give test case generation as much help as possible
    And 60 <= n_days <= 365
    # There's no point in quarantining people for longer than the length of time the model is run
    And 0 <= quar_period < n_days
    And 1000 <= pop_size <= 100000
    # We can't have more initially infected people than the total population
    And 0 <= pop_infected <= pop_size
    # Must be a valid country
    And location in covasim.data.country_age_data.data
    # Probabilities must be between zero and one
    And 0 <= simp_prob <= 1
    And 0 <= asimp_prob <= 1
    And 0 <= simp_quar_prob <= 1
    And 0 <= asimp_quar_prob <= 1
    And 0 <= trace_probs <= 1

  # TODO: this is a bit clunky. It might not be  reasonable to assume that a
  # domain expert would be able to list all edges that wouldn’t be present
  # before seeing the connected graph
  @draw_dag
  Scenario: Draw DAG
    Given a connected DAG
    When we prune the following edges
    | s1              | s2              |
    | cum_deaths      | .*              |
    | cum_infections  | cum_tests       |
    | cum_quarantined | .*              |
    | .*              | cum_deaths      |
    | cum_infections  | cum_quarantined |
    | .*_prob         | cum_quarantined |
    | .*_prob         | cum_infections  |
    | .*_prob         | cum_deaths      |
    | trace_probs     | .*              |
    | location        | .*              |
    And we add the following edges
    | s1              | s2              |
    | cum_infections  | cum_deaths      |
    | average_age     | cum_deaths      |
    | cum_quarantined | cum_infections  |
    | trace_probs     | cum_quarantined |
    | trace_probs     | cum_tests       |
    | n_days          | cum_deaths      |
    | location        | average_age     |
    Then we obtain the causal DAG

  # Bare minimum two runs where 0 <= quar_period 14
  # Probably want to do 0-x1 and x1-14 by BVA
  Scenario Outline: quar_period
    Given quar_period < 14
    When we increase the quar_period
    Then the <output> should <change>
    # I think the cum_tests one will probably change on the quarantine testing strategy.
    # By default, it's start and end, i.e. two tests per quarantine
    # If we tested everyone in quarantine every day, it might increase
    # Since test_strategy isn't a parameter we're testing here, we can leave it as is
    Examples:
    | output          | change          | comment                                                                            |
    | cum_tests       | decrease        | Longer quarantine means less regular testing for everyone                          |
    | cum_quarantined | decrease        | Longer quarantine means fewer cases means fewer quarantine                         |
    | cum_infections  | decrease        | Longer quarantine means less chance of infected individuals passing on the disease |
    | cum_deaths      | remain the same | No direct causal effect, only via cum_infections                                   |

  # Bare minimum two runs where 14 <= quar_period
  # Probably just want to do 14-x1 by uniformity
  Scenario Outline: Finite quar_period returns
    Given quar_period >= 14
    When we increase the quar_period
    Then the <output> should remain about the same
    # Once we get beyond the runtime of the disease, we stop gaining benefit from increasing the quarantine period
    Examples:
    | output          |
    | cum_tests       |
    | cum_quarantined |
    | cum_infections  |
    | cum_deaths      |

  # Bare minimum two runs where 60 <= n_days <= 365
  # Probably want to do min-x1 and x2-max by BVA
  Scenario Outline: n_days
    When we increase the n_days
    Then the <output> should increase
    Examples:
    | output          |
    | cum_tests       |
    | cum_quarantined |
    | cum_infections  |
    | cum_deaths      |

  # Bare minimum two runs where 0 < pop_size
  # Probably want to do min-x1 and x2-max by BVA
  Scenario Outline: pop_size
    When we increase the pop_size
    Then the <output> should increase
    Examples:
    | output          |
    | cum_tests       |
    | cum_quarantined |
    | cum_infections  |
    | cum_deaths      |

  # Bare minimum two runs where pop_infected <= pop_size
  # Probably want to do pop_infected=pop_size (by BVA) and pop_infected < pop_size
  Scenario Outline: pop_infected
    When we increase the pop_infected
    Then the <output> should <change>
    Examples:
    | output          | change          | comment                                   |
    | cum_tests       | increase        | More people to test                       |
    | cum_quarantined | increase        | More people to quarantine                 |
    | cum_infections  | increase        | More people to get the disease            |
    | cum_deaths      | remain the same | No direct effect, only via cum_infections |

  # Scenario Outline: location # This is really just a proxy for age, but age isn't an input to the model

  # This is controlled entirely by location, so we want to do at least two locations with different average ages
  # Do we want to run it for every country?
  Scenario Outline: average_age
    When we increase the average_age
    Then the <output> should increase
    # Age does have a direct effect on the cum_deaths since older folks are more likely to die from the disease
    Examples:
    | output          |
    | cum_tests       |
    | cum_quarantined |
    | cum_infections  |
    | cum_deaths      |

  # For each prob, bare minimum two runs between 0 and 1
  # Probably want to do 0-x1 and x2-1 by BVA
  # These probs are effect modifiers of each other
  Scenario Outline: probs
    When we increase the <prob>
    # increasing the probabilities means more people get tested (even trace_probs because traced people then get a test)
    Then the cum_tests should increase
    # Higher probability of testing means more infected people will be found so more people are quarantined
    And the cum_quarantined should increase
    # More tests -> more quarantined -> fewer cases
    And the cum_infections should decrease
    # No direct effect, only via cum_infections
    And the cum_deaths should remain the same
    Examples:
    | prob            |
    | simp_prob       |
    | asimp_prob      |
    | simp_quar_prob  |
    | asimp_quar_prob |
    | trace_probs     |
