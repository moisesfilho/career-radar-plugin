# Career Radar Plugin

**Idiomas:** [English](README.md) | [Português](README.pt-BR.md)

O Career Radar é uma skill de plugin portátil para o ChatGPT descobrir vagas remotas recentes e avaliá-las com base no currículo e nos objetivos profissionais do usuário. Ele foi projetado para pesquisas sob demanda e agendamentos recorrentes do ChatGPT.

> O Career Radar nunca se candidata automaticamente. O usuário revisa cada oportunidade e decide o próximo passo.

## Origem da ideia

A ideia do Career Radar surgiu enquanto eu procurava formas de automatizar a pesquisa de vagas compatíveis com o meu perfil profissional. Durante essa pesquisa, encontrei o projeto open source [career-ops](https://github.com/career-ops-hq/career-ops), que realiza uma análise detalhada do link de uma vaga e da compatibilidade dela com o perfil do candidato. O projeto também gera métricas úteis para ajudar a identificar se uma oportunidade é adequada e o que pode ser destacado no currículo ou em uma entrevista.

Este projeto nasceu dessa inspiração, mas com uma proposta mais simples: automatizar a busca inicial de vagas por meio de um Agendamento do ChatGPT na web. A ideia é que a tarefa encontre oportunidades compatíveis, aplique um nível mínimo de compatibilidade e forneça orientações práticas para cada candidatura.

## Recursos

- Busca vagas na web sem exigir que o usuário forneça links individuais.
- Prioriza cargos, tecnologias, localização, modelo de trabalho e senioridade.
- Confere a vaga original e o status da candidatura quando possível.
- Atribui uma pontuação de 0 a 100 com critérios explícitos.
- Destaca aderência, lacunas, riscos, duplicidades e próximos passos.
- Funciona com prompts de tarefas recorrentes do ChatGPT ou agentes autônomos.
- Realiza onboarding de cada usuário com currículo e preferências independentes.
- Permite buscas diárias ou semanais com filtros e pontuação mínima configuráveis.

## Instalação

Este repositório é um pacote Agent Plugins. Para testar localmente, use as ferramentas de plugin disponíveis no ChatGPT/Codex. Para distribuição pública, crie um ZIP contendo `plugin.json`, `skills/`, `examples/`, `README.md` e `LICENSE`, e envie-o pelo painel de Plugins da OpenAI.

## Uso agendado

Crie uma tarefa recorrente com uma instrução semelhante a:

> Use o Career Radar para buscar novas oportunidades compatíveis com meu currículo e preferências salvas. Pesquise vagas recentes, confirme se as candidaturas estão abertas, não repita vagas já apresentadas salvo mudança relevante e retorne o relatório padrão. Não se candidate a nenhuma vaga.

O agendamento e o acesso à web pertencem ao host. Cada usuário configura sua própria frequência, fuso horário, filtros e pontuação mínima. O plugin não cria agendamentos nem afirma que o histórico é persistente quando ele não está disponível.

## Avaliação

A metodologia avalia cargo e senioridade, aderência técnica, liderança, cloud e práticas de engenharia, elegibilidade e direção de carreira. Consulte [`scoring-rubric.md`](skills/career-radar/docs/scoring-rubric.md).

## Estrutura

```text
plugin.json
assets/career-radar.svg
skills/career-radar/SKILL.md
skills/career-radar/docs/
examples/
tests/
```

A primeira versão é somente Skill. Ela usa o histórico disponibilizado pela tarefa ou agente do ChatGPT e não possui banco de dados permanente. Uma futura fase MCP poderá adicionar histórico persistente, fontes controladas e acompanhamento de candidaturas, sem enviar candidaturas automaticamente. Consulte a [Política de Privacidade](PRIVACY.md).

## Qualidade

```bash
./tests/validate.sh
```

O CI valida o manifesto, o frontmatter da skill, a ausência de segredos e o conteúdo distribuível do pacote.

## Licença

MIT. Consulte [`LICENSE`](LICENSE).
