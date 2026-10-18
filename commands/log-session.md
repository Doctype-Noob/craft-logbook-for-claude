---
description: Log this conversation to your Craft logbook now (project Decisions Log, Activity Log, and Start Here)
argument-hint: "[optional: project name or a note to include]"
---

Log this conversation now, following the `logbook` skill and the formats in its `references/formats.md`.

1. Read Start Here (once, if you haven't in this conversation) to get the logging mode, the Activity Log ID, and the project table.
2. Work out which project or projects this conversation touched. If the user gave a project name or note with the command, use it: $ARGUMENTS. If no tracked project fits, ask whether to create a new project or log it in the Activity Log only.
3. Check whether this conversation already has an entry in that project's Decisions Log. If it does, append the newer prompts and responses to it instead of starting a second entry.
4. Write the Decisions Log entry, the Activity Log entry, and any Start Here or Overview updates the skill calls for.
5. Reply with one line per document you changed, naming it by title and folder.
