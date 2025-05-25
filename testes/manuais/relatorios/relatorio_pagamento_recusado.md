**Data:** 24/05/2025  
**Responsável:** Marcos Vinícius Dos Santos Rodrigues  
**Ambiente:** Desktop – Windows 10 Pro (64 bits) – Chrome 136.0.7103.114 – Ryzen 5 3600 – 16 GB RAM – RTX 2060 – Full HD 

## 4. Pagamento recusado (cartão inválido)
**Arquivo:** `pagamento_recusado.feature`  
**Pré-condições:** Nenhuma 
**Passos Executados:**
1. Acessar o site https://reservas.desbravador.com.br/1111.
2. Selecionar datas: [02/06/2025] a [04/06/2025].
3. Adicionar 2 adultos.
4. Escolher quarto "STANDARD ST1".
5. Preencher dados dos hóspedes:
   - Nome: DESBRAVADOR SOFTWARE
   - E-mail: desbravador@email.com
   - Nome: Maria
   - E-mail: maria@email.com
6. Preencher dados de pagamento válidos:
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
   - Cartão: 6000 0060 0500 0044
   - Nome no cartão: DESBRAVADOR SOFTWARE
   - Validade: 12/20
   - CVC: 321
7. Tentar finalizar a reserva.

**Resultado Esperado vs. Obtido:**
| Esperado                      | Obtido                   |
|-------------------------------|--------------------------|
| Não permitir realizar a reserva| ✅ Não foi permitido prosseguir com um cartão inválido |
| Indicação de campos incorretos | ✅ Ao inserir dados incorretos, foi exibida uma indicação informando que os dados estão incorretos|

**Sugestão de melhoria:**
   - Ao clicar no botão "Finalizar", exibir um SweetAlert informando que há dados incorretos no cartão cadastrado.

**Evidências:**
- ![Screenshot_Reserva_cenario04_01](../../../evidencias/screenshots/Cenario_04/1.jpg)
- ![Screenshot_Reserva_cenario04_02](../../../evidencias/screenshots/Cenario_04/2.jpg)
- ![Screenshot_Reserva_cenario04_03](../../../evidencias/screenshots/Cenario_04/3.jpg)
- ![Screenshot_Reserva_cenario04_04](../../../evidencias/screenshots/Cenario_04/4.jpg)

