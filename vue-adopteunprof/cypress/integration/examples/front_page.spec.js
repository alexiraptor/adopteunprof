describe('front test', function () {
    it('Visits the prof front', function () {
      cy.visit('http://www.under-wolf.eu/');
      cy.contains('Login');
      cy.contains('Login').click();
      cy.url().should('include', '/login');
    });
  });