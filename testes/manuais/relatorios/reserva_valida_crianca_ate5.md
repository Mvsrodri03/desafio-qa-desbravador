**Data:** 24/05/2025  
**Responsável:** Marcos Vinícius Dos Santos Rodrigues  
**Ambiente:** Desktop – Windows 10 Pro (64 bits) – Chrome 136.0.7103.114 – Ryzen 5 3600 – 16 GB RAM – RTX 2060 – Full HD 

## 1. Reserva válida (criança até 5 anos - isenta)
**Arquivo:** `reserva_valida_crianca_ate5.feature.feature`  
**Pré-condições:** Nenhuma  
**Passos Executados:**
1. Acessar o site https://reservas.desbravador.com.br/1111.
2. Selecionar datas: [02/06/2025] a [06/06/2025].
3. Adicionar 2 adultos e 1 criança (5 anos).
4. Selecionar o quarto "STANDARD ST1".
5. Cliacar em continuar
6. Preencher dados dos hóspedes:
   - Nome: DESBRAVADOR SOFTWARE
   - E-mail: desbravador@email.com
   - Nome: Maria
   - E-mail: maria@email.com
   - Nome: Pedro
   - E-mail: pedro@email.com
7. Preencher dados de pagamento válidos:
   - E-mail: desbravador@email.com
   - Nome: DESBRAVADOR
   - Sobrenome: SOFTWARE
   - Tipo Documento: CPF
   - Documento: 419.954.980-33
   - Telefone: (18) 2712-1958
   - Pais:BRASIL
   - CEP: 19026-662
   - Estado: São Paulo
   - Cidade: Presidente Prudente
   - Bairro: Jardim Novo Bongiovani
   - Endereço: Rua Maria Corazza Rebellato
   - Forma de pagamento: Cartão de Crédito
   - Cartão: 4000 0000 0000 0044
   - Nome no cartão: DESBRAVADOR SOFTWARE
   - Validade: 12/25
   - CVC: 123
8. Clicar em Concordo com as políticas do hotel
9. Finalizar a reserva.

**Resultado Esperado vs. Obtido:**
| Esperado                      | Obtido                   |
|-------------------------------|--------------------------|
| Reserva confirmada com sucesso| ✅ Reserva confirmada |
| E-mail de confirmação enviado | ✅ E-mail enviado|
| Valor total sem cobrança pela criança | ✅ Corretamente calculado |

**Evidências:**
- ![Screenshot_Reserva_cenario01_01](../../../evidencias/screenshots/Cenario_01/1.jpg)
- ![Screenshot_Reserva_cenario01_02](../../../evidencias/screenshots/Cenario_01/2.jpg)
- ![Screenshot_Reserva_cenario01_03](../../../evidencias/screenshots/Cenario_01/3.jpg)
- ![Screenshot_Reserva_cenario01_04](../../../evidencias/screenshots/Cenario_01/4.jpg)
- ![Screenshot_Reserva_cenario01_05](../../../evidencias/screenshots/Cenario_01/5.jpg)
