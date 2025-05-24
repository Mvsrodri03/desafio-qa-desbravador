**Data:** 24/05/2025  
**Responsável:** Marcos Vinícius Dos Santos Rodrigues  
**Ambiente:** Desktop – Windows 10 Pro (64 bits) – Chrome 136.0.7103.114 – Ryzen 5 3600 – 16 GB RAM – RTX 2060 – Full HD 

### 3. Reserva válida com login (com desconto)
**Arquivo:** `reserva_com_login.feature`  
**Pré-condições:** Usuário cadastrado (marcos@email.com).  
**Passos Executados:**
1. Logar no site como usuário cadastrado.
2. Acessar página de reservas https://reservas.desbravador.com.br/1111.
3. Selecionar datas: [30/05/205] a [01/06/2025] (3 dias).
4. Adicionar 2 adultos.
5. Selecionar quarto "STANDARD ST1".
6. Preencher dados dos hóspedes:
   - Nome: DESBRAVADOR SOFTWARE
   - E-mail: desbravador@email.com
   - Nome: Maria
   - E-mail: maria@email.com
7. Preencher dados de pagamento válidos:
   - Cartão: 4000 0000 0000 0044
   - Nome no cartão: DESBRAVADOR SOFTWARE
   - Validade: 12/25
   - CVC: 123
8. Verificar valor com desconto.
9. Confirmar a reserva.

**Resultado Esperado vs. Obtido:**
| Esperado                      | Obtido                   |
|-------------------------------|--------------------------|
| Reserva confirmada com sucesso| ✅ Reserva confirmada|
| E-mail de confirmação enviado | ✅ E-mail enviado|
| Aplicação do desconto de 10%  | ❌ Desconto não aplicado |

**Evidências:**
- ![Screenshot_Desconto](../evidencias/screenshots/reserva_com_desconto.png)
- [Logs](../evidencias/logs/log_reserva_login.txt)
