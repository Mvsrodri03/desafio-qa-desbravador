**Data:** 24/05/2025  
**Responsável:** Marcos Vinícius Dos Santos Rodrigues  
**Ambiente:** Desktop – Windows 10 Pro (64 bits) – Chrome 136.0.7103.114 – Ryzen 5 3600 – 16 GB RAM – RTX 2060 – Full HD 

## 2. Reserva válida sem login (criança de 6 a 11 anos - cobrança aplicada)
**Arquivo:** `reserva_valida_crianca_6a11.feature`  
**Pré-condições:** Nenhuma  
**Passos Executados:**
1. Acessar o site https://reservas.desbravador.com.br/1111 no navegador Chrome v115.
2. Selecionar datas: [09/06/2025] a [13/06/2025].
3. Adicionar 2 adultos e 1 criança (de 6 a 11 anos).
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
| Valor total com cobrança proporcional pela adição da criança | ⚠️ Valor calculado incorretamente — superior ao valor de um adulto adicional|

**Evidências:**
- ![Screenshot_Reserva](../evidencias/screenshots/reserva_confirmada_6a11.png)
- [Logs do servidor](../evidencias/logs/log_reserva_6a11.txt)