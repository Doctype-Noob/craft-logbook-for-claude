---
description: Log a project's earlier chats into your Craft logbook, one chat doc per past chat, a few at a time
argument-hint: "[optional: project name]"
---

Backfill past chats into the Craft logbook, following the `logbook` skill and the formats in its `references/formats.md`. The user may have named a project: $ARGUMENTS

Backfill only reads past chats and only adds to Craft. It never edits or deletes the user's existing docs, except to add entries to the dashboard and update Start Here and All Dashboards.

1. **Check you can read past chats.** You need Claude's past-chat tools (search past chats, list recent chats, read a past chat). If they aren't available, tell the user in two sentences: backfill runs in the Claude app with Settings > Search and reference chats turned on, and inside a Claude Project it only sees that project's chats. Stop there.

2. **Pick the project.** Read Start Here (once). Use the project the user named. If they named none and this chat is in a Claude Project, use the project that matches it. If neither, ask which project. If the project has no row or no dashboard, set them up first as the skill describes, including the project's line in All Dashboards.

3. **Find what's already logged.** Read the project's dashboard and list the docs in its folder. A past chat counts as logged if its chat link appears on the dashboard or in a chat doc's callout, or a chat doc in the folder has its name. Never backfill a chat twice.

4. **List the candidates.** List recent chats, newest first, and leave out this chat and any already logged. Inside a Claude Project these are the project's chats. Outside one, keep only chats about this project: search past chats for the project's name and key terms, and show the user the matches to confirm before writing anything.

5. **Do one batch.**
   - First run for this project: the **3** most recent unlogged chats.
   - After that: **5** per batch, and ask before starting each one ("5 more, starting with [chat name] from [date]?").

   For each chat in the batch, oldest of the batch first:
   - Read the whole chat. Page through it until you have every prompt; this is the one case where reading a past chat in full is the job.
   - Create "[Chat name] — Decisions and Prompt Log" in the project's folder, using the chat's own title. Callout: written by Claude, "Backfilled YYYY-MM-DD", the chat's dates, and its chat link.
   - Write every prompt word for word and every response complete in substance, as in full mode, or the summary-mode shape if Start Here says summary. Mark attachments and screenshots in square brackets. Replace any password, API key, card number or similar with [redacted].
   - Add an entry to the dashboard's Chats list in date order (newest first), with the chat link on its date line.
   - If a long chat won't fit in what's left of this conversation, stop at the last complete prompt, add "Backfill stopped at Prompt N; earlier part only" to the doc's Left off, and tell the user to run backfill again in a new chat to finish it.

6. **Record the run.** Add one Activity Log entry for the whole batch, not one per chat: "YYYY-MM-DD — [Project]: backfilled N earlier chats", listing the chat docs by title. Update the dashboard's status callout, Start Here's last activity and the project's line in All Dashboards only if they're now wrong.

7. **Report.** One line per chat doc created, then how many unlogged chats are left and whether to do the next batch. Ask the user to spot-check two or three prompts against the original chats for the first batch.
