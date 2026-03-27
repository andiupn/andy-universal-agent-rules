# Save Knowledge from Chat

Scan this chat session and save important learnings to the knowledge base.

## What to Look For

- ❌ **Errors** that occurred and their solutions
- ✅ **Solutions** that worked
- 💡 **Patterns** or techniques that were effective
- 🏗️ **Decisions** about architecture or technology
- ⚠️ **Gotchas** to avoid in the future

## Categories

| Category | Use When |
|----------|----------|
| `gotchas` | Production bugs, errors to avoid |
| `patterns` | Working code patterns |
| `decisions` | Architecture/tech choices |
| `context` | Project information |

## How to Save

```bash
# Save a gotcha
python .agent/scripts/save-knowledge.py --category gotchas "CRITICAL: describe the issue and solution"

# Save a pattern
python .agent/scripts/save-knowledge.py --category patterns "PATTERN: describe the pattern"

# Save a decision
python .agent/scripts/save-knowledge.py --category decisions "DECISION: what was decided and why"
```

## Expected Output

Report what was saved:

```
✅ Saved 3 learnings from this chat:
   - gotchas/issue-name.md
   - patterns/pattern-name.md
   - decisions/decision-name.md
```

---

*Use: Type `/save-from-chat` in Cursor Chat*
