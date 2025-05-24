# 📋 Teste Prático QA - Desbravador Software

## Objetivo
Documentação dos cenários de teste manuais para o sistema de **Reservas Online**, conforme desafio técnico.

## 🔍 Cenários Implementados

| ID   | Nome do Cenário                                    | Prioridade | Status | Arquivo                                                                                      |
|------|----------------------------------------------------|------------|--------|----------------------------------------------------------------------------------------------|
| 001 | Reserva válida sem login (criança até 5 anos)      | Alta       | ✅     | [reserva_valida_crianca_ate5.feature](/testes/manuais/cenarios/reserva_valida_crianca_ate5. |
| 002 | Reserva válida sem login (criança de 6 a 11 anos)  | Alta       | ✅     | [reserva_valida_crianca_6a11.feature](/testes/manuais/cenarios/reserva_valida_crianca_6a11. |
| 003  | Reserva com login e desconto                       | Alta       | ⚠️     | [reserva_login.feature](/testes/manuais/cenarios/reserva_login.feature)                      |
| 004  | Pagamento recusado (dados inválidos)               | Crítica    | ❌     | [pagamento_recusado.feature](/testes/manuais/cenarios/pagamento_recusado.feature)            |
| 005  | Verificação de disponibilidade (sem vagas)         | Média      | ✅     | [disponibilidade.feature](/testes/manuais/cenarios/disponibilidade.feature)                  |


## 📂 Estrutura do Repositório

├── README.md # Documentação principal (explicação do projeto)
├── METODOLOGIA.md # Justificativas dos cenários
├── /testes
│ └── /manuais
│ ├── /cenarios
│ │ ├── reserva_valida_crianca_ate5.feature
│ │ ├── reserva_valida_crianca_6a11.feature
│ │ ├── reserva_login.feature
│ │ ├── pagamento_recusado.feature
│ │ └── disponibilidade.feature
│ └── /relatorios
│ ├── reserva_valida_crianca_ate5.md
│ ├── reserva_valida_crianca_6a11.md
│ ├── relatorio_reserva_login.md
│ ├── relatorio_pagamento_recusado.md
│ └── relatorio_disponibilidade.md
└── /evidencias
├── /screenshots
└── /logs