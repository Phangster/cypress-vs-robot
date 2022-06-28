*** Settings ***
Documentation     A test suite with a single test for valid login.
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Resource          ./resources/test.robot
Test Teardown     Close Browser

*** Test Cases ***
Visits wikipedia page and search for flower
    Given I am a user, I visit wikipedia page
    Then I should see Wikipedia word
    Then I click key in flower to the searchbar
    And I click enter
    Then I should see first header