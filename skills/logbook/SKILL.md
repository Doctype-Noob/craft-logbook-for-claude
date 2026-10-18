---
name: logbook
description: Save this conversation to the user's Craft logbook. Use in any conversation, on any topic, that produces something worth finding later, such as ideas, research, a plan, a recommendation, a decision, or finished work like something written, built or fixed, and before the reply that wraps up that work. Also use when the user asks to log, record, save, catch up, or update their logbook, Start Here page, decisions log, or activity log. This logbook is the Start Here page and its logs, not Craft's built-in task Logbook of completed tasks.
---

# Craft Logbook for Claude

The user keeps a record of their work with Claude in their Craft space. Your job is to keep that record current as a background habit, so the user never has to ask and never has to repeat themselves in a new chat.

**"Logbook" means this record, not Craft's task Logbook.** Craft has its own Logbook, a list of completed tasks, and the Craft connector can list it. When the user says "my logbook", "check the logbook" or "add it to the logbook", they mean Start Here, the Decisions Logs and the Activity Log described here. Only go to Craft's task Logbook if they clearly ask about completed tasks or to-dos.

The record has three layers:

1. **Start Here**: one page that maps the whole space. Who the user is, how they work, every project with its status and the one doc to read first, and the logbook settings.
2. **Decisions Log** (one per project): the detailed, dated history of that project. Source of truth.
3. **Activity Log** (one for the whole space): a short dated entry per session, pointing to the project log.

Formats for every entry are in `references/formats.md`. Read it before your first write in a session.

## Before anything else: find Start Here

1. Search the user's Craft space for a document titled **Start Here** (the title may have a suffix, such as "Start Here — Josh × Claude").
2. Read it. Its **Logbook settings** section holds the IDs of the Activity Log and the logbook folder, the logging mode, and any house rules. Its project table tells you which docs belong to which project.
3. If there is no Start Here page, the logbook isn't set up. Don't create one silently. Tell the user in one sentence and offer to run setup (the `setup` command does it).
4. If the Craft connector isn't connected, say so in one sentence and stop. Nothing else here works without it.

Read Start Here once per conversation, not before every write.

If the Logbook settings don't say "Always-log preference: added", offer the always-log line from `references/formats.md` once (say it goes in Settings > Profile and why), after your first log in the conversation, in two sentences at most. Don't offer it again in the same conversation.

## When to log

The test: **would the user want to find this conversation again in a month?** If yes, log it. The topic doesn't have to be a project already in Start Here.

Log when any of these happen:

- Ideas worth keeping come up: a brainstorm, a new product or project idea, options weighed
- Research or an explanation the user may want again: what you found, compared or recommended
- A decision is made, or a recommendation is accepted or turned down
- Notable work is finished: something built, written, published, fixed, or set up
- A project's status changes (started, paused, blocked, done, dropped)
- An open question is answered, or a new one comes up that the user will need to act on

Log at the end of the reply where the thing happens, not later. **Don't wait for a decision.** A reply that lays out options or research is worth logging as it stands, even if the user hasn't picked anything; if they decide later in the chat, add that to the same entry. Chats often end without a goodbye, so a log you planned for the end may never be written. If the conversation continues on the same topic, add the new prompts and responses to the same entry rather than starting a second one.

Don't log small talk, or a quick factual question with nothing to keep.

If the topic fits no project in Start Here, follow **New projects** below when it looks like ongoing work, or log it in the Activity Log only when it's a one-off.

Log without asking permission. The user installed this plugin to make logging automatic.

**Log once.** If another skill or instruction in this conversation also tells you to log to Craft (a personal logging skill, project instructions, a saved preference), write one entry per log, not one per instruction. Follow whichever names the more specific locations or rules, and skip the duplicate.

## What to write

For each session that touches a project:

1. **Append an entry to that project's Decisions Log** (format in `references/formats.md`): a dated headline, a short summary, open items, then the user's prompts and your responses.
2. **Append an entry to the Activity Log**: the same headline, one or two sentences, a pointer to the project's Decisions Log, then the prompts and shorter responses.
3. **Update Start Here** if the project's status, last activity date, or doc-to-read-first changed. Edit only that project's row and the "Last updated" date.
4. **Update the project's Overview or Current State** if its top section is now wrong. Rewrite the dated "Current state" section at the top. Leave older text below it as history.

Newest entries go at the bottom of each log. Append; never rewrite past entries.

### Prompts and responses

The logging mode in Start Here decides how much of the conversation goes in:

- **full** (default): every prompt the user sent in the session, verbatim, typos included, each followed by your response inside a collapsed toggle. Keep responses complete in substance. For long code, files, or documents you produced, say what was produced and where it lives instead of pasting it.
- **summary**: no prompts or responses, only the headline, summary, and open items.

In the Activity Log, responses are always shorter (one or two bullets each), even in full mode.

Quote only what the user actually wrote in this conversation. If earlier turns are no longer in your context, say so in the entry ("earlier prompts not available") rather than reconstructing them.

## New projects

When work starts on something that has no project in Start Here:

1. Create a folder for it where the user keeps active projects (Start Here's settings say where; the default is a folder named **Current Projects**).
2. Inside it, create **<Project> — Overview** (what it is, current state, where things live) and **<Project> — Decisions Log**.
3. Add a row to the Start Here project table, and add the new doc IDs to the Document IDs section.
4. Tell the user in one line where the new folder is.

If the user's work doesn't fit a project (a one-off question that still produced something worth keeping), log it in the Activity Log only.

## Rules

- **Never delete.** Don't delete Craft documents, folders, or log entries. If something should go, list it for the user and let them delete it.
- **Don't copy detail upward.** Start Here and the Activity Log point to the project log; they don't repeat it.
- **Refer to docs by title and path**, such as *Current Projects → Website → Decisions Log*. Don't build Craft links from IDs.
- **Keep the user's words.** Quote prompts exactly. Don't tidy them.
- **Leave out secrets.** If a prompt or response contains a password, API key, card number, or similar, replace that value with [redacted] in the log.
- **Tell the user once.** After logging, mention it in one short line at the end of your reply ("Logged in Website → Decisions Log and the Activity Log."). Don't narrate each write.
- **Stale IDs.** If an ID from Start Here doesn't resolve, find the doc by title, fix the ID in Start Here, and carry on.
- **Check recent writes by ID, not search.** Craft's search index runs a few minutes behind. A search right after a write can come back empty even though the write worked. To confirm a write, or to check whether setup or an earlier session already created something, read the doc by its ID or list the folder's documents. Use search only to find older docs whose ID you don't have.

## Working with the Craft connector

The Craft connector's tool names and arguments can change, so go by the tool descriptions you see. Typical operations: search the space by title, list folders and documents, read a document as markdown, create a document in a folder, append blocks to the end of a document, update a block, and create a folder. Append to a log by adding blocks at the end of its root page; don't replace the page.

Toggle blocks need their children indented under them, or the toggle comes out empty. `references/formats.md` shows the exact shape.
