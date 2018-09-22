Feature: day 3 cucumber lab
  Scenario: Responsive UI behavior.
  Given I open new page
    When I land on the "Sample Page"
    Then I validate that data visible on the page
    When I change size of the window
    Then I validate that data not visible on the page
