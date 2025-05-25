import './commands';

Cypress.on('uncaught:exception', (err, runnable) => {
    // Retorne false para impedir que o erro falhe o teste
    return false;
  });