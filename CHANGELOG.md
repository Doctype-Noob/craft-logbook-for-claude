# Changelog

## 0.2.1 (2026-10-18)

Fixes from the first real chat on 0.2.0.

- Dashboards color only the title and the page background. In testing, Claude set a page-wide text color and the whole dashboard came out red. Body text now stays black, and the skill says how to reset a dashboard that already went red.
- When Claude adds a dashboard to a project that already has a row in Start Here, it now points "Read first" at the dashboard. Before, only brand-new projects got that.
- Older docs listed under Earlier history are now links, not plain titles.
- Lines added inside a toggle (such as the Document IDs list) keep their indent. The connector was dropping it and putting them outside the toggle.

## 0.2.0 (2026-10-18)

A new layout built around finding a chat again. If you're on 0.1.x, run setup again and replace your always-log line.

- One doc per chat, named after the chat: your prompts word for word and Claude's complete responses, plus Summary, Decisions, Result and Left off at the top. Claude asks once what the chat is called in your sidebar.
- A dashboard per project, "Overview and Chat Log", with every chat newest first and where each one left off, Where things live, and Rebuild from scratch. Red title and red page background so it stands out in the folder.
- Once a chat has its doc, Claude adds every exchange to it instead of judging what's worth keeping. That judgment call is where most missed logs came from.
- The Activity Log gets one entry per chat with your first prompt, pointing to the chat doc. Responses live only in the chat doc.
- New backfill command: logs a project's earlier chats, 3 on the first run, then 5 per batch, asking before each. Never logs a chat twice.
- Say "wrap up" and Claude writes the prompt to start your next chat, in the chat and at the end of the chat doc.
- Setup writes a Logbook Format doc to Craft so Gemini, ChatGPT or any AI can write matching docs. Each chat doc says which AI wrote it.
- One-off chats go in a new Other chats folder instead of only the Activity Log, so their prompts are kept too.
- Old Overview and Decisions Log docs are left as they are and linked from the new dashboard under Earlier history.
- New always-log line. Replace the old one in your preferences.

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
