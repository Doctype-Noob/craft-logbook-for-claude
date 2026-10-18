# Logbook formats

Use these shapes exactly. They're markdown as the Craft connector accepts it: `>` makes a quote block, `+` makes a toggle, and a toggle's children must be indented two spaces and start with `- `.

## Decisions Log entry (per project)

```
**YYYY-MM-DD — Short headline of what happened**

Summary: What was decided or done, and why. Two to five sentences.

Open: What's still unresolved or waiting on the user. Leave this line out if nothing is open.

**Prompt 1 (User):**

> The user's first prompt, verbatim

+ Claude's response
  - What Claude answered or did, complete in substance
  - Files, code, or documents produced: name them and say where they live

**Prompt 2 (User):**

> The next prompt, verbatim

+ Claude's response
  - ...
```

Replace "User" with the user's first name if Start Here gives one.

In **summary** mode, stop after the Open line.

## Activity Log entry (whole space)

```
**YYYY-MM-DD — Project: short headline**

One or two sentences. See *Folder → Project — Decisions Log* for detail.

> Prompt 1: the prompt, verbatim

+ Claude's response
  - One or two bullets
```

In **summary** mode, stop after the pointer sentence.

## Always-log preference line

The line the user pastes into Settings > Profile so logging happens in every chat:

```
Always, in every chat: when a reply gives me something worth finding later (ideas, options, research, a plan, a decision, or finished work), use the Craft Logbook for Claude logbook skill to log it to my Craft logbook at the end of that same reply, even if I haven't decided anything yet, and tell me in one line.
```

## Start Here page

Create it with these sections, in this order. Section numbers help another AI find its way.

```
<callout>Read this page first. It maps this Craft space: who the user is, how they work, every project and its status, and which document holds the detail. It is a map, not a copy. Last updated YYYY-MM-DD.</callout>

## 1. How to find anything

1. Find the project in the table in section 4. It gives the status and the one doc to read first.
2. Read that doc.
3. For history or the latest change, read the bottom of the project's Decisions Log. Logs are dated, newest at the bottom, and are the source of truth when docs disagree.

For a timeline across all projects, read the Activity Log.

## 2. About me

(Name, what they do, what they're building. Two or three sentences, in the user's words.)

## 3. How I work with AI

(Preferences the user states: tone, format, what to avoid. Leave a placeholder line if they haven't said.)

## 4. Projects

| Project | Status | What it is | Last activity | Read first | Craft folder |
| --- | --- | --- | --- | --- | --- |

## 5. Logbook settings

- Logging mode: full
- Always-log preference: not yet (or added YYYY-MM-DD)
- Active projects folder: Current Projects
- Logbook folder: (name and ID; default name Claude Logbook)
- Activity Log: (ID)

+ Document IDs (for AI tools reading Craft by ID)
  - Start Here: (ID)
  - Activity Log: (ID)
```

Status values: Active, Paused, On hold, Idea, Done, Cold case, Dropped.

## Project Overview (new projects)

```
<callout>Current state as of YYYY-MM-DD.</callout>

**What it is:** One or two sentences.

**Where it stands:** Current status and the next step.

**Where things live:** Files, repos, sites, other tools.

**Open questions:** Anything waiting on the user.
```

When the state changes, rewrite the callout date and the sections under it. If the old text is worth keeping, move it below a divider (`***`) as history instead of deleting it.
