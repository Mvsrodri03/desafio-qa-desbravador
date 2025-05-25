Cypress.Commands.add('selecionarDiaCalendario', (dia) => {
    cy.get('div.day.toMonth.valid').each(($el) => {
      const textoDia = $el.text().trim().split('\n')[0].trim();
      if (textoDia === dia) {
        cy.wrap($el).click();
        return false;
      }
    });
  });