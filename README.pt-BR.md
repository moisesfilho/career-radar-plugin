# Career Radar Plugin

**Idiomas:** [English](README.md) | [Português](README.pt-BR.md)

O Career Radar é uma skill de plugin portátil para o ChatGPT descobrir vagas remotas recentes e avaliá-las com base no currículo e nos objetivos profissionais do usuário. Ele foi projetado para pesquisas sob demanda e agendamentos recorrentes do ChatGPT.

> O Career Radar nunca se candidata automaticamente. O usuário revisa cada oportunidade e decide o próximo passo.

## Recursos

- Busca vagas na web sem exigir que o usuário forneça links individuais.
- Prioriza cargos, tecnologias, localização, modelo de trabalho e senioridade.
- Confere a vaga original e o status da candidatura quando possível.
- Atribui uma pontuação de 0 a 100 com critérios explícitos.
- Destaca aderência, lacunas, riscos, duplicidades e próximos passos.
- Funciona com prompts de tarefas recorrentes do ChatGPT ou agentes autônomos.

## Instalação

Este repositório é um pacote Agent Plugins. Para testar localmente, use as ferramentas de plugin disponíveis no ChatGPT/Codex. Para distribuição pública, crie um ZIP contendo `plugin.json`, `skills/`, `examples/`, `README.md` e `LICENSE`, e envie-o pelo painel de Plugins da OpenAI.

## Uso agendado

Crie uma tarefa recorrente com uma instrução semelhante a:

> Use o Career Radar para buscar novas oportunidades compatíveis com meu currículo e preferências salvas. Pesquise vagas recentes, confirme se as candidaturas estão abertas, não repita vagas já apresentadas salvo mudança relevante e retorne o relatório padrão. Não se candidate a nenhuma vaga.

O agendamento e o acesso à web pertencem ao host. O plugin não cria agendamentos nem afirma que o histórico é persistente quando ele não está disponível.

## Avaliação

A metodologia avalia cargo e senioridade, aderência técnica, liderança, cloud e práticas de engenharia, elegibilidade e direção de carreira. Consulte [`scoring-rubric.md`](skills/career-radar/docs/scoring-rubric.md).

## Estrutura

```text
plugin.json
skills/career-radar/SKILL.md
skills/career-radar/docs/
examples/
tests/
```

A primeira versão é somente Skill. Uma futura fase MCP poderá adicionar histórico persistente, fontes controladas e acompanhamento de candidaturas, sem enviar candidaturas automaticamente.

## Qualidade

```bash
./tests/validate.sh
```

O CI valida o manifesto, o frontmatter da skill, a ausência de segredos e o conteúdo distribuível do pacote.

## Licença

MIT. Consulte [`LICENSE`](LICENSE).
