Feature: Display PDF templates
  In order to verify that cucumber is installed and configured correctly
  As an aspiring BDD fanatic 
  I should be able to run this scenario and see that the steps pass (green like a cuke)
 
  @javascript
  Scenario: Displaying a PDF template
    Given I am on the home page
    When I click on "int-300-filled-inline"
    Then the current path should be "/template/inline/int300-filled.pdf"
    Then I should see an inline PDF
    And the PDF should have the content "Request for Interpreter"
    And the PDF should have the content "RIF1234567"

