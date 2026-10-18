# Craft Logbook for Claude

Craft Logbook for Claude keeps a record of your work with Claude inside your own Craft space, so you never start a new chat by re-explaining your projects.

It builds three things and keeps them current:

- **Start Here**: one page that maps your space. Who you are, how you like to work, every project with its status, and the one doc to read first. Point any AI at it, Claude or otherwise, and it can find its way around.
- **A Decisions Log for each project**: dated entries with what was decided, what's still open, and, by default, your prompts and Claude's responses.
- **An Activity Log**: one short entry per session across every project, each pointing to the detail.

I built it because I'm bad at taking notes and worse at reading them. Claude does the writing now.

## What you need

- A Claude plan that supports plugins and custom connectors (Pro, Max, Team or Enterprise)
- A Craft account. Any plan works.

## Install

**From the Claude directory:** open Customize > Plugins > Discover in Claude, search for Craft Logbook for Claude, and select Add.

**From GitHub:** open Customize > Plugins > Add > Add marketplace in Claude and enter `Doctype-Noob/craft-logbook-for-claude`. Then add Craft Logbook for Claude from the list.

**In Claude Code:**

```
/plugin install laronge-llc-logbook --marketplace Doctype-Noob/craft-logbook-for-claude
```

Then connect Craft: open the plugin's Connectors tab, select Connect, pick the Craft space you want to use, and approve. If you already have the Craft connector, it uses the same one.

## Use it

1. Run **setup** once. In chat, type `/` and pick the logbook setup command, or just say "set up my logbook". It creates a Claude Logbook folder with Start Here and an Activity Log, asks three quick questions, and offers to add the projects you already have in Craft.
2. Paste the always-log line setup gives you into Settings > Profile, in your preferences. Do this one. Without it, Claude only logs chats that look like they're about Craft. With it, every chat is covered.
3. Work normally. When a conversation produces ideas, research, a decision or finished work, Claude logs it and tells you in one line.
4. Want it logged right now? Run **log-session** (`/laronge-llc-logbook:log-session` in Claude Code and Cowork).

Two logging modes, set during setup and changeable any time in Start Here:

- **full** (default): every entry includes your prompts word for word and Claude's responses in collapsed toggles
- **summary**: headline, summary and open items only

One naming note: Craft has its own Logbook, where completed tasks go. This plugin doesn't touch it. When you say "my logbook" to Claude, it means Start Here and your logs.

## What it won't do

- **Delete anything.** Claude lists things that should go and you delete them.
- **Log on a timer in chat.** In claude.ai chat, Claude logs because the plugin's skill and your always-log preference tell it to, not because a background process fires. It's reliable, not guaranteed. If a reply that mattered doesn't end with a log line, run log-session. In Claude Code and Cowork, a startup hook also reminds Claude the logbook exists.
- **Rewrite history.** Entries are appended. Older summaries are kept below the current one.

## Data

Everything stays between Claude and your own Craft space. The plugin connects to Craft's official MCP server at `https://mcp.craft.do/my/mcp`, using your own Craft sign-in, and only reads and writes documents in the space you approve. Log entries can include your prompts and Claude's responses, so pick summary mode if you'd rather not keep them. Claude replaces passwords, API keys and card numbers with [redacted] before writing.

The plugin itself stores nothing and sends nothing anywhere else. The only script, `hooks/session-start.sh`, prints a one-paragraph reminder at the start of a Claude Code or Cowork session and does nothing else.

## Files

- `skills/logbook/SKILL.md`: when and how Claude logs
- `skills/logbook/references/formats.md`: the exact entry and page formats
- `commands/setup.md` and `commands/log-session.md`: the two commands
- `hooks/`: the session-start reminder (Claude Code and Cowork only)
- `.mcp.json`: the Craft connector

## About

Built by Josh Laronge, a photographer who builds small tools with Claude. More at [laronge.com](https://laronge.com).

Not affiliated with or endorsed by Craft Docs Limited or Anthropic. Craft is a trademark of Craft Docs Limited.

## License

MIT. See LICENSE.
