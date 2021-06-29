Feature: Peaks
  In which we try to lay out some more complex temporal scenarios WRT the peak of infection where we might get some confounding.

  # Could we use the background as the control group?
  Background:
    Given we run the model with the basic inputs
      * a large "population"
      * a valid "location"
      * "initial_infected" > 0
      * a valid "start_date"
      * a valid "end_date"

  # | no intervention | mass testing |
  # Informal causal question: What is the effect of <intervention> on the infection rate?
  # Formal causal question: What is the causal effect of implementing <intervention> at time step t with probabilities ... on the infection rate t' time steps after implementing it in comparison to no intervention?
  # Intervention: <intervention>
  # Outcome: Infection rate decreases
  Scenario Outline: Interventions
    Given we run the model with the background inputs
    When we implement <intervention> at some point
    Then the infection rate should stop increasing
    Examples:
    | intervention   |
    | testing        |
    | test and trace |

  # | test and trace | testing only |
  # Informal causal question: What is the effect of contact tracing breaking down on the infection rate?
  # Formal causal question: What is the effect of stopping contact tracing once the infection rate reaches N new infections per day on the infection rate t time steps after stopping in comparison to 1. if we kept on tracing, and 2. if we never traced at all?
  # Intervention: Stopping contact tracing at time t
  # Outcome: Infection rate becomes exponential
  Scenario: Contact tracing breaks down
    Given we run the model with the background inputs
    And we implement test and trace
    When we stop tracing
    Then the model should behave the same as a plain testing run from that point on

  # | total tracing | limited tracing |
  # Informal causal question: What is the effect of limited contact tracing resources on the infection rate?
  # Formal causal question: What is the effect of having a fixed limit of X tracable contacts per day on the infection rate t time steps into the run of the model in comparison to 1. if we didn't have a fixed limit, and 2. if we never traced at all?
  # Intervention: limiting the number of tracable contacts to X
  # Outcome: Infection rate becomes exponential once we can't trace everyone
  Scenario: Limited contact tracing
    Given we run the model with the background inputs
    And we implement test and trace with a fixed maximum of X contacts per day
    When the rate of infection exceeds the number of tracable contacts
    Then the curve should behave as if we're not tracing

  # | schools open | schools closed | schools open |
  # Informal causal question: What is the effect of opening/closing schools on the infection rate?
  # Formal causal question: What is the effect of openning/closing schools on the infection rate t time steps after the intervention in comparison to if we didn't close/reopen?
  # Intervention: Closing/reopening schools
  # Outcome: The infection rate should be lower when the schools are closed
  Scenario: Close and reopen the schools
    Given we run the model with the background inputs
    When we close the schools
    Then the infection rate should decrease
    When we reopen the schools
    Then the infection rate should increase
