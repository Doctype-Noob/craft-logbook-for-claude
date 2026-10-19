#!/bin/bash
# Craft Logbook for Claude: adds a short note to Claude's context at session start.
# It prints text only. It reads nothing, sends nothing, and writes nothing.
cat <<'EOF'
The Craft Logbook for Claude plugin is installed. This user keeps a record of their work in their Craft space: an All Dashboards page linking every project and the last 20 chats, a Start Here page, a dashboard per project, one doc per chat with the user's prompts and Claude's responses, and an Activity Log. When this session produces ideas, research, a plan, a decision or finished work, follow the logbook skill to start this session's chat doc, then add every exchange after that. The user can also run /laronge-llc-logbook:log-session or /laronge-llc-logbook:backfill at any time.
EOF
exit 0
