#!/usr/bin/env bash
set -euo pipefail

command -v jq >/dev/null || { printf '%s\n' 'jq is required' >&2; exit 1; }
jq -e '.name == "career-radar" and .version and .extensions."com.openai".displayName' plugin.json >/dev/null

skill='skills/career-radar/SKILL.md'
test -f "$skill"
awk 'NR == 1 { if ($0 != "---") exit 1 } NR > 1 && NR < 6 { print } NR == 6 { exit }' "$skill" | grep -q '^name: career-radar$'
awk 'NR == 1 { if ($0 != "---") exit 1 } NR > 1 && NR < 6 { print } NR == 6 { exit }' "$skill" | grep -q '^description: '

if command -v rg >/dev/null 2>&1; then
  if rg -n --hidden --glob '!\.git/**' '(sk-[A-Za-z0-9]{20,}|ghp_[A-Za-z0-9]{20,}|BEGIN (RSA|OPENSSH|EC) PRIVATE KEY)' .; then
    printf '%s\n' 'Potential secret found' >&2
    exit 1
  fi
fi

printf '%s\n' 'Career Radar plugin structure is valid.'
