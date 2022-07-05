describe('Main', () => {
  it('should be able to visit the root page', () => {
    cy.visit('/');
  });

  it("There is products on the page", () => {
    cy.visit('/');
    cy.get(".products article").should("be.visible");
  });

  it("There is 2 products on the page", () => {
    cy.visit('/');
    cy.get(".products article").should("have.length", 2);
  });
})