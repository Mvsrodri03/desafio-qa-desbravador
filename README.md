# 📋 Teste Prático QA - Desbravador Software

## Objetivo
Documentação dos cenários de teste manuais e automatizados para o sistema de **Reservas Online**, conforme desafio técnico.

## 🔍 Cenários Implementados

| ID   | Nome do Cenário                                    | Arquivo                                                                                      |
|------|----------------------------------------------------|----------------------------------------------------------------------------------------------|
| 001 | Reserva válida sem login (criança até 5 anos)      | [reserva_valida_crianca_ate5.feature](/testes/manuais/cenarios/reserva_valida_crianca_ate5.feature) |
| 002 | Reserva válida sem login (criança de 6 a 11 anos)  | [reserva_valida_crianca_6a11.feature](/testes/manuais/cenarios/reserva_valida_crianca_6a11.feature) |
| 003 | Reserva com login e desconto                       | [reserva_login.feature](/testes/manuais/cenarios/reserva_login.feature)               |
| 004 | Pagamento recusado (dados inválidos)               | [pagamento_recusado.feature](/testes/manuais/cenarios/pagamento_recusado.feature)     |
| 005 | Verificação de disponibilidade (sem vagas)         | [disponibilidade.feature](/testes/manuais/cenarios/disponibilidade.feature)           |

## 🔍 Relatórios dos Cenários Implementados

| ID   | Nome do Cenário                                    | Prioridade | Status | Arquivo                                                                                      | Observações |
|------|----------------------------------------------------|------------|--------|----------------------------------------------------------------------------------------------|-------------|
| 001 | Reserva válida sem login (criança até 5 anos)      | Alta       | ✅     | [reserva_valida_crianca_ate5.feature](/testes/manuais/relatorios/reserva_valida_crianca_ate5.md) | Funcionamento conforme esperado - criança isenta |
| 002 | Reserva válida sem login (criança de 6 a 11 anos)  | Alta       | ⚠️     | [reserva_valida_crianca_6a11.feature](/testes/manuais/relatorios/reserva_valida_crianca_6a11.md) | Problema no cálculo proporcional (valor superior ao adulto) |
| 003 | Reserva com login e desconto                       | Alta       | ❌     | [reserva_login.feature](/testes/manuais/relatorios/relatorio_reserva_login.md)                      | Desconto de 10% não aplicado para usuários cadastrados |
| 004 | Pagamento recusado (dados inválidos)               | Crítica    | ✅     | [pagamento_recusado.feature](/testes/manuais/relatorios/relatorio_pagamento_recusado.md)            | Bloqueio correto, mas sugere melhoria na mensagem de erro |
| 005 | Verificação de disponibilidade (sem vagas)         | Média      | ❌     | [disponibilidade.feature](/testes/manuais/relatorios/relatorio_disponibilidade.md)                  | Sistema permite reserva mesmo sem disponibilidade |


## 🎥 Teste Automatizado - Reserva Válida (Criança até 5 anos)

### OBS:
- O teste foi realizado utilizando a ferramenta Cypress na versão 14.4, com aproximadamente 100% de automação, exceto pela validação de CAPTCHAs, que exigiu intervenção manual devido às limitações técnicas inerentes a essas ferramentas. Essa restrição ocorre por motivos de segurança fundamentais, já que a própria concepção do CAPTCHA foi desenvolvida especificamente para diferenciar humanos de bots, utilizando sistemas avançados como o reCAPTCHA da Google, que empregam inteligência artificial para detectar automações. Todas as demais etapas do processo foram concluídas com sucesso de forma automatizada, completando a reserva de um quarto.

### 📋 Parâmetros do teste
1. Acessar o endereço https://reservas.desbravador.com.br/1111
2. Verificar a disponibilidade de reserva para no mínimo 03 dias
3. Selecionar o quarto STANDARD ST1
4. Adicionar na reserva 02 Adultos e 01 criança até 05 anos
5. Informar os hospedes da reserva
6. Efetuar pagamento com cartão de crédito descrito abaixo. NUMERO: 4000 0000 0000 0044
NOME: DESBRAVADOR SOFTWARE
VALIDADE: 12/23
CVC: 123.

### 📹 Vídeo de Execução
[Teste_automatizado_cypress.mp4](/evidencias/videos/Teste_automatizado_cypress.mp4)

### 📋 Arquivo de Automação
[reserva_valida_crianca_ate5.cy.js](https://github.com/Mvsrodri03/desafio-qa-desbravador/tree/main/cypress/e2e/reserva_valida_crianca_ate5.cy.js)

## 📂 Estrutura do Repositório
```text
/desafio-qa-desbravador
├── README.md # Documentação principal (explicação do projeto)
├── JUSTIFICATIVA.md # Motivos para as escolhas dos cenários
├── /testes
│   └── /manuais
│       ├── /cenarios
│       │   ├── reserva_valida_crianca_ate5.feature
│       │   ├── reserva_valida_crianca_6a11.feature
│       │   ├── reserva_login.feature
│       │   ├── pagamento_recusado.feature
│       │   └── disponibilidade.feature
│       └── /relatorios
│           ├── reserva_valida_crianca_ate5.md
│           ├── reserva_valida_crianca_6a11.md
│           ├── relatorio_reserva_login.md
│           ├── relatorio_pagamento_recusado.md
│           └── relatorio_disponibilidade.md
├─── /cypress
│    ├── /e2e
│    │   ├── reserva_valida_crianca_ate5.cy.js
│    ├──/screenshots
│    ├──/support
│    │  ├── commands.js
│    │  └── e2e.js
│    └──/videos
└── /evidencias
    ├─ /screenshots
    └── /videos
    
```
