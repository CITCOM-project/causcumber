Feature: Compare interventions
  Background:
    Given a simulation with parameters
      | parameter     | value      | type |
      | sfs  | 235  | int  |
      | fsfsf  | 4  | int  |
      | fsf  | 24  | int  |
    And the following variables are recorded weekly
      | variable          | type |
      | ghost  | str  |
