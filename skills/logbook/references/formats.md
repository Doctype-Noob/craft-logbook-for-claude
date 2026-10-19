# Logbook Format

The exact shape of every page and entry in the logbook. Any AI writing to this Craft space should follow it, so docs look the same whoever wrote them. Where it says "the AI", write your own name (Claude, Gemini, ChatGPT).

Markdown here is as the Craft connector accepts it: `>` makes a quote block, `+` makes a toggle, a toggle's children are indented two spaces and start with `- `, and `<callout>` makes a callout. Use square brackets for placeholders, never angle brackets.

## The layout

```
[Logbook folder, default "Claude Logbook"]
  📌 All Dashboards       (the page to pin: links every project dashboard)
  Start Here
  Activity Log
  Logbook Format          (this spec)
  Other chats/            (chat docs that belong to no project)

[Active projects folder, default "Current Projects"]
  [Project]/
    📌 [Project] — Overview and Chat Log      (the dashboard)
    [Chat name] — Decisions and Prompt Log    (one per chat)
    [Chat name] — Decisions and Prompt Log
```

Defaults when Start Here doesn't say otherwise: logging mode full, dashboard color red, All Dashboards color green, active projects folder Current Projects.

## Chat doc

Title: `[Chat name] — Decisions and Prompt Log`. The chat name is what the chat is called in the user's sidebar. One doc per chat. Every later exchange in the same chat is appended to the same doc.

```
<callout>Chat: [Chat name] ([Claude Project name] Claude Project, or regular chat) · Dates: YYYY-MM-DD (to YYYY-MM-DD if it spans days) · Written by: [the AI] · Project: [Project]</callout>

**Summary:** What this chat did, two to four sentences, kept current as the chat goes.

**Decisions:** What the user decided, one per line. Leave this out if nothing was decided.

**Result:** What exists now because of this chat: files, versions, published pages, answers.

**Left off:** Where it stopped and what's next. At a wrap-up: "Next-chat prompt is at the end of this doc."

***

**Prompt 1 ([First name]):**

> The user's first prompt, word for word, typos included. Each paragraph its own > line. [screenshot of …] or [attached: file name] for attachments.

+ [the AI]'s response
  - Everything the response said, complete in substance, as bullets
  - Files, code or documents produced: name them and say where they live, don't paste them

**Prompt 2 ([First name]):**

> The next prompt

+ [the AI]'s response
  - ...
```

Use "User" if Start Here gives no first name. A backfilled chat adds "· Backfilled YYYY-MM-DD · Chat link: [url]" to the callout.

At a wrap-up, add at the end:

```
***

**Next chat prompt:**

> The prompt to paste into a new chat, each paragraph its own > line
```

In **summary** mode, the chat doc keeps the callout and the four header lines, then replaces the prompts with:

```
***

**What happened:**

- YYYY-MM-DD: one line per exchange worth keeping
```

## Dashboard

Title: `📌 [Project] — Overview and Chat Log`. One per project folder. Only the title and the page background take the dashboard color: for red, the title is #D32F2F (dark mode #FF6B6B), set as the page block's own color, and the page gets a solid backdrop #c10007. Body text stays the default black. Never set a page-wide text color or theme.

```
<callout>Status: [Status] · Last activity YYYY-MM-DD · Next: [one line]</callout>

## Chats, newest first

### [Chat name](craft link to the chat doc)

YYYY-MM-DD · [Claude Project name] Claude Project, or regular chat

**Summary:** One or two sentences.

**Result:** One or two sentences.

**Left off:** One sentence.

### [Older chat name](link)

...

## Where things live

- **[Thing]:** where it is (repo, site, file, other app)

## Claude Project

Name: [Claude Project name] · Saved YYYY-MM-DD · Last checked YYYY-MM-DD

+ Instructions, word for word
  - [Each paragraph of the project's instructions, as written]
+ Files
  - [File name], [one line on what it is, if known]

## Rebuild from scratch

1. Read this page, then the chat docs from oldest to newest.
1. [Steps to get the project back from nothing: where the code or files are, what to install or sign in to, what to paste where.]
1. If the Claude Project is gone: create a new Claude Project with the name above, paste the instructions from the Claude Project section into its Instructions field, and add the files listed there.
1. Start a new chat with the next-chat prompt at the end of the newest chat doc.

## Earlier history

- [Older docs from before this layout, such as an Overview or a Decisions Log, each as a link to the doc. Leave this section out if there are none.]
```

Status values: Active, Paused, On hold, Idea, Done, Cold case, Dropped.

**Claude Project section** rules:

- Only for a project that has a Claude Project. Leave the section out otherwise.
- Written the first time a chat logs from inside that Claude Project. After that, each chat's first log compares the instructions and file list with what's saved. If either changed, replace the section's contents with the current ones and update "Saved". If nothing changed, update only "Last checked".
- Instructions are copied word for word, one toggle line per paragraph, with any password, API key or similar replaced by [redacted]. Files are listed by name, not copied: say where the original lives if you know.
- Enough to rebuild the Claude Project by hand if it's deleted. The chat docs and the next-chat prompt cover the chats.

## Deleted in Claude

Deleting a chat or a Claude Project in Claude never touches Craft, and the AI gets no signal when it happens. So this is only written when the user says they deleted something. Nothing in Craft is removed.

**A chat was deleted.** On the dashboard, add a line under the chat's entry:

```
**Deleted in Claude:** YYYY-MM-DD. To pick it up again, start a new chat with the next-chat prompt at the end of its chat doc.
```

If the chat doc has no next-chat prompt, write one from the chat doc first and add it at the end of the doc. On All Dashboards → Recent chats, if the chat has a line, remove its claude.ai link (it no longer opens) and add "· deleted in Claude YYYY-MM-DD" to the end.

**A Claude Project was deleted.** At the top of the project's dashboard, right after the status callout:

```
<callout>Claude Project deleted in Claude on YYYY-MM-DD. Everything is still here. To rebuild it, follow Rebuild from scratch below.</callout>
```

If the dashboard has no Claude Project section, say so in that callout and point to the chat docs and the newest next-chat prompt instead. On All Dashboards, add "· Claude Project deleted YYYY-MM-DD" to the project's line. The project's status doesn't change unless the user says so.

Either way, add one Activity Log entry: `**YYYY-MM-DD — [Project]: [chat name or Claude Project] deleted in Claude**`, one sentence saying how to rebuild it, and the path to the dashboard. No first-prompt quote.

## All Dashboards

Title: `📌 All Dashboards`. One per logbook, in the logbook folder. It's the page the user pins: one line per project, each linking to that project's dashboard, so every chat is two clicks away, and the last 20 chats, each one click away. Same coloring rule as a dashboard, in the All Dashboards color: for green, the title is #2E7D32 (dark mode #66BB6A), set as the page block's own color, and the page gets a solid backdrop #1B7A34. Body text stays the default black. Never set a page-wide text color or theme.

```
<callout>Pin this page in its folder and star it so it's always in Craft's sidebar (right-click it for both). It links to every project dashboard and is kept current by the AI that logs here. Last updated YYYY-MM-DD.</callout>

## Project dashboards

- [📌 Project](craft link to the dashboard) · [Status] · YYYY-MM-DD
- [📌 Older project](link) · [Status] · YYYY-MM-DD

## Recent chats

The last 20 chats, newest first. The chat name opens it in Claude; log opens its Craft doc. Chats inside Claude Projects show up here once they're logged from inside their project: a regular chat can't list them.

- YYYY-MM-DD · [Chat name](claude.ai link to the chat) · [Project] · [log](craft link to the chat doc)
- YYYY-MM-DD · Chat name, no link yet · Other · [log](craft link to the chat doc)
- YYYY-MM-DD · [Chat name](claude.ai link) · not logged

## Projects without a dashboard yet

- [Read first doc title](craft link to it) ([Project]) · [Status] · YYYY-MM-DD

## Across all projects

- [Start Here](craft link): the map of this space.
- [Activity Log](craft link): one entry per chat across every project, newest at the bottom.
```

- Each line is the link, then the project's status and last activity date, the same as its row in Start Here. Nothing else; the detail lives on the dashboard.
- A new dashboard's line goes at the top of **Project dashboards**. Lines are updated in place after that, not reordered.
- **Projects without a dashboard yet** holds the projects in Start Here's table that have no dashboard, linking to their Read first doc. When one gets a dashboard, its line moves up: add it at the top of Project dashboards and remove it here. Leave the section out if every project has a dashboard.
- Projects marked Dropped stay in Start Here's table but come off this page.
- Update "Last updated" in the callout whenever a line changes.
- Sections in this order: Project dashboards, Recent chats, Projects without a dashboard yet, Across all projects.

**Recent chats** rules:

- One line per chat: the date the chat was first logged, the chat's name as it appears in Claude's sidebar, the project (or Other), and **log** linking the chat doc. Nothing else.
- A chat's first log adds its line at the top. If the list then has more than 20 lines, remove lines from the bottom until it has 20. The chat docs stay; only the pointer goes.
- The chat name links to the chat on claude.ai when the link is known. A chat can't see its own link, so its first line has the name as plain text. Any later run that lists recent chats (setup, backfill, or a chat that lists them for another reason) adds the missing links to lines whose names match.
- When the chat doc is renamed to the chat's sidebar name, rename the line too.
- Renames in Claude: a chat's link never changes when it's renamed, so the link is how a line stays tied to its chat. Any run that lists recent chats checks each linked line against the listing. If the chat's name in Claude is now different, rename the line, the chat doc (title and callout), its dashboard entry and its Activity Log pointer to match. A line without a link can't be matched this way; it follows a rename only when the user gives the new name.
- A chat that isn't logged in this space says "not logged", or where it was logged instead ("logged in [other space or tool]"), in place of the project and log link. If it gets logged later, remove that line and add the logged one at the top.
- One line per chat. Before adding a line, check the list for one with the same name or link. If there is one, remove it and add the new line at the top, so a chat never appears twice.
- A regular chat can't list chats inside Claude Projects, so those never come from a listing. They appear only when they're logged from inside their project.

## Activity Log entry

One entry per chat per day, at the bottom of the Activity Log (newest at the bottom). No responses; the chat doc has them.

```
**YYYY-MM-DD — [Project]: short headline**

One sentence. See *[Folder] → [Project] → [Chat name] — Decisions and Prompt Log*.

> First prompt: the user's first prompt in the chat, word for word (the first paragraph if it's long)
```

For a one-off chat, the project is "Other" and the path is *[Logbook folder] → Other chats → [Chat name] — Decisions and Prompt Log*.

## Start Here page

Sections in this order. Section numbers help another AI find its way.

```
<callout>Read this page first. It maps this Craft space: who the user is, how they work, every project and its status, and where the detail lives. It is a map, not a copy. Last updated YYYY-MM-DD.</callout>

## 1. How to find anything

1. Open 📌 All Dashboards and pick the project, or find it in the table in section 4. Open its dashboard (Read first).
2. The dashboard lists every chat, newest first, with where each one left off. Open a chat's doc for the prompts and responses word for word.
3. For a timeline across all projects, read the Activity Log.
4. To write to this logbook from any AI, follow the Logbook Format doc.

## 2. About me

(Name, what they do, what they're building. Two or three sentences, in the user's words.)

## 3. How I work with AI

(Preferences the user states: tone, format, what to avoid. Leave a placeholder line if they haven't said.)

## 4. Projects

| Project | Status | What it is | Last activity | Read first | Craft folder |
| --- | --- | --- | --- | --- | --- |

## 5. Logbook settings

- Logging mode: full
- Dashboard color: red
- All Dashboards color: green
- Always-log preference: not yet (or added YYYY-MM-DD, v0.2.0 line)
- Active projects folder: Current Projects
- Logbook folder: (name and ID; default name Claude Logbook)
- All Dashboards: (ID)
- Other chats folder: (ID)
- Activity Log: (ID)
- Logbook Format: (ID)

+ Document IDs (for AI tools reading Craft by ID)
  - Start Here: (ID)
  - All Dashboards: (ID)
  - Activity Log: (ID)
  - Logbook Format: (ID)

## 6. Keeping this page current

When a chat changes a project's status or last activity, update its row here and its line in 📌 All Dashboards. A new project gets a row here, a folder with a 📌 dashboard, and a line at the top of All Dashboards. Every chat's first log also adds its line at the top of All Dashboards → Recent chats, which keeps the newest 20.
```

"Read first" holds the project's dashboard title.

## Next chat prompt

Written at a wrap-up. It has to work in a fresh chat that knows nothing.

```
Picking up [Project] from the chat "[Chat name]" (YYYY-MM-DD). Before anything else, open Craft: [Folder] → [Project] → "📌 [Project] — Overview and Chat Log", then the end of "[Chat name] — Decisions and Prompt Log". Confirm where we are in 3-4 lines.

Where we stopped:
- [Facts the next chat needs: versions, links, what passed, what's waiting on the user]

Next, in order:
1. [The next steps]

How to work:
- [Any working rules the user set in this chat]
```

## Always-log preference line

The line the user pastes into Settings > Profile, in the preferences field, so logging happens in every chat. It replaces any older always-log line.

```
Always, in every chat: when a reply gives me something worth finding later (ideas, options, research, a plan, a decision, or finished work), use the Craft Logbook for Claude logbook skill to log it to my Craft logbook at the end of that same reply, even if I haven't decided anything yet. Once a chat has its own log doc, add every exchange to it. Tell me in one line.
```
