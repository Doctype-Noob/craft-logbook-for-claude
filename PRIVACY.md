# Privacy Policy: Craft Logbook for Claude

Last updated: October 18, 2026

Craft Logbook for Claude is a free plugin published by Laronge Intellectual Property Development, LLC (Josh Laronge). Short version: I don't collect anything. The plugin has no server of its own, no analytics and no account.

## What the plugin does with your data

- **It writes to your own Craft space.** When Claude logs a chat, it writes your prompts and its responses into documents in the Craft space you approved when you connected Craft. That's the point of the plugin. In summary mode, it writes only a short account of each chat, without your prompts or Claude's responses.
- **It talks only to Craft.** The plugin connects to Craft's official MCP server at `https://mcp.craft.do/my/mcp`, using your own Craft sign-in. It sends nothing anywhere else.
- **It leaves out secrets.** Claude is told to replace passwords, API keys and card numbers with [redacted] before writing.
- **It stores nothing itself.** The only script, `hooks/session-start.sh`, prints a one-paragraph reminder at the start of a Claude Code or Cowork session. It reads nothing, sends nothing and writes nothing.

## What I can see

Nothing. I never receive your prompts, responses, Craft documents or sign-in. Anthropic's directory may show me install and usage counts for the plugin, without your content.

## Other companies' policies

Your conversations are handled by Anthropic under [Anthropic's privacy policy](https://www.anthropic.com/legal/privacy). Your Craft documents are stored by Craft under [Craft's privacy policy](https://www.craft.do/privacy). This plugin doesn't change either.

## Keeping or deleting your logs

The logs are ordinary documents in your Craft space. You can edit or delete them in Craft at any time. Uninstalling the plugin stops new logging and leaves existing documents where they are.

## Children

The plugin isn't intended for anyone under 18.

## Changes

If this policy changes, the new version goes in this file with a new date. The file's history on GitHub shows every earlier version.

## Contact

Questions: josh@laronge.com
