#!/usr/bin/env bash
set -euo pipefail

MODE="${1:-all}"
REPO_ROOT="$(cd "$(dirname "$0")/.." && pwd)"
SKILL_NAME="taste"

install_codex() {
  local target_dir="$HOME/.codex/skills"
  mkdir -p "$target_dir"
  ln -sfn "$REPO_ROOT" "$target_dir/$SKILL_NAME"
  echo "Installed for Codex: $target_dir/$SKILL_NAME -> $REPO_ROOT"
}

install_claude() {
  local target_dir="$HOME/.claude/skills"
  local target="$target_dir/$SKILL_NAME"
  mkdir -p "$target_dir"
  rm -rf "$target"
  mkdir -p "$target"
  rsync -a \
    --exclude '.git/' \
    --exclude 'dist/' \
    --exclude '.DS_Store' \
    "$REPO_ROOT/" "$target/"
  echo "Installed for Claude Code: $target"
}

case "$MODE" in
  codex)
    install_codex
    ;;
  claude)
    install_claude
    ;;
  all)
    install_codex
    install_claude
    ;;
  *)
    echo "Usage: $0 [codex|claude|all]" >&2
    exit 1
    ;;
esac
