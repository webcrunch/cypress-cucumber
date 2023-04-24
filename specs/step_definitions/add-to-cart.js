import { Given, When, Then } from "@badeball/cypress-cucumber-preprocessor";

// this step definition is already in search.js
// so commented it out since duplicate step definitions
// are not allowed
/*Given('that I am on the start page', () => {
});*/

// define variables outside steps
// (and give them values inside a step)
// if you want to reuse them in another step
let searchedFor;
let searchName;
Given('That i need to be on the first page', () => {
  // Goto the start page
  cy.visit('/');
});


When('that i have searched for {string}', (product) => {
  searchedFor = product;
  cy.get('#search').type(product);
});

When('I click the buy button {string} time', (clickCount) => {
  for (let i = 1; i <= +clickCount; i++) {
    // find h2 that contains the product we have searched for
    cy.get('.product h2').contains(searchedFor)
      // find its product div
      .parents('.product')
      // find the buy button inside the product div
      .find('button').contains('Köp')
      // and click the button
      .click();
  }
});

Then('{string} {string} should be added to the cart', (quantity, productName) => {
  // find a li (list item) in the cart that contains the product name
  cy.get('#cart li')
    .contains(productName)
    // and also contains the correct quantity
    .contains(quantity + 'st')
    // we should 1 element
    .should('have.length', 1);
});

When('That the user search for {string}', (searchTerm) => {
   searchName = searchTerm;
  cy.get('#search').type(searchTerm);
});

When('Added the product to the cart {string} times', (clickCount) => {
  for (let i = 1; i <= +clickCount; i++) {
    // find h2 that contains the product we have searched for
    cy.get('.product h2').contains(searchName)
      // find its product div
      .parents('.product')
      // find the buy button inside the product div
      .find('button').contains('Köp')
      // and click the button
      .click();
  }
});

Then('the price will be correct', () => {
  // TODO: implement step
  let collected = [];
  cy.get('#cart li')
    .contains(searchName)
    .find('span').each(span => {
      collected.push(+span.text().replace(/\D/g, ''));
      if (collected.length === 3) {
        let [perPiece, quantity, rowSum] = collected;
        expect(perPiece * quantity).to.equal(rowSum);
      }
    });
});