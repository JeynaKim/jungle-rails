describe("Homepage", () => {
  it('Should be able to visit the root page', () => {
    cy.visit('/');
  });

  it("There is products on the page", () => {
    cy.get(".products article").should("be.visible");
  });

  it("User can add a product to the cart ", () => {
    cy.get(".nav-link")
      .contains("My Cart (0)").should("be.visible");
    cy.get(".products article").contains("Add")
      .click({force: true})
    cy.get(".nav-link")
      .contains("My Cart (1)").should("be.visible");
  });
})