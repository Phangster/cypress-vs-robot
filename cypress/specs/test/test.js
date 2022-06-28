import { Given, Then, And } from 'cypress-cucumber-preprocessor/steps';

Given('I am a user, I visit wikipedia page', () => {
  cy.visit('https://www.wikipedia.org/');
});

Then('I should see wikipedia word', () => {
  cy.get('.svg-Wikipedia_wordmark').should('have.text', '\nWikipedia\n');
});

Then('I click key in flower to the searchbar', () => {
  cy.get('#searchInput').clear().type('flower', { log: false });
});

And('I click enter', () => {
  cy.get('.pure-form').submit();
});

Then('I should see first header', () => {
  cy.url().should('include', 'https://en.wikipedia.org/wiki/Flower');
  cy.get('.firstHeading').should('have.text', 'Flower');
});
