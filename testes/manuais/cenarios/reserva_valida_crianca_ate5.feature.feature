# language: pt
@manual
Funcionalidade: Reserva válida sem login (Criança até 5 anos isenta)

  Como um cliente desejando fazer uma reserva
  Eu quero completar todo o fluxo de reserva
  Para garantir que minha estadia esteja confirmada
  e que o sistema aplique corretamente as regras de cobrança

  Regra de negócio:
  - Crianças até 5 anos são isentas de cobrança.

  Cenário: Reserva válida com criança isenta (até 5 anos)
    Dado que acesso o site https://reservas.desbravador.com.br/1111
    Quando verifico disponibilidade para 5 dias a partir de 02/06/2025
    E adiciono 2 adultos e 1 criança de 0 até 5 anos
    E seleciono o quarto STANDARD ST1
    E preencho os dados dos hóspedes:
      | Nome                   | Email                  |
      | DESBRAVADOR SOFTWARE   | desbravador@email.com  |
      | Maria                  | maria@email.com        |
      | Pedro                  | pedro@email.com        |
    E realizo o pagamento com cartão válido:
      | Número                | Nome                    | Validade | CVC |
      | 4000 0000 0000 0044   | DESBRAVADOR SOFTWARE    | 12/25    | 123 |
    Então a reserva deve ser confirmada com sucesso
    E o valor total não deve incluir cobrança pela criança