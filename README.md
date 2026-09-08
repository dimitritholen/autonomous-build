# autonomous-build

A skill that turns a human idea into working software through executable contracts and verification loops. Includes GUI control (Observe-Ground-Act-Assert), a visual-excellence gate, and quality gates for performance, security, accessibility, and maintainability.

Canonical skill content lives in `skills/autonomous-build/`. The other entry points reference it without duplicating it.

## Layout

- `skills/autonomous-build/` — portable skill (`SKILL.md` plus focused modules). Use this for any tool that loads `SKILL.md` files.
- `.claude-plugin/plugin.json` — Claude Code plugin manifest (plugin root is this repo root).
- `.claude-plugin/marketplace.json` — private Claude Code marketplace catalog.
- `gemini-extension.json` + `GEMINI.md` — Gemini CLI extension (extension root is this repo root).
- `.agents/skills/autonomous-build` — symlink to the portable skill for Muse.
- `scripts/check-versions.sh` — version sync check (needs bash plus python3).
- `skills/autonomous-build/examples/` — worked contract-to-ship trace.
- `LICENSE` — all rights reserved, use through the documented entry points.

This repo is public, so the install commands below work for anyone. Contributors pushing changes need an account with access: `gh auth login`.

## Install

### Claude Code (marketplace, recommended)

```bash
/plugin marketplace add dimitritholen/autonomous-build
/plugin install autonomous-build
```

### Claude Code (local checkout)

```bash
/plugin marketplace add /path/to/autonomous-build
/plugin install autonomous-build
```

### Gemini CLI

```bash
gemini extensions install https://github.com/dimitritholen/autonomous-build
```

If URL install fails, link the checkout instead:

```bash
gemini extensions link /path/to/autonomous-build
```

### Any other tool with SKILL.md support

Copy or point the tool at `skills/autonomous-build/`. If a tool does not follow the `.agents/skills` symlink, copy the directory contents instead of the link.

## Versioning

Bump `version` in `.claude-plugin/plugin.json`, `.claude-plugin/marketplace.json`, and `gemini-extension.json` on every release. Claude Code only offers updates when the plugin version changes. Verify sync with `bash scripts/check-versions.sh`.
