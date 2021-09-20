Feature: Call it something sensible
  Background:
    Given a simulation with parameters
      # Put your inputs in here
      | parameter    | type | value      |
      | input1       | int  | 14         |
      | input2       | str  | hello      |
      | input3       | bool | True       |
    And the following variables are recorded every time step
      # Put your outputs in here
      | variable          | type  |
      | output1           | int   |
      | output2           | float |


  Scenario: Example
    Given we run the model with input1=14
    When we run the model with input1=16
    Then the output2 should be greater

  # Fill in the blanks!
  # The things you need to change are written <like this>.
  Scenario: Give it a name
    Given we run the model with <parameter>=<value>
    When we run the model with <parameter>=<differentValue>
    Then the <output> should be <relationship>

  # Put in more scenarios like this if you want
