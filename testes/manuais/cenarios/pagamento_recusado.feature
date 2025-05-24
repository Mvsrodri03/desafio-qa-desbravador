# language: pt
@manual
Funcionalidade: Processamento de pagamento

  Como cliente finalizando uma reserva
  Quero que o sistema valide corretamente meus dados de pagamento
  Para evitar cobranças indevidas e ter clareza no processo

  Cenário: Pagamento recusado por informações inválidas do cartão
    Dado que estou logado no site como usuário cadastrado:
      | Nome                   | Email                  |
      | DESBRAVADOR SOFTWARE   | desbravador@email.com  |
    E acesso a página de reservas https://reservas.desbravador.com.br/1111
    Quando verifico disponibilidade para 3 dias a partir de 02/06
    E adiciono 2 adultos
    E seleciono o quarto STANDARD ST1
    E preencho os dados dos hóspedes:
      | Nome                   | Email                  |
      | DESBRAVADOR SOFTWARE   | desbravador@email.com  |
      | Maria                  | maria@email.com        |
    E realizo o pagamento com cartão inválido:
      | Número                  | Nome                    | Validade | CVC |
      | 6000 0060 0500 0044     | DESBRAVADOR SOFTWARE    | 12/20    | 321 |
    Então o sistema deve exibir uma mensagem de erro de pagamento
    E a reserva não deve ser confirmada