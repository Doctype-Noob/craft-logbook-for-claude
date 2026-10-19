---
description: Set up the logbook in your Craft space (All Dashboards, Start Here, Activity Log, Logbook Format and a dashboard per project), adopt pages you already have, or update an older setup
---

Set up the user's Craft logbook. Follow the `logbook` skill and the formats in its `references/formats.md`.

1. **Check the connection.** Confirm the Craft connector is connected by listing the user's folders. If it isn't, tell the user to connect Craft from this plugin's Connectors tab (or Settings > Connectors), then run setup again. Stop there.

2. **Look for an existing logbook.** Search for a document titled "Start Here" and for one titled "Activity Log". Search can miss docs created in the last few minutes, so also list the documents in any folder named "Claude Logbook", "Logbook" or "Claude Reference Docs". If a Start Here page exists, read it and don't create a second one. Instead, add what's missing (step 4) and report what you added. A Start Here with no Logbook Format doc, no dashboard color or no All Dashboards was made by an older version; this run updates it.

3. **Ask three short questions**, all in one message, with defaults so the user can just say "defaults":
   - Logbook folder name (default: **Claude Logbook**, so it isn't confused with Craft's own task Logbook)
   - Logging mode: **full** (your prompts word for word and Claude's complete responses, in one doc per chat) or **summary** (what happened, no prompts or responses). Default: full
   - Your first name and one line about what you work on (for the About section). There is no default for this one: if the user says "defaults" or skips it, draft the line from what you already know about them, show it, and ask "Use this?" before writing it. Never write a name or details the user hasn't seen.

   If Start Here already answers all three, skip the questions, but still confirm the logging mode in one line before you write anything, for example: "Logging mode is full: every chat gets its own doc with your prompts word for word and my complete responses. Say summary if you'd rather not keep them." Then carry on without waiting.

   Don't ask about colors. Dashboards are red and All Dashboards is green; the user can change either in Start Here.

4. **Create the pieces** that don't exist yet:
   - A top-level folder with the chosen name
   - In it, **Start Here** using the format in `references/formats.md`. For an existing Start Here, add any missing section or setting line (Dashboard color, All Dashboards color, All Dashboards, Logbook Format, Other chats folder, section 6) and update section 1 to the current wording. Don't rewrite the user's own text in sections 2 to 4.
   - In it, **Activity Log**, starting with one line: "Dated record of every chat, newest at the bottom. Prompts and responses live in each chat's doc."
   - In it, **Logbook Format**: the full text of `references/formats.md`, so other AI tools (Gemini, ChatGPT) can write matching docs. Start it with this callout: "The spec for this logbook. Any AI writing here, read this first and follow it exactly." If it already exists and is older, don't paste the whole spec again: add only the sections that changed, below a divider headed "v[version] additions (YYYY-MM-DD)", and add to its top callout that the additions at the end win where they differ. Never replace or remove the existing text.
   - In it, a folder named **Other chats** for chat docs that belong to no project
   - In it, **📌 All Dashboards**, using the format and green colors in `references/formats.md`, with the links to Start Here and the Activity Log. If one already exists, keep it and add any missing project lines.
   - Fill in Start Here's Logbook settings and Document IDs with the real IDs

5. **Adopt existing projects.** List the user's top-level folders and the folders inside any folder that looks like a projects folder (such as "Current Projects" or "Projects"). Show them as a short list, mark the ones already in Start Here's table, and ask which ones to add or give a dashboard. For each one the user picks:
   - Add a row to the table if it isn't there.
   - If the folder has no "📌 … — Overview and Chat Log" doc, create the dashboard, colored as the skill says (title and page background only, never the body text). Fill **Where things live** from what the folder's docs say. List any older docs in the folder (an Overview, a Decisions Log, notes) under **Earlier history**, each as a link to the doc. Don't rename, move or convert them.
   - Point the row's "Read first" at the dashboard.
   - Add the dashboard's line to All Dashboards → Project dashboards, and remove the project's line under Projects without a dashboard yet if it had one.
   - Offer to backfill the project's past chats with the `backfill` command, and say it has to run from a chat inside that project's Claude Project if it has one.

   Projects already in Start Here's table that the user doesn't pick still get a line in All Dashboards: under Project dashboards if they have a dashboard, otherwise under Projects without a dashboard yet, linking to their Read first doc.

6. **Check existing rows.** If Start Here already has a project table, check that each row's folder still exists by listing folders. For any row whose folder is gone, list those projects for the user in one message and offer two choices for each: mark the row's status **Dropped** and note "folder removed", or remove the row from the table. Make no change until the user answers. Either choice also takes the project's line off All Dashboards. Neither touches the project's documents; never delete them.

7. **Give the user the always-log line.** In claude.ai chat, a plugin's skill only loads when Claude thinks the conversation matches it, so automatic logging can miss chats that aren't obviously about Craft. Preferences are read in every chat. Tell the user this in one sentence, then give them the always-log line from `references/formats.md`, in a code block, to paste into Settings > Profile in the field for their preferences. If they pasted an older always-log line, the new one replaces it.

   Explain that it starts with "Always" because Claude applies preferences only when they seem relevant unless they say they apply every time. You can't change their settings yourself, so don't claim it's done. Record the answer in Start Here's Logbook settings as "Always-log preference: added YYYY-MM-DD, v0.2.0 line" once the user says they pasted it, or "not yet" if they haven't. If Start Here already says the v0.2.0 line was added, skip this step.

8. **Log the setup** as a one-off chat (chat doc in Other chats, Activity Log entry), then confirm the new or changed docs by reading them by ID (not by search). Tell the user in two or three lines what was created and where, and to pin and star 📌 All Dashboards in Craft (right-click it: Pin keeps it at the top of the logbook folder, Star puts it in the sidebar). It's the way in to every project and chat, and the connector can't pin or star for them.

Never delete, rename or move anything the user already has.
