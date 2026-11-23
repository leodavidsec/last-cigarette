#!/usr/bin/env bash
# Compile SKILL.md + references into one prompt file for assistants that don't support Agent Skills.
set -eu
cd "$(dirname "$0")/.."
out=dist/last-cigarette.prompt.md
{
  echo "# last-cigarette — single-file prompt (generated; edit the sources, not this file)"
  echo
  echo "You are to follow the instructions below as your operating manual for this conversation."
  echo
  # SKILL.md body without the YAML frontmatter
  awk 'BEGIN{fm=0} /^---$/{fm++; next} fm>=2{print}' SKILL.md
  for f in references/*.md templates/*.md; do
    echo; echo; echo "---"; echo; echo "<!-- file: $f -->"; echo
    cat "$f"
  done
} > "$out"
echo "wrote $out ($(wc -l < "$out") lines)"
