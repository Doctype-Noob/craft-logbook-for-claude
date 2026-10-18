# Changelog

## 0.1.3 (2026-10-18)

- Claude no longer waits for a decision before logging. A reply with options or research gets logged when it's given, and a later decision is added to the same entry. In testing, Claude held off with "nothing's decided yet," which loses the chat if you never pick.
- Updated always-log line for your preferences, with the same rule. If you pasted the 0.1.2 line, replace it.

## 0.1.2 (2026-10-18)

Automatic logging missed ordinary chats in testing. These changes go after that.

- Setup now gives you one line to paste into Settings > Profile. Preferences are read in every chat, so Claude logs even when the chat isn't obviously about Craft. If you set up an earlier version, Claude offers the line once after its first log.
- Logs ideas, research and recommendations too, not only decisions and finished work. The test is whether you'd want to find the chat again in a month.
- The skill now triggers on what a conversation produced, on any topic, instead of only on Craft projects
- Claude logs at the end of the reply where something happens, not at the end of the chat, since chats often just stop
- Start Here's Logbook settings record whether the always-log line was added

## 0.1.1 (2026-10-18)

Renamed before the first public release, plus fixes from the first real test.

- Plugin id is now `laronge-llc-logbook` and the display name is Craft Logbook for Claude. The command is now `/laronge-llc-logbook:log-session`. If you installed 0.1.0 by zip, remove it and install this one, or both will log.
- Setup confirms the logging mode in one line even when it skips its questions
- Setup checks that each project row's folder still exists and, for any that's gone, offers to mark the row Dropped or remove it. It changes nothing until you answer.
- Default logbook folder is now Claude Logbook, so it isn't confused with Craft's own task Logbook. The skill also knows that "my logbook" means Start Here and the logs, not completed tasks.
- Claude now checks recent writes by reading the doc by ID instead of searching, because Craft's search index runs a few minutes behind
- If another skill or instruction also says to log to Craft, Claude writes one entry, not two

## 0.1.0 (2026-10-18)

First release.

- `logbook` skill: logs decisions, finished work and status changes to a per-project Decisions Log and a cross-project Activity Log, and keeps Start Here current
- Full and summary logging modes
- `setup` command: creates Start Here, the Activity Log and a logbook folder, or adopts existing ones, and offers to add existing Craft project folders
- `log-session` command: logs the current conversation on demand
- Session-start reminder hook for Claude Code and Cowork
- Bundled Craft connector (`https://mcp.craft.do/my/mcp`)
