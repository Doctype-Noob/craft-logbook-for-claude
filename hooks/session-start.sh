#!/bin/bash
# Craft Logbook for Claude: adds a short note to Claude's context at session start.
# It prints text only. It reads nothing, sends nothing, and writes nothing.
cat <<'EOF'
The Craft Logbook for Claude plugin is installed. This user keeps a record of their work in their Craft space: a Start Here page, a Decisions Log per project, and an Activity Log. When this session makes a decision, finishes notable work, or changes a project's status, follow the logbook skill to log it before the session ends. The user can also run /laronge-llc-logbook:log-session at any time.
EOF
exit 0
