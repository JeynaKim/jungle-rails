describe('Product details', () => {
  it('Should be able to visit the root page', () => {
    cy.visit('/');
  });

  it("There is products on the page", () => {
    cy.get(".products article").should("be.visible");
  });

  it("User can click and visit to the product detail page", () => {
    cy.get(".products article").first().click()
    cy.get('.product-detail').should("be.visible");
  });
})