**Data:** 24/05/2025  
**Responsável:** Marcos Vinícius Dos Santos Rodrigues  
**Ambiente:** Desktop – Windows 10 Pro (64 bits) – Chrome 136.0.7103.114 – Ryzen 5 3600 – 16 GB RAM – RTX 2060 – Full HD 

### 2. Reserva válida sem login (criança de 6 a 11 anos - cobrança aplicada)
**Arquivo:** `reserva_valida_crianca_6a11.feature`  
**Pré-condições:** Nenhuma  
**Passos Executados:**
1. Acessar o site https://reservas.desbravador.com.br/1111 no navegador Chrome v115.
2. Selecionar datas: [data início] a [data fim] (3 dias a partir de amanhã).
3. Selecionar o quarto "STANDARD ST1".
4. Adicionar 2 adultos e 1 criança (8 anos).
5. Preencher dados dos hóspedes:
   - Nome: João
   - E-mail: joao@email.com
6. Preencher dados de pagamento válidos:
   - Cartão: 4000 0000 0000 0044
   - Nome no cartão: DESBRAVADOR SOFTWARE
   - Validade: 12/23
   - CVC: 123
7. Confirmar a reserva.

**Resultado Esperado vs. Obtido:**
| Esperado | Obtido |
|----------|--------|
| Reserva confirmada com número | ✅ Confirmada (RES12346) |
| E-mail de confirmação enviado | ✅ Recebido em 2 minutos |
| Valor total com cobrança proporcional da criança | ✅ Corretamente calculado |

**Evidências:**
- ![Screenshot_Reserva](../evidencias/screenshots/reserva_confirmada_6a11.png)
- [Logs do servidor](../evidencias/logs/log_reserva_6a11.txt)