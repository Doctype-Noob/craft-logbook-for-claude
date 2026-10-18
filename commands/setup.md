---
description: Set up the logbook in your Craft space (Start Here page, Activity Log, and a logbook folder), or adopt pages you already have
---

Set up the user's Craft logbook. Follow the `logbook` skill and the Start Here format in its `references/formats.md`.

1. **Check the connection.** Confirm the Craft connector is connected by listing the user's folders. If it isn't, tell the user to connect Craft from this plugin's Connectors tab (or Settings > Connectors), then run setup again. Stop there.

2. **Look for an existing logbook.** Search for a document titled "Start Here" and for one titled "Activity Log". Search can miss docs created in the last few minutes, so also list the documents in any folder named "Claude Logbook", "Logbook" or "Claude Reference Docs". If a Start Here page exists, read it and don't create a second one. Instead, add any missing sections (especially Logbook settings) and report what you added.

3. **Ask three short questions**, all in one message, with defaults so the user can just say "defaults":
   - Logbook folder name (default: **Claude Logbook**, so it isn't confused with Craft's own task Logbook)
   - Logging mode: **full** (your prompts and Claude's responses in every entry) or **summary** (headline, summary, open items only). Default: full
   - Your first name and one line about what you work on (for the About section)

   If Start Here already answers all three, skip the questions, but still confirm the logging mode in one line before you write anything, for example: "Logging mode is full: every entry will include your prompts and my responses. Say summary if you'd rather not keep them." Then carry on without waiting.

4. **Create the pieces** that don't exist yet:
   - A top-level folder with the chosen name
   - In it, **Start Here** using the format in `references/formats.md`
   - In it, **Activity Log**, starting with one line: "Dated record of every session, newest at the bottom. Detail lives in each project's Decisions Log."
   - Fill in Start Here's Logbook settings and Document IDs with the real IDs

5. **Adopt existing projects.** List the user's top-level folders and the folders inside any folder that looks like a projects folder (such as "Current Projects" or "Projects"). Show them as a short list and ask which ones to add to the project table. For each one the user picks, add a row; if the folder has no Decisions Log, create one with a single opening line, and point "Read first" at its existing overview doc if there is one.

6. **Check existing rows.** If Start Here already has a project table, check that each row's folder still exists by listing folders. For any row whose folder is gone, list those projects for the user in one message and offer two choices for each: mark the row's status **Dropped** and note "folder removed", or remove the row from the table. Make no change until the user answers. Either choice only edits the Start Here table; never delete the project's documents.

7. **Give the user the always-log line.** In claude.ai chat, a plugin's skill only loads when Claude thinks the conversation matches it, so automatic logging can miss chats that aren't obviously about Craft. Preferences are read in every chat. Tell the user this in one sentence, then give them the always-log line from `references/formats.md`, in a code block, to paste into Settings > Profile in the field for their preferences (they can add it to anything already there).

   Explain that it starts with "Always" because Claude applies preferences only when they seem relevant unless they say they apply every time. You can't change their settings yourself, so don't claim it's done. Record the answer in Start Here's Logbook settings as "Always-log preference: added YYYY-MM-DD" once the user says they pasted it, or "not yet" if they haven't. If Start Here already says added, skip this step.

8. **Log the setup** in the Activity Log using the normal entry format, then confirm the new or changed docs by reading them by ID (not by search). Tell the user in two or three lines what was created and where.

Never delete or rename anything the user already has.
