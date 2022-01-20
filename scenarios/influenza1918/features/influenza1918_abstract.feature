Feature: Influenza1918 Abstract
  Background: IO spec
    Given a simulation with parameters
      | parameter        | type  | distribution                  |
      | MortalityProb    | float | scipy.stats.norm(0.01, 0.005) |
      | Infected         | float | scipy.stats.norm(1000, 500)   |
      # | RecoveryTime     | float | scipy.stats.norm(2.5 , 1.25)  |
      # | MortalityTime    | float | scipy.stats.norm(1   , 0.5)   |
      # | TransmissionProb | float | scipy.stats.norm(0.1 , 0.05)  |
      # | IncubationTime   | float | scipy.stats.norm(3   , 1.5)   |
      # | EncounterRate    | float | scipy.stats.norm(4   , 2)     |
    And the following variables are recorded at the end of the simulation
      | variable        | type  |
      | deceased        | float |
      | recovered       | float |
      | cases           | float |
      | peak            | int   |
      | peak_infectious | float |

      And MortalityProb in [0.01, 0.02, 0.005]
      And Infected in [1000, 500, 2000]
      # And RecoveryTime in [2.5, 1.25, 5]
      # And MortalityTime in [1, 0.5, 1]
      # And TransmissionProb in [0.15, 0.075, 0.3]
      # And EncounterRate in [4, 2, 8]
      # And IncubationTime in [3, 1.5, 6]

      # And 0.01 < MortalityProb <= 1
      # And RecoveryTime > 0.01
      # And MortalityTime > 0.01
      # And 0.01 < TransmissionProb <= 1
      # And IncubationTime > 0.01
      # And EncounterRate > 0.01
      # And Infected > 500

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
    Then we obtain the causal DAG

  Scenario: P(Mortality) decrease
    When we decrease the MortalityProb
    Then the deceased should decrease
    Then the recovered should decrease

  Scenario: P(Mortality) increase
    When we increase the MortalityProb
    Then the deceased should increase
    Then the recovered should increase

  Scenario: N(Infectious) decrease
    When we decrease the Infected
    # Peak moves to the left and right, but doesn't infect the total much
    Then the peak should move to the right
    And the peak_infectious should remain the same

  Scenario: N(Infectious) increase
    When we increase the Infected
    # Peak moves to the left and right, but doesn't infect the total much
    Then the peak should move to the left
    And the peak_infectious should remain the same

  # Scenario: T(Die) decrease
  #   When we decrease the MortalityTime
  #   # Doesn't seem to really increase the number of infected much in covasim.
  #   # Possibly because the infection seriousness is split into strata rather than just "Infected" and "Dead"
  #   Then the cases should decrease
  #   And the deceased should decrease
  #
  # Scenario: T(Die) increase
  #   When we increase the MortalityTime
  #   Then the cases should increase
  #   And the deceased should increase
  #
  # Scenario: P(Transmission) decrease
  #   When we decrease the TransmissionProb
  #   Then the cases should decrease
  #   And the deceased should decrease
  #   And the recovered should decrease
  #
  # Scenario: P(Transmission) increase
  #   When we increase the TransmissionProb
  #   Then the cases should increase
  #   And the deceased should increase
  #   And the recovered should increase
  #
  # Scenario: T(Incubate) decrease
  #   When we decrease the IncubationTime
  #   # Peak is sooner and infectious at peak is much higher
  #   # Gradient of TotalInfected is steeper
  #   Then the peak should move to the left
  #   And the peak_infectious should increase
  #
  # Scenario: T(Incubate) increase
  #   When we increase the IncubationTime
  #   Then the peak should move to the right
  #   And the peak_infectious should decrease
  #
  # Scenario: T(Recovery) decrease
  #   When we decrease the RecoveryTime
  #   Then the peak should move to the right
  #   And the peak_infectious should decrease
  #
  # Scenario: T(Recovery) increase
  #   When we increase the RecoveryTime
  #   Then the peak should move to the left
  #   And the peak_infectious should increase
  #
  # Scenario: Rate(Encounter) decrease
  #   When we decrease the EncounterRate
  #   Then the cases should decrease
  #   And the deceased should decrease
  #
  # Scenario: Rate(Encounter) increase
  #   When we increase the EncounterRate
  #   Then the cases should decrease
  #   And the deceased should increase
