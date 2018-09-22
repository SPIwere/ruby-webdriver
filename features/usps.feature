@usps
Feature: USPS
  Background:
    Given I open "usps" page
    When I land on the "Welcome | USPS"

  @zipsearch
  Scenario Outline: Validate zip code functionality
    Then I go to Lookup ZIP page by address
    When I land on the "ZIP Code™ Lookup | USPS"
    Then I go to find by address page
    Then I fill up data street "<street>" city "<city>" state "<state>"
    And I click on the Find button
    Then I validate "<zip_code>" zip code exists in the result
    Examples:
      | street              | city      | state | zip_code |
      | 4970 El Camino Real | Los Altos | CA    | 94022    |

  @deliv_price
  Scenario: Validate ZIP code functionality
    Then Go to Calculate Price page
    And I select "United Kingdom" with "Postcard" shape
    And I define "2" quantity
    Then I calculate the price and validate cost is "$2.30"