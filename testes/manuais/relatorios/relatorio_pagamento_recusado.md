**Data:** 24/05/2025  
**Responsável:** Marcos Vinícius Dos Santos Rodrigues  
**Ambiente:** Desktop – Windows 10 Pro (64 bits) – Chrome 136.0.7103.114 – Ryzen 5 3600 – 16 GB RAM – RTX 2060 – Full HD 

### 4. Pagamento recusado (cartão inválido)
**Arquivo:** `pagamento_recusado.feature`  
**Pré-condições:** Usuário não logado ou logado (dependendo do fluxo).  
**Passos Executados:**
1. Acessar o site https://reservas.desbravador.com.br/1111.
2. Selecionar datas: [data início] a [data fim].
3. Escolher quarto "STANDARD ST1".
4. Adicionar 2 adultos e 1 criança (5 anos).
5. Preencher dados dos hóspedes.
6. Inserir dados de pagamento inválidos:
   - Cartão: 6000 0060 0500 0044
   - Nome no cartão: DESBRAVADOR SOFTWARE
   - Validade: 13/19 (expirada)
   - CVC: 321
7. Tentar finalizar a reserva.

**Falha Identificada:**  
- Mensagem exibida: `"Código inválido"`  
- Mensagem esperada: `"Código de segurança (CVC) inválido"`  

**Resultado Esperado vs. Obtido:**
| Esperado | Obtido |
|----------|--------|
| Pagamento recusado com mensagem clara | ❌ Pagamento recusado, mas mensagem genérica |

**Sugestão:**  
> Melhorar a mensagem de erro para deixar claro que o problema está no **CVC**, orientando melhor o usuário.

**Evidências:**
- ![Screenshot_Pagamento_Falha](../evidencias/screenshots/pagamento_recusado.png)
- [Logs](../evidencias/logs/log_pagamento_recusado.txt)
