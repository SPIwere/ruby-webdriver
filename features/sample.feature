Feature: Sample

  Scenario: Basic Sample
    Given I open new page
    When I land on the "Sample Page"
    Then I put all data to the required fields
    Then I select Required check box
    Then I click on the "Submit" button
    And I validate that data on the page is correct
