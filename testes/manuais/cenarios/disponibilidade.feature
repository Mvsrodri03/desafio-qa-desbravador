# language: pt
@manual
Funcionalidade: Verificação de disponibilidade

  Como cliente que deseja reservar
  Eu quero ser informado quando não houver disponibilidade
  Para não prosseguir com uma reserva inviável

  Cenário: Tentativa de reserva sem disponibilidade
    Dado que estou logado no site como usuário cadastrado:
      | Nome                   | Email                  |
      | DESBRAVADOR SOFTWARE   | desbravador@email.com  |
    E acesso a página de reservas https://reservas.desbravador.com.br/1111
    Quando verifico disponibilidade para 5 dias a partir de 02/06/2025
    E adiciono 2 adultos
    E seleciono o quarto STANDARD ST1
    Então o sistema deve informar "Não há disponibilidade para o período selecionado"
    E não deve permitir avançar para a seleção de quartos