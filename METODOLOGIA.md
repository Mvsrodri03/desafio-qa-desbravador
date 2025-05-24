## Por que estes cenários?

1. **Reserva válida sem login (criança até 5 anos - isenta de cobrança)**  
   - Fluxo principal do sistema: Este é o cenário mais crítico, pois representa a jornada básica do usuário (sem cadastro/login).  
   - Validação de dados mínimos: Testa se o sistema aceita reservas com informações essenciais.
   - Regras de cobrança: Testa se o sistema aplica a regra de isenção para crianças até 5 anos.  
   - **Impacto em caso de falha:**  
   ➡️ **Perda direta de receita e falha na aplicação da isenção**, o que pode causar problemas financeiros e insatisfação do cliente.

2. **Reserva válida sem login (criança de 6 a 11 anos - cobrança aplicada)**  
   - Fluxo principal do sistema: Este é o cenário mais crítico, pois representa a jornada básica do usuário (sem cadastro/login).
   - Regras de cobrança: Garante que o sistema cobre corretamente para crianças na faixa etária de 6 a 11 anos.  
   - **Impacto em caso de falha:**  
   ➡️ **Prejuízo financeiro devido à cobrança incorreta** e possíveis reclamações de clientes, além de impactar negativamente a receita.

3. **Reserva com login**  
   - Benefícios para usuários cadastrados: Valida se o sistema reconhece usuários logados corretamente.
   - Desconto de 10%: Testa descontos automáticos para usuarios logados no sistema (como o desconto de 10% no exemplo).
   - **Impacto em caso de falha:**  
   ➡️ **Redução da retenção e satisfação de clientes**, pois usuários logados esperam um atendimento diferenciado e vantagens, como o desconto.

4. **Pagamento recusado**  
   - Prevenção de fraudes: Verifica se o sistema bloqueia cartões com dados inconsistentes (validade passada, CVC incorreto).
   - Segurança: Garante que transações inválidas não sejam processadas.
   - **Impacto em caso de falha:**  
   ➡️ **Risco de cobranças indevidas, fraudes e quebra de confiança na plataforma**, além de possíveis problemas jurídicos e financeiros.

5. **Sem disponibilidade**  
   - Gestão de inventário: Confirma que o sistema identifica corretamente períodos sem vagas.
   - Comunicação transparente: Evita que usuários avancem no fluxo sem quartos disponíveis.
   - **Impacto em caso de falha:**  
   ➡️ **Gera frustração, perda de credibilidade e má experiência do cliente**, que pode ser levado até o pagamento sem ter quartos disponíveis, afetando negativamente a imagem da empresa.


  