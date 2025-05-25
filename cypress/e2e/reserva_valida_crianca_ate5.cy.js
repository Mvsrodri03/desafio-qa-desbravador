import '../support/commands';
import '../support/e2e';

describe('Reserva completa - 2 adultos e 1 criança até 5 anos', () => {

    beforeEach(() => {
      cy.wait(1000); // Espera 500ms antes de cada teste
    });

    it('Deve realizar uma reserva com sucesso', () => {
      
      // 1. Acessa o site
      cy.visit('https://reservas.desbravador.com.br/hotel-app/hotel-teste-desbravador-8050');

      cy.wait(35000)

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

      cy.wait(15000)

      cy.contains('p.room-title', 'STANDARD ST1')    // acha o título do quarto
        .parents('div.sc-igQrDQ')
        .contains('button', 'Adicionar')
        .first()
        .click()

      cy.get('button.btn-secondary').contains('Continuar').click()

      cy.wait(5000)

      // Abrir o modal de hóspedes
      cy.get('.sc-dYwfDW').contains('button', 'Hóspedes').click();

     // Buscar todos os blocos de input dentro do modal
    cy.get('.modal-body .mb-3').then((campos) => {
      // Primeiro hóspede - Adulto 1
      cy.wrap(campos[0]).find('input').type('DESBRAVADOR SOFTWARE');
      cy.wrap(campos[1]).find('input').type('desbravador@email.com');

      // Segundo hóspede - Adulto 2
      cy.wrap(campos[2]).find('input').type('Maria');
      cy.wrap(campos[3]).find('input').type('maria@email.com');

      // Terceiro hóspede - Criança
      cy.wrap(campos[4]).find('input').type('Pedro');
      cy.wrap(campos[5]).find('input').type('pedro@email.com');
    });

      // Clicar em Salvar
      cy.get('.modal-body').contains('button', 'Salvar').click();

      // Clicar em Continuar
      cy.get('button.btn-secondary').contains('Continuar').click()

      // Dados pessoais
      cy.get('input[name="email"]').type('desbravador@email.com');
      cy.get('input[name="firstName"]').type('DESBRAVADOR');
      cy.get('input[name="lastName"]').type('SOFTWARE');

      // Dados do cartão
      cy.get('input[name="number"]').type('4000000000000044');
      cy.get('input[name="name"]').type('DESBRAVADOR SOFTWARE');
      cy.get('input[name="expiry"]').type('1225');
      cy.get('input[name="cvc"]').type('123');

      //marcar o checkbox
      cy.get('input[type="checkbox"].form-check-input').check({ force: true });

      cy.wait(35000)

      cy.contains('button', 'Finalizar').click();
    });
  
  });