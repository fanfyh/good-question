#!/usr/bin/env bash
# good-question skill 安装脚本 —— 软链到 ~/.claude/skills/
# SKILL.md 在仓库根，故软链目标是仓库根本身。
set -euo pipefail

REPO="$(cd "$(dirname "$0")" && pwd)"
CLAUDE_DIR="${CLAUDE_DIR:-$HOME/.claude}"
SKILLS_DIR="$CLAUDE_DIR/skills"

mkdir -p "$SKILLS_DIR"
ln -sfn "$REPO" "$SKILLS_DIR/good-question"

echo "✓ good-question skill installed."
echo "  skill: $SKILLS_DIR/good-question -> $REPO"
echo
echo "注意：本仓库是 Rimagination/good-question 的克隆，含本地经济学适配（未提交）。"
echo "卸载：删除 $SKILLS_DIR/good-question 软链即可。"
