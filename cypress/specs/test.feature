Feature: Test page

Scenario: Visits wikipedia page and search for flower
  Given I am a user, I visit wikipedia page
  Then I should see wikipedia word
  Then I click key in flower to the searchbar
  And I click enter
  Then I should see first header