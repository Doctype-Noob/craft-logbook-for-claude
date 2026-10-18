---
description: Log this conversation to your Craft logbook now (this chat's doc, the project dashboard, the Activity Log and Start Here)
argument-hint: "[optional: this chat's name, the project, or a note to include]"
---

Log this conversation now, following the `logbook` skill and the formats in its `references/formats.md`. The user may have given a chat name, a project or a note: $ARGUMENTS

1. Read Start Here (once, if you haven't in this conversation) to get the logging mode, the dashboard color, the Activity Log ID and the project table.
2. Work out which project this chat belongs to. Use the project the user named, if any. If no tracked project fits, ask whether to create a new project or log it as a one-off in Other chats.
3. Check whether this chat already has a chat doc: one you created earlier in this conversation, or a doc in the project's folder with this chat's name. Read it by ID or list the folder; don't rely on search.
   - **It exists:** append every prompt and response that isn't in it yet, and update its Summary, Decisions, Result and Left off.
   - **It doesn't:** create the dashboard if the project has none, then create the chat doc with every exchange in this conversation. If the user didn't give the chat's name, use a short suggested name and ask once what it's called in their sidebar.
4. Update the chat's entry on the dashboard (add it at the top of the Chats list if it's new) and the status callout, add or update the Activity Log entry, and update Start Here if the project's status or last activity changed.
5. If the user is wrapping up, write the next-chat prompt as the skill describes.
6. Reply with one line per document you changed, naming it by title and folder.
