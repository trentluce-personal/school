# OpenCode harness

Run `opencode` from the repo root. The root [`opencode.json`](../opencode.json)
configures GitHub Copilot, disables conversation sharing, and allows all tools
without permission prompts, including access outside the repo. The agent runs
with your user account's permissions, so use this setting only for trusted tasks.
OpenCode loads [`AGENTS.md`](../AGENTS.md) automatically and
loads the root [`README.md`](../README.md) through the config's `instructions`.

## Skills

[`skills/humanizer/SKILL.md`](skills/humanizer/SKILL.md) mirrors
[`../.claude/skills/humanizer/SKILL.md`](../.claude/skills/humanizer/SKILL.md).
Keep both copies identical when updating the skill. OpenCode discovers skills
under `.opencode/skills/` automatically; each skill needs its own directory and
a `SKILL.md` with `name` and `description` in YAML frontmatter.

The Claude harness currently contains only the humanizer skill. If you add
agents or commands, put their OpenCode definitions in `.opencode/agents/` or
`.opencode/commands/` using OpenCode's frontmatter format.

## Check the harness

From the repo root, run:

```sh
opencode debug config
opencode debug skill
```

The skill list should resolve `humanizer` to
`.opencode/skills/humanizer/SKILL.md`. Quit and restart OpenCode after changing
configuration or harness files.
