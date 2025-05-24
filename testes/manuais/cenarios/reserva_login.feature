# language: pt
@manual
Funcionalidade: Reserva com login e desconto

  Como um cliente cadastrado
  Eu quero completar uma reserva com meus benefícios
  Para garantir desconto no valor final da compra

  Cenário: Reserva com cupom de desconto válido (usuário logado)
    Dado que estou logado no site como usuário cadastrado:
      | Nome                   | Email                  |
      | DESBRAVADOR SOFTWARE   | desbravador@email.com  |
    E acesso a página de reservas https://reservas.desbravador.com.br/1111
    Quando verifico disponibilidade para 3 dias a partir de 30/05
    E adiciono 2 adultos
    E seleciono o quarto STANDARD ST1
    E preencho os dados dos hóspedes:
      | Nome                   | Email                  |
      | DESBRAVADOR SOFTWARE   | desbravador@email.com  |
      | Maria                  | maria@email.com        |
    E realizo o pagamento com cartão válido:
      | Número                  | Nome                    | Validade | CVC |
      | 4000 0000 0000 0044     | DESBRAVADOR SOFTWARE    | 12/23    | 123 |
    Então a reserva deve ser confirmada com sucesso
    E o valor total deve refletir o desconto de 10%