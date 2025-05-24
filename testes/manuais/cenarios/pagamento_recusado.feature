# language: pt
@manual
Funcionalidade: Processamento de pagamento

  Como cliente finalizando uma reserva
  Quero que o sistema valide corretamente meus dados de pagamento
  Para evitar cobranças indevidas e ter clareza no processo

  Cenário: Pagamento recusado por informações inválidas do cartão
    Dado que acesso o site https://reservas.desbravador.com.br/1111
    Quando verifico disponibilidade para 3 dias a partir de amanhã
    E seleciono o quarto STANDARD ST1
    E adiciono 2 adultos e 1 criança de 5 anos
    E preencho os dados dos hóspedes:
      | Email             | Senha          |
      | marcos@email.com  | MinhaSenha123  |
    E realizo o pagamento com cartão inválido:
      | Número                  | Nome                    | Validade | CVC |
      | 6000 0060 0500 0044     | DESBRAVADOR SOFTWARE    | 13/19    | 321 |
    Então o sistema deve exibir uma mensagem de erro de pagamento
    E a reserva não deve ser confirmada