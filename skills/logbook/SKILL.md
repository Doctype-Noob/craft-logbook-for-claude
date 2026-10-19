---
name: logbook
description: Save this conversation to the user's Craft logbook. Use in any conversation, on any topic, that produces something worth finding later, such as ideas, research, a plan, a recommendation, a decision, or finished work like something written, built or fixed, and before the reply that wraps up that work. Once a chat has its own log doc, use it after every exchange. Also use when the user asks to log, record, save, catch up, wrap up, or update their logbook, Start Here page, chat log, dashboard or activity log. This logbook is the Start Here page and its logs, not Craft's built-in task Logbook of completed tasks.
---

# Craft Logbook for Claude

The user keeps a record of their work with Claude in their Craft space. Your job is to keep that record current as a background habit, so the user never has to ask, can find any prompt and response later, and never has to re-explain a project in a new chat.

**"Logbook" means this record, not Craft's task Logbook.** Craft has its own Logbook, a list of completed tasks, and the Craft connector can list it. When the user says "my logbook", "check the logbook" or "add it to the logbook", they mean Start Here, All Dashboards, the project dashboards, the chat docs and the Activity Log described here. Only go to Craft's task Logbook if they clearly ask about completed tasks or to-dos.

The record has five layers:

1. **All Dashboards**: "📌 All Dashboards" in the logbook folder. The page the user pins: one line per project, linking to its dashboard, with its status and last activity. Green title and green page background. This is the way in, so it has to be right every time.
2. **Start Here**: one page that maps the whole space. Who the user is, how they work, every project with its status and its dashboard, and the logbook settings.
3. **A dashboard per project**: "📌 [Project] — Overview and Chat Log" in the project's folder. Current status, every chat newest first with a summary and where it left off, where things live, and how to rebuild the project from scratch. Red title and red page background so it stands out among the other docs.
4. **A doc per chat**: "[Chat name] — Decisions and Prompt Log" in the project's folder. The user's prompts word for word and your complete responses. Source of truth.
5. **Activity Log** (one for the whole space): one short entry per chat, pointing to its chat doc.

Formats for every page and entry are in `references/formats.md`. Read it before your first write in a session. The same spec lives in Craft as **Logbook Format** so other AI tools can write matching docs.

## Before anything else: find Start Here

1. Search the user's Craft space for a document titled **Start Here** (the title may have a suffix, such as "Start Here — Josh × Claude").
2. Read it. Its **Logbook settings** section holds the logging mode, the dashboard color, the All Dashboards color, the always-log status, and the IDs of the logbook folder, All Dashboards, the Activity Log, the Logbook Format doc and the Other chats folder. Its project table tells you each project's folder and dashboard.
3. If there is no Start Here page, the logbook isn't set up. Don't create one silently. Tell the user in one sentence and offer to run setup.
4. If Start Here has no Logbook Format doc or no dashboard color in its settings, it was set up by an older version. Carry on with the defaults in `references/formats.md`, and offer once to run setup to update it.
5. If Start Here's settings list no All Dashboards, look for a doc titled "📌 All Dashboards" in the logbook folder by listing the folder (not by search). If there is none, create it before your first log in this conversation: format and colors in `references/formats.md`, one line per project in Start Here's table (dashboards first, then projects without one), and the links to Start Here and the Activity Log. Add its ID to Start Here's settings and Document IDs, and tell the user in one line where it is and to pin it.
6. If the Craft connector isn't connected, say so in one sentence and stop. Nothing else here works without it.

Read Start Here once per conversation, not before every write.

If the Logbook settings don't say "Always-log preference: added" with the v0.2.0 line, offer the always-log line from `references/formats.md` once, after your first log in the conversation, in two sentences at most (it goes in Settings > Profile, in the preferences field, replacing any older always-log line). Don't offer it again in the same conversation.

## When to log

**First log in a chat.** The test: would the user want to find this conversation again in a month? If yes, log it. The topic doesn't have to be a project already in Start Here. Log when ideas, options, research, a plan, a recommendation, a decision, or finished work (something built, written, published, fixed or set up) come up, or when a project's status changes.

**Don't wait for a decision.** A reply that lays out options or research is worth logging as it stands. Log at the end of the reply where it happens, not at the end of the chat. Chats often end without a goodbye, so a log you planned for later may never be written.

**After the first log, log every exchange.** Once this chat has a chat doc, append every prompt and response to it at the end of each reply, without judging whether it's worth keeping. Only skip a bare greeting or "thanks". This is the rule that keeps the record complete, so follow it even when the exchange seems small.

Don't start a chat doc for small talk or a quick factual question with nothing to keep.

Log without asking permission. The user installed this plugin to make logging automatic.

**Log once.** If another skill or instruction in this conversation also tells you to log to Craft (a personal logging skill, project instructions, a saved preference), write one entry per exchange, not one per instruction. Follow whichever names the more specific locations or rules, and skip the duplicate.

## Which project

Pick the project in Start Here's table that this chat is about. If the chat is inside a Claude Project, its name and instructions usually say which one.

- **No matching project, but it looks like ongoing work**: create one (see New projects below).
- **A one-off** (a question that still produced something worth keeping): the chat doc goes in the **Other chats** folder inside the logbook folder (create it if Start Here doesn't list one), and the Activity Log entry says "Other".
- **In a Claude Project with no row in Start Here**: ask once whether to add it as a project and backfill its earlier chats (the `backfill` command does that). If the user says no, log this chat as a one-off and don't ask again in this chat.

## Writing the first log of a chat

1. **Make sure the project has a dashboard.** If its folder has no "📌 … — Overview and Chat Log" doc, create one (format in `references/formats.md`). Color it as described under "Dashboard color" at the end of this skill: title and page background only, never the body text. If the folder holds older docs from before v0.2.0, such as an Overview or a Decisions Log, don't rename, convert or move them: link them under **Earlier history** on the new dashboard, using each doc's Craft link (read the doc with its metadata to get the ready-made Craft app link; never list a plain title). Then point the project's "Read first" in Start Here at the new dashboard, even when the project already had a row, and add the dashboard to All Dashboards (see Keeping All Dashboards current).
2. **Create the chat doc** in the project's folder: "[Chat name] — Decisions and Prompt Log". You can't see the chat's title, so use a short suggested name based on the topic, and ask the user once in your reply what the chat is called in their sidebar. If they answer, rename the doc and its dashboard entry to match. If they don't, keep your name. Write the header and every exchange so far.
3. **Add the chat to the top of the dashboard's Chats list**, right under the "Chats, newest first" heading, with the link to the chat doc, Summary, Result and Left off. Use the Craft app link the connector returns when it creates the doc. Update the dashboard's status callout.
4. **Add one entry to the Activity Log**, at the bottom, pointing to the chat doc, with the user's first prompt of the chat word for word.
5. **Update Start Here and All Dashboards** if the project is new, its status changed, or its last activity date changed. In Start Here, edit only that project's row and the "Last updated" date. In All Dashboards, edit only that project's line and the "Last updated" date.

## Every exchange after that

1. Append the new prompt and your response to the chat doc.
2. If the chat's summary, result or where it left off changed, update those lines at the top of the chat doc and in the chat's dashboard entry, and the dashboard's status callout if the project's status changed. Rewrite them in place; they describe the chat as it stands now.
3. Update the Activity Log entry's sentence only if the chat's headline changed. Don't add a second Activity Log entry for the same chat on the same day.
4. Update Start Here and the project's line in All Dashboards only when the project's status changes.

Keep track in your own context of the IDs you created or touched (chat doc, its header blocks, the dashboard entry, the Activity Log entry, the project's All Dashboards line), so you can update them without searching.

### Prompts and responses

The logging mode in Start Here decides how much of the conversation goes in the chat doc:

- **full** (default): every prompt the user sent, word for word, typos included, each followed by your complete response inside a collapsed toggle. Complete means the substance of everything you said: answers, reasoning, recommendations, lists, questions you asked. For long code, files or documents you produced, say what was produced and where it lives instead of pasting it. Note attachments and screenshots in square brackets with the file name when you can see it and a short description, such as "[screenshot: Screenshot 2026-10-18 at 1.56.24 PM.png, the project folder in grid view]" or "[attached: menu.pdf, the spring menu draft]". The connector can only embed images that have a web address, so a chat attachment is named and described, not embedded.
- **summary**: no prompts or responses in the chat doc, only the header and a dated list of what happened.

The Activity Log never holds responses, only the first prompt of each chat.

Quote only what the user actually wrote in this conversation. If earlier turns are no longer in your context, say so in the chat doc ("earlier prompts not available") rather than reconstructing them.

## Wrapping up: the next-chat prompt

When the user says "wrap up", "done for today" or similar, or the work reaches a clear stopping point, write the prompt they'll paste to start the next chat on this project. Format in `references/formats.md`: where things stand, what's next, and how to work, written so a fresh chat can pick up from it.

1. In your reply, put it in one copy box (a code block) right before your log line.
2. Add it to the end of the chat doc under **Next chat prompt**.
3. Set Left off, at the top of the chat doc and in the dashboard entry, to say the next-chat prompt is at the end of the chat doc.

Don't write one at every reply. Only at a stopping point.

## New projects

When work starts on something that has no project in Start Here:

1. Create a folder for it where the user keeps active projects (Start Here's settings say where; the default is a folder named **Current Projects**).
2. Inside it, create the dashboard, then the chat doc.
3. Add a row to the Start Here project table pointing "Read first" at the dashboard.
4. Add the dashboard's line at the top of All Dashboards → Project dashboards.
5. Tell the user in one line where the new folder is.

## Keeping All Dashboards current

All Dashboards is the page the user pins, so a stale line there means a lost chat. Format in `references/formats.md`. Every write to it is small: one project's line and the "Last updated" date.

- **A project gets a dashboard** (new project, or an older project's first chat on this layout): add a line at the top of **Project dashboards** linking to the dashboard, with its status and last activity. If the project had a line under **Projects without a dashboard yet**, remove that line.
- **A project's status or last activity changes**: update its line in place, at the same time you update its Start Here row. Don't reorder lines.
- **A project is marked Dropped**: remove its line.
- **Links**: use the Craft app link for the dashboard. The connector returns one when it creates a doc; for an existing doc, read it with its metadata to get the clickable link. Never list a plain title.

If a project in Start Here's table is missing from All Dashboards, add its line when you next touch that project. If All Dashboards' ID in Start Here doesn't resolve, find it by listing the logbook folder and fix the ID.

## Rules

- **Never delete.** Don't delete Craft documents, folders, blocks or log entries. If something should go, list it for the user and let them delete it. Updating a summary line in place is fine; removing someone's content is not. The one exception is All Dashboards, which only holds pointer lines you maintain: removing a project's line there when it moves sections or is dropped is fine.
- **Never rename or move the user's own docs.** Rename only docs you created in this conversation (the chat doc, once the user gives its name).
- **Don't copy detail upward.** The dashboard and Activity Log point to the chat doc; they don't repeat it.
- **Refer to docs by title and path** in your replies, such as *Current Projects → Website → 📌 Website — Overview and Chat Log*.
- **Keep the user's words.** Quote prompts exactly. Don't tidy them.
- **Leave out secrets.** If a prompt or response contains a password, API key, card number, or similar, replace that value with [redacted] in the log.
- **Tell the user once.** After logging, mention it in one short line at the end of your reply ("Logged in Website → Website setup — Decisions and Prompt Log."). Don't narrate each write.
- **Stale IDs.** If an ID from Start Here doesn't resolve, find the doc by title, fix the ID in Start Here, and carry on.
- **Check recent writes by ID, not search.** Craft's search index runs a few minutes behind. A search right after a write can come back empty even though the write worked. To confirm a write, or to check whether something already exists, read the doc by its ID or list the folder's documents. Use search only to find older docs whose ID you don't have.

## Working with the Craft connector

The Craft connector's tool names and arguments can change, so go by the tool descriptions you see. Typical operations: search the space by title, list folders and documents, read a document as markdown, create a document in a folder, add blocks at the end of a document or before or after a given block, update a block, style a page, and create a folder.

- **Append** to a chat doc or the Activity Log by adding blocks at the end of its page; don't replace the page.
- **Newest chat first** on a dashboard: add the new entry before the first existing chat entry, or right after the "Chats, newest first" heading if there is none.
- **Toggles** need their children indented two spaces and starting with "- ", or the toggle comes out empty. When you add a line inside an existing toggle, or update the text of any line that is already inside one, the connector can drop the indent and move the line outside the toggle. After any such add or update, set the line's indentation level back to 1 in the same call or the next one, and read it back if unsure.
- **No angle brackets** around words in your markdown, such as "<Project>". The connector reads them as HTML and rejects the write. Use square brackets for placeholders.
- **Dashboard color**: two settings, nothing else.
  1. The title: set a block color on the dashboard's page block itself (for red: color #D32F2F, dark color #FF6B6B). A block color on the page block colors the title only.
  2. The page background: a solid backdrop in the dashboard color (red is #c10007). This is what shows on Craft's folder thumbnails.

  Never set the page's text color, theme color or a page theme. A page text color turns every line of the dashboard red and makes it hard to read; the body text stays the default black. If a dashboard already has a page text color, reset the page to the default theme with the same backdrop, then set the title color again.
- **All Dashboards color**: the same two settings in green, so it stands apart from the red project dashboards. Title: color #2E7D32, dark color #66BB6A. Page background: solid backdrop #1B7A34.
- **Renaming a doc** is an update to its page block's text.
