**Data:** 24/05/2025  
**Responsável:** Marcos Vinícius Dos Santos Rodrigues  
**Ambiente:** Desktop – Windows 10 Pro (64 bits) – Chrome 136.0.7103.114 – Ryzen 5 3600 – 16 GB RAM – RTX 2060 – Full HD 

## 5. Tentativa de reserva sem disponibilidade
**Arquivo:** `disponibilidade.feature`  
**Pré-condições:** Período previamente cadastrado no sistema.  
**Passos Executados:**
1. Estar logado com o usuário DESBRAVADOR
2. Acessar o site https://reservas.desbravador.com.br/1111.
3. Buscar disponibilidade para o período [02/06/2025] a [06/06/2025] (com ocupação previamente cadastrada).
4. Tentar prosseguir com a reserva.

**Resultado Esperado vs. Obtido:**
| Esperado                                                        | Obtido                                                                            |
|-----------------------------------------------------------------|-----------------------------------------------------------------------------------|
| Não permitir seguir para a reserva                              | ❌Permitiu seguir normalmente com a reserva                                      |
| Mensagem: `"Não há disponibilidade para o período selecionado"` | ❌Nenhuma mensagem ou alerta foi exibido indicando que o quarto estava reservado |
| Não exibir o quarto STANDARD ST1                                | ❌O quarto foi exibido normalmente como disponível                               |

**Evidências:**
- ![Screenshot_Sem_Disponibilidade](../evidencias/screenshots/sem_disponibilidade.png)
- [Logs](../evidencias/logs/log_sem_disponibilidade.txt)
