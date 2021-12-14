# This file MUST be run from inside ../compare_interventions, otherwise it won't
# be able to find the causal DAG. Run as `behave features/compare_interventions.feature`
Feature: Compare interventions basic
  Background: IO spec
  # Really we want to make the pop_infected parametric on the pop_size...
    Given a simulation with parameters
      | parameter       | type  | distribution                         |
      | n_days          | int   | stats.betabinom(60, 2, 3, loc=60)    |
      | quar_period     | int   | stats.binom(n=25, p=0.5)             |
      | pop_size        | int   | stats.betabinom(100000, 15, 100)     |
      | pop_infected    | int   | stats.betabinom(1000, 1, 5, loc=100) |
      | location        | str   | countries                            |
      | symp_prob       | float | stats.beta(a=1.5, b=2)               |
      | asymp_prob      | float | stats.beta(a=1.5, b=2)               |
      | symp_quar_prob  | float | stats.beta(a=0.8, b=5)               |
      | asymp_quar_prob | float | stats.beta(a=1.5, b=2)               |
      | trace_probs     | float | stats.beta(a=1.5, b=2)               |
    And the following meta variables
      | variable        | type  |
      | average_age     | int   |
      | household_size  | float |
    And the following variables are recorded at the end of the simulation
      | variable        | type |
      | cum_quarantined | int  |
      | cum_infections  | int  |
      | cum_deaths      | int  |
    # Bounds for the number of days
    # Not much point in running it less than two months or more than a year
    # These are pretty much arbitrary, but we want to give test case generation as much help as possible
    And 60 <= n_days <= 365
    # There's no point in quarantining people for longer than the length of time the model is run
    And 0 <= quar_period <= n_days
    And 10000 <= pop_size <= 20000

    # We can't have more initially infected people than the total population
    # The theoretical limits is the following
    # But this is too vague. Z3 will just shove out 0 all the time, which is stupid
    # is the following
    # And 0 <= pop_infected <= pop_size
    # but this does mean the model operates more within its "comfort zone".
    # We want to make sure we have at least some people infected
    # We want to make sure we have enough so that the pandemic gets going most of the time
    And 100 <= pop_infected <= pop_size
    # I'm not really sure how/whether we can do this sort of thing automatically.
    # This is the sort of thing that the category partition method was meant to
    # deal with, but the categories are a bit more "fuzzy" here. There's not a
    # cutoff value where the model behaves like this for values above and like
    # that for values below. There's a sort of grey area in the middle where the
    # two distributions overlap where the pandemic might get going or it might not.

    # Must be a valid country
    And location in covasim.data.country_age_data.data
    And average_age = average_ages(location)
    # This covers the base case in the ITE
    And average_age > 0
    And household_size = household_sizes(location)

    # Probabilities must be between zero and one
    And 0 <= symp_prob <= 1
    And 0 <= asymp_prob <= 1
    And 0 <= symp_quar_prob <= 1
    And 0 <= asymp_quar_prob <= 1
    And 0 <= trace_probs <= 1

    # Further restrict parameters to suit the particular modelling scenario
    And 0.1 <= symp_prob <= 0.5
    And 0 <= asymp_prob <= 0.05
    And 0.5 <= symp_quar_prob <= 1
    And 0.5 <= asymp_quar_prob <= 1
    And 0.1 <= trace_probs <= 0.3
    And quar_period <= 14
    And 30 <= average_age <= 40

  # TODO: this is a bit clunky. It might not be  reasonable to assume that a
  # domain expert would be able to list all edges that wouldn’t be present
  # before seeing the connected graph
  @draw_dag
  Scenario: Draw DAG
    Given a connected DAG
    When we prune the following edges
    | s1              | s2              |
    | cum_deaths      | .*              |
    | cum_quarantined | .*              |
    | .*              | cum_deaths      |
    | cum_infections  | cum_quarantined |
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
    | n_days          | cum_deaths      |
    | location        | average_age     |
    | location        | household_size  |
    Then we obtain the causal DAG

  # Scenario Outline: location # This is really just a proxy for age, but age isn't an input to the model

  # Bare minimum two runs where 0 <= quar_period 14
  # Probably want to do 0-x1 and x1-14 by BVA
  @quar_period
  Scenario Outline: quar_period
  When we increase the quar_period
  Then the <output> should <change>
  Examples:
  | output          | change          | comment                                                                            |
  | cum_quarantined | decrease        | Longer quarantine means fewer cases means fewer quarantine                         |
  | cum_infections  | decrease        | Longer quarantine means less chance of infected individuals passing on the disease |
  | cum_deaths      | remain the same | No direct causal effect, only via cum_infections                                   |

  # This is controlled entirely by location, so we want to do at least two locations with different average ages
  # Do we want to run it for every country?
  @average_age
  Scenario Outline: average_age
    When we increase the average_age
    Then the <output> should <change>
    # Age does have a direct effect on the cum_deaths since older folks are more likely to die from the disease
    Examples:
    | output          | change   |
    | cum_quarantined | decrease |
    | cum_infections  | increase |
    | cum_deaths      | increase |

  # For each prob, bare minimum two runs between 0 and 1
  # Probably want to do 0-x1 and x2-1 by BVA
  # These probs are effect modifiers of each other
  @symp_prob
  Scenario: symp_prob
    # Given symp_prob > 0
    # And asymp_prob > 0
    # And symp_quar_prob > 0
    # And asymp_quar_prob > 0
    # And trace_probs > 0
    # We only actually need this for cum_quarantined since people are only quarantined when trace_probs > 0
    When we increase the symp_prob
    # Higher probability of testing means more infected people will be found so more people are quarantined
    Then the cum_quarantined should decrease
    # More tests -> more quarantined -> fewer cases
    And the cum_infections should decrease
    # No direct effect, only via cum_infections
    And the cum_deaths should remain the same

  # For each prob, bare minimum two runs between 0 and 1
  # Probably want to do 0-x1 and x2-1 by BVA
  # These probs are effect modifiers of each other
  @asymp_prob
  Scenario: asymp_prob
    # Given trace_probs > 0
    When we increase the asymp_prob
    # Higher probability of testing means more infected people will be found so more people are quarantined
    Then the cum_quarantined should decrease
    # More tests -> more quarantined -> fewer cases
    And the cum_infections should decrease
    # No direct effect, only via cum_infections
    And the cum_deaths should remain the same

  # For each prob, bare minimum two runs between 0 and 1
  # Probably want to do 0-x1 and x2-1 by BVA
  # These probs are effect modifiers of each other
  @symp_quar_prob
  Scenario: symp_quar_prob
    # Given trace_probs > 0
    When we increase the symp_quar_prob
    # Higher probability of testing means more infected people will be found so more people are quarantined
    Then the cum_quarantined should remain the same
    # More tests -> more quarantined -> fewer cases
    And the cum_infections should decrease
    # No direct effect, only via cum_infections
    And the cum_deaths should remain the same

  # For each prob, bare minimum two runs between 0 and 1
  # Probably want to do 0-x1 and x2-1 by BVA
  # These probs are effect modifiers of each other
  @asymp_quar_prob
  Scenario: asymp_quar_prob
    # Given trace_probs > 0
    When we increase the asymp_quar_prob
    # Higher probability of testing means more infected people will be found so more people are quarantined
    Then the cum_quarantined should decrease
    # More tests -> more quarantined -> fewer cases
    And the cum_infections should decrease
    # No direct effect, only via cum_infections
    And the cum_deaths should remain the same

  # For each prob, bare minimum two runs between 0 and 1
  # Probably want to do 0-x1 and x2-1 by BVA
  # These probs are effect modifiers of each other
  @trace_probs
  Scenario: trace_probs
    When we increase the trace_probs
    # Higher probability of testing means more infected people will be found less people need to quarantine
    Then the cum_quarantined should increase
    # More tests -> more quarantined -> fewer cases
    And the cum_infections should decrease
    # No direct effect, only via cum_infections
    And the cum_deaths should remain the same

  # Bare minimum two runs where 60 <= n_days <= 365
  # Probably want to do min-x1 and x2-max by BVA
  @n_days
  Scenario Outline: n_days
    When we increase the n_days
    Then the <output> should increase
    Examples:
    | output          |
    | cum_quarantined |
    | cum_infections  |
    | cum_deaths      |

  # Bare minimum two runs where 0 < pop_size
  # Probably want to do min-x1 and x2-max by BVA
  @pop_size
  Scenario Outline: pop_size
    When we increase the pop_size
    Then the <output> should increase
    Examples:
    | output          |
    | cum_quarantined |
    | cum_infections  |
    | cum_deaths      |

  # Bare minimum two runs where pop_infected <= pop_size
  # Probably want to do pop_infected=pop_size (by BVA) and pop_infected < pop_size
  @pop_infected
  Scenario Outline: pop_infected
    When we increase the pop_infected
    Then the <output> should <change>
    Examples:
    | output          | change          | comment                                   |
    | cum_quarantined | increase        | More people to quarantine                 |
    | cum_infections  | increase        | More people to get the disease            |
    | cum_deaths      | remain the same | No direct effect, only via cum_infections |
