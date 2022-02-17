Feature: Influenza1918 Abstract
  Background: IO spec
    Given a simulation with parameters
      | parameter        | type  | distribution                    |
      | MortalityProb    | float | truncnorm(0.01, 0.005, 0, 1)    |
      | Infected         | float | truncnorm(1000, 100, 500, 1500) |
      | MortalityTime    | float | truncnorm(1   , 0.5, 2, 6)      |
      | TransmissionProb | float | truncnorm(0.1 , 0.05, 0.01, 1)  |
      | IncubationTime   | float | truncnorm(3   , 1.5, 1, 5)      |
      | RecoveryTime     | float | truncnorm(2.5 , 1.25, 1, 5)     |
      | EncounterRate    | float | truncnorm(4   , 2, 1, 10)       |
    And the following meta variables
    # | pandemic_gets_going | bool |
      | variable               | type    |
      | MortalityProb_category | dag_steps.MP_cat  |
      | pandemic_gets_going    | bool    |
    And the following variables are recorded at the end of the simulation
      | variable        | type  |
      | deceased        | float |
      | recovered       | float |
      | cases           | float |
      | peak            | int   |
      | peak_infectious | float |

    # And pandemic_gets_going
    # And MortalityProb_med

      # And MortalityProb in [0.01, 0.02, 0.005]
      # And Infected in [1000, 500, 2000]
      # And RecoveryTime in [2.5, 1.25, 5]
      # And MortalityTime in [1, 0.5, 2]
      # And TransmissionProb in [0.15, 0.075, 0.3]
      # And EncounterRate in [4, 2, 8]
      # And IncubationTime in [3, 1.5, 6]

      # And 0.005 <= MortalityProb <= 0.02
      # And 500 <= Infected <= 5000
      # And 1 <= MortalityTime <= 5
      # And 0.01 < TransmissionProb <= 1
      # And IncubationTime > 0.01
      # And RecoveryTime > 0.01
      # And EncounterRate > 0.01

  @draw_dag
  Scenario: Draw DAG
    Given a connected DAG
    When we prune the following edges
    | s1              | s2 |
    | deceased        | .* |
    | recovered       | .* |
    | cases           | .* |
    | peak            | .* |
    | peak_infectious | .* |
    And we add the following edges
    | s1               | s2                     |
    | MortalityProb    | MortalityProb_category |
    | peak             | peak_infectious        |
    | MortalityProb    | pandemic_gets_going    |
    | Infected         | pandemic_gets_going    |
    | MortalityTime    | pandemic_gets_going    |
    | TransmissionProb | pandemic_gets_going    |
    | IncubationTime   | pandemic_gets_going    |
    | RecoveryTime     | pandemic_gets_going    |
    | EncounterRate    | pandemic_gets_going    |
    Then we obtain the causal DAG

  @MortalityProb_decrease
  Scenario: P(Mortality) decrease
    When we decrease the MortalityProb
    Then the deceased should decrease
    Then the recovered should increase

  @MortalityProb_increase
  Scenario: P(Mortality) increase
    When we increase the MortalityProb
    Then the deceased should increase
    Then the recovered should decrease

  @Infected_decrease
  Scenario: N(Infectious) decrease
    When we decrease the Infected
    # Peak moves to the left and right, but doesn't infect the total much
    Then the peak should move to the right
    And the peak_infectious should remain the same

  @Infected_increase
  Scenario: N(Infectious) increase
    When we increase the Infected
    # Peak moves to the left and right, but doesn't infect the total much
    Then the peak should move to the left
    And the peak_infectious should remain the same

  @MortalityTime_decrease
  Scenario: T(Die) decrease
    When we decrease the MortalityTime
    # Doesn't seem to really increase the number of infected much in covasim.
    # Possibly because the infection seriousness is split into strata rather than just "Infected" and "Dead"
    Then the cases should decrease
    And the deceased should decrease

  @MortalityTime_increase
  Scenario: T(Die) increase
    When we increase the MortalityTime
    Then the cases should increase
    And the deceased should increase

  @TransmissionProb_decrease
  Scenario: P(Transmission) decrease
    When we decrease the TransmissionProb
    Then the cases should decrease
    And the deceased should decrease
    And the recovered should decrease

  @TransmissionProb_increase
  Scenario: P(Transmission) increase
    When we increase the TransmissionProb
    Then the cases should increase
    And the deceased should increase
    And the recovered should increase

  @IncubationTime_decrease
  Scenario: T(Incubate) decrease
    When we decrease the IncubationTime
    # Peak is sooner and infectious at peak is much higher
    # Gradient of TotalInfected is steeper
    Then the peak should move to the left
    And the peak_infectious should increase

  @IncubationTime_increase
  Scenario: T(Incubate) increase
    When we increase the IncubationTime
    Then the peak should move to the right
    And the peak_infectious should decrease

  @RecoveryTime_decrease
  Scenario: T(Recovery) decrease
    When we decrease the RecoveryTime
    Then the peak should move to the right
    And the peak_infectious should decrease

  @RecoveryTime_increase
  Scenario: T(Recovery) increase
    When we increase the RecoveryTime
    Then the peak should move to the left
    And the peak_infectious should increase

  @EncounterRate_decrease
  Scenario: Rate(Encounter) decrease
    When we decrease the EncounterRate
    Then the cases should decrease
    And the deceased should decrease

  @EncounterRate_increase
  Scenario: Rate(Encounter) increase
    When we increase the EncounterRate
    Then the cases should decrease
    And the deceased should increase
