import '../support/commands';

describe('Reserva completa - 2 adultos e 1 criança até 5 anos', () => {

    it('Deve realizar uma reserva com sucesso', () => {
      /*
      // 1. Acessa o site
      cy.visit('https://reservas.desbravador.com.br/hotel-app/hotel-teste-desbravador-8050');

      cy.wait(3000)

      cy.selecionarDiaCalendario('2');
      cy.selecionarDiaCalendario('5');

     // Define adultos = 2
      cy.get('input[name="calendar-adults"]').clear().type('2');

      // Abre dropdown crianças
      cy.get('.btn-children-container .btn-group.dropup > .btn-children').click();

      // Define criança até 5 anos = 1
      cy.get('input#faixa1')
        .clear({ force: true })
        .type('{selectall}1', { force: true })
        .should('have.value', '1');

      cy.contains('button', 'Verificar Disponibilidade').click();

      */
      cy.visit('https://reservas.desbravador.com.br/hotel-app/hotel-teste-desbravador-8050/reservation?checkin=2025-06-02&checkout=2025-06-06&adults=2&child1=1&child2=0&child3=0&resident=0');

      cy.wait(20000)

      cy.contains('p.room-title', 'STANDARD ST1')    // acha o título do quarto
        .parents('div.sc-igQrDQ')
        .contains('button', 'Adicionar')
        .first()
        .click()

      cy.contains('button', 'Continuar').click()

    });
  
  });