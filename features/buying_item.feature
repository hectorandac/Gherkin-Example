Feature: Buying process
  This is for the user to buy things in our website.

  Scenario: See item price
    Given user is customer
    When user request is see price
    And user do not have the information
    Then user receives "20.55"
