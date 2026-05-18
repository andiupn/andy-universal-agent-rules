# Session Initialization

> Initialization protocol for AI agents working on this project.
> When an AI agent opens this project, it MUST read the files listed below
> before answering questions or making changes.

---

## 1. Project Context (always)

Read these first to understand the project:

- `.agent/context/project-context.json` — project metadata
- `.agent/context/environment.json` — detected stack, tools, runtime
- `AGENTS.md` — agent instructions, safety rules, quick commands

## 2. Critical Knowledge (mandatory)

These contain hard-won lessons. Skipping them means repeating mistakes:

- `.agent/memory/entries/gotchas/*.md` — all production bugs & fixes
- `.agent/memory/index.json` — index of all knowledge entries
- Top 5 most-referenced patterns from `.agent/memory/entries/patterns/`

## 3. Recent Changes (recommended)

To understand current state:

- Last 10 commits: `git log --oneline -10`
- `.agent/context/last-session.json` (if present) — handoff notes from previous session
- `CHANGELOG.md` — high-level history

## 4. Safety Rules (non-negotiable)

Before any destructive action, re-read the "Safety Rules" section in `AGENTS.md`.
Never read secrets (`.env`, `*.pem`, `*.key`, `credentials/`, `secrets/`).

---

## Quick Reference

```bash
# Search existing knowledge before solving a problem
python .agent/scripts/search-knowledge.py "keyword"

# Save new knowledge at end of session
python .agent/scripts/save-knowledge.py --category gotchas "description"

# Validate the knowledge index
python .agent/scripts/validate-index.py --fix
```

---

After reading the files above, the agent is ready to work without needing
the project re-explained.

*Part of andy-universal-agent-rules — https://github.com/andiupn/andy-universal-agent-rules*
