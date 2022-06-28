*** Settings ***
Documentation     A test suite with a single test for valid login.
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Resource          ./resources/test.robot

*** Test Cases ***
# Open Google & Verify Google
#     Open Browser   https://www.google.com   browser=firefox
#     ${Get_title}=      Get Title
#     Should Be Equal As Strings     ${Get_title}   Google
#     Close Browser

Visits wikipedia page and search for flower
    Given I am a user, I visit wikipedia page
    Then I should see Wikipedia word
    Then I click key in flower to the searchbar
    And I click enter
    Then I should see first header