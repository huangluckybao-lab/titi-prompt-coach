#!/usr/bin/env bash
set -euo pipefail

SKILL_NAME="titi-prompt-coach"
RAW_BASE="https://raw.githubusercontent.com/huangluckybao-lab/titi-prompt-coach/main"
TARGET_DIR="${HOME}/.openclaw/workspace/skills/${SKILL_NAME}"

mkdir -p "${TARGET_DIR}"
curl -fsSL "${RAW_BASE}/SKILL.md" -o "${TARGET_DIR}/SKILL.md"

echo "✅ 提提安装完成: ${TARGET_DIR}"
echo "👉 请重启 Gateway: openclaw gateway restart"
