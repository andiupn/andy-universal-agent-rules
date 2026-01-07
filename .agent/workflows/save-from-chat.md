---
description: Save knowledge from the current chat session
---

# Save Knowledge from Chat

> For AI Agent: Use this workflow at the end of each productive session to save learnings.

## When to Use

- ✅ You solved a tricky bug
- ✅ You discovered a working pattern
- ✅ You made an architectural decision
- ✅ You encountered an error with a solution

## Steps

### 1. Scan the Chat Session

Look for:
- ❌ **Errors** that occurred and their solutions
- ✅ **Solutions** that worked
- 💡 **Patterns** or techniques that were effective
- 🏗️ **Decisions** about architecture or technology choices
- ⚠️ **Gotchas** - things to avoid in the future

### 2. Categorize Each Learning

| Category | Use When | Example |
|----------|----------|---------|
| `gotchas` | Production bugs, tricky errors | "Oracle needs explicit COMMIT" |
| `patterns` | Working code patterns | "Use chunking for large imports" |
| `decisions` | Architecture choices | "Chose Redis for caching" |
| `context` | Project information | "This project uses PHP 8.3 + MySQL" |

### 3. Save Using Script

```bash
# Save a gotcha
python .agent/scripts/save-knowledge.py --category gotchas "CRITICAL: MySQL on Windows - use 127.0.0.1 not localhost"

# Save a pattern
python .agent/scripts/save-knowledge.py --category patterns "Excel import chunking: process 1000 rows at a time"

# Save a decision
python .agent/scripts/save-knowledge.py --category decisions "Using Redis for session cache due to 10x speed improvement"
```

### 4. Report Summary

After saving, report to user:

```
✅ Saved 3 learnings from this chat:
   - gotchas/mysql-localhost-windows.md
   - patterns/excel-chunking.md
   - decisions/redis-session-cache.md
```

## Tips

- **Include code examples** when relevant
- **Be specific** - "MySQL connection fails" is less useful than "MySQL fails when using localhost on Windows"
- **Tag appropriately** - makes searching easier later
- **Don't skip errors** - every bug is a learning opportunity

---

*Workflow: save-from-chat*
