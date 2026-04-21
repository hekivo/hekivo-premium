#!/usr/bin/env bash
# Hekivo Premium SessionStart hook.
# Minimal — just emits the Premium-loaded marker and a short context note.
# All detection and heavy lifting is handled by hekivo-pro's session-start.

set -uo pipefail

cat <<EOF
{
  "hookSpecificOutput": {
    "hookEventName": "SessionStart",
    "additionalContext": "<EXTREMELY_IMPORTANT>\nHEKIVO_PREMIUM_LOADED=1\nHekivo Premium loaded. Additional skills: block-refactoring, debugging, reviewing, verifying, wp-performance. Additional agents: sage-reviewer, tailwind-v4-auditor, visual-verifier.\n</EXTREMELY_IMPORTANT>"
  }
}
EOF

exit 0
