@calculator
Feature: Calculator.com
  Background:
    Given I navigate to "https://www.calculator.com/"
    When I land on the "calculator.com calculate anything, anytime, anywhere"

  # Test 9
  @Multi
  Scenario: Multiplication of 3 elements
  Given I navigate to "https://www.calculator.com/"
  When I land on the "calculator.com calculate anything, anytime, anywhere"
  Then I click on the Standard calculator link
  When I land on the Standard Calculator
  When I enter "58"
  Then I click on the button "*"
  Then I enter "3"
  Then I click on the button "equal"
  And I see result "174"


  # Test 10
  @wid
  Scenario: Area
    Then I click on the Area calculator page
    And I land on the "Simple Area Calculator"
    When I put width "65" feet and "8" inch
    And I put length "40" feet and 1 inch
    When I click on the Calculate button
    Then I land on the result page
    And I validate correct math results


  #Test 11
  @temp
  Scenario Outline: Temperature
    Then I click on the temperature calculator page
    And I land on the "Temperature calculator"
    When I put "<Celsius>" Celsius
    Then I click on the Calculate button
    And I validate that it has correct "<Fahrenheit>"
    Examples:
      | Celsius | Fahrenheit |
      | 30      |     86     |
      | 0       |     32     |