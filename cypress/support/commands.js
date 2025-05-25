Cypress.Commands.add('selecionarDiaCalendario', (dia) => {
    cy.get('div.day.toMonth.valid').each(($el) => {
      const textoDia = $el.text().trim().split('\n')[0].trim();
      if (textoDia === dia) {
        cy.wrap($el).click();
        return false;
      }
    });
  }
);

Cypress.Commands.add('preencherHospedes', (hospedes) => {
  cy.get('.modal-body .mb-3').each((campo, index) => {
    cy.wrap(campo).find('input').type(hospedes[index]);
  });
});