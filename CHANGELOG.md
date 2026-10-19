# Changelog

## 0.2.7 (2026-10-19)

Your recent chats on the page you pin, and a way back if you delete something in Claude.

- **Recent chats** on All Dashboards: your last 20 chats, newest first, between Project dashboards and the rest. Each line has the date, the chat's name, its project and a link to its chat doc. The name links to the chat in Claude once Claude knows the link.
- Every chat's first log adds its line at the top, and the oldest drops off past 20. The chat docs stay; only the line goes. Renaming a chat doc renames its line.
- A chat can't see its own Claude link, so its line starts without one. Setup and backfill fill links in when they list your chats.
- Setup adds Recent chats to an existing All Dashboards without touching the rest, and fills it from your last 20 chats if Search and reference chats is on. Chats it can't match to a doc say "not logged".
- One limit: a regular chat can't list chats inside Claude Projects. Those show up once they're logged from inside their project.
- **Claude Project section** on each project dashboard: the Claude Project's name, its instructions word for word and its file list, saved the first time a chat logs from inside it and refreshed when they change. Enough to rebuild the project by hand.
- **Deleted in Claude**: tell Claude you deleted a chat or a Claude Project and it marks the dashboard, All Dashboards and the Activity Log, with how to rebuild it. Nothing in Craft is removed. Claude gets no signal when you delete, so you have to tell it.
- Log first, answer last. Claude makes its log writes before writing its answer, so the answer is the last thing in the reply. Some Claude apps only show the text after the last tool call in full, and answers were getting collapsed into a summary.

## 0.2.6 (2026-10-19)

One page to pin. Every chat is now two clicks from it.

- New **📌 All Dashboards** page in the logbook folder: one line per project linking to its dashboard, with its status and last activity, plus links to Start Here and the Activity Log. Green title and green background, so it doesn't get lost among the red project dashboards.
- Claude keeps it current. When a project gets a dashboard, or its status or last activity changes, its line changes in the same write as its Start Here row.
- Projects that don't have a dashboard yet are listed too, linking to their older Overview or Current State, and move up when they get one.
- Already on 0.2.x? The next logged chat builds All Dashboards from your Start Here table. Setup does it too.
- Start Here gets a section 6 that tells any AI, not only Claude, to keep All Dashboards current.
- Claude tells you to pin and star All Dashboards when it creates it. Craft's connector can't do either, so it's one right-click for you.
- Two new README screenshots: All Dashboards, and the logbook folder with it pinned and starred.
- Setup updates an older Logbook Format doc by adding only what changed, under a dated heading, instead of pasting the whole spec again.

## 0.2.5 (2026-10-18)

Listing details for Claude's directory. No change to how the plugin logs.

- Added links the directory shows: the GitHub repository, documentation (this README), support (GitHub issues) and terms of use.
- Added terms of use (TERMS.md). Short version: free, MIT, as is, and your content stays yours.
- Points the directory at the icon file directly.

## 0.2.4 (2026-10-18)

Fixes from the directory's validation. No change to how the plugin logs.

- Added an icon: a dark notebook with a red bookmark.
- Added a privacy policy (PRIVACY.md), linked from the plugin's settings. Short version: the plugin talks only to Craft and collects nothing.
- The session-start reminder now runs its script directly instead of through `bash`, so the directory's checker can read it. Same reminder, same text.

## 0.2.3 (2026-10-18)

README only. No change to how the plugin logs.

- Added four screenshots from a demo Craft space: a project dashboard, a chat doc, a project folder and Start Here. The README is the plugin's page in Claude's directory, so it now shows what you get.

## 0.2.2 (2026-10-18)

Small fixes from testing setup in an empty Craft space.

- Screenshots and attachments are logged with their file name and a short description, so you can find the file later. Craft's connector can't embed a chat attachment, so this is the next best thing.
- Setup no longer fills the About section without asking. If you skip the name question, Claude drafts the line, shows it and asks before writing it.
- The toggle indent fix now covers edits as well as additions. Lines edited inside a response toggle no longer jump out of it.
- Older docs under Earlier history are always real Craft links, never plain titles.

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
