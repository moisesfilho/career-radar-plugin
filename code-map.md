# Career Radar Plugin Code Map

Plugin portátil skill-only para o ChatGPT descobrir vagas remotas em tarefas agendadas e avaliar compatibilidade com o currículo do usuário.

## Estrutura

| Caminho | Responsabilidade |
| --- | --- |
| `plugin.json` | Manifesto portátil do plugin e metadados OpenAI. |
| `skills/career-radar/SKILL.md` | Fluxo de pesquisa, validação, pontuação, deduplicação e relatório. |
| `skills/career-radar/docs/` | Rubrica, consultas, template e plano de evolução MCP. |
| `examples/` | Prompt agendado e modelo de perfil. |
| `tests/` | Casos de qualidade e validação estrutural. |
| `.github/workflows/quality.yml` | Gate de CI e montagem do pacote. |

## Evolução planejada

A primeira versão usa a pesquisa web e o histórico disponibilizados pelo host. Um MCP futuro poderá fornecer persistência, fontes controladas e deduplicação garantida.
