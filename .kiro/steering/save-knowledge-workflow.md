# Save Knowledge from Chat Sessions

> **Steering File** - Guides AI agent on saving learnings from chat sessions

## Purpose

Extract and save important learnings from the current chat session to prevent repeating mistakes and preserve effective solutions.

## When to Use

- ✅ After solving a tricky bug
- ✅ When discovering a working pattern
- ✅ After making an architectural decision
- ✅ When encountering an error with a solution

## What to Look For in Chat

Scan the entire chat session for:

- ❌ **Errors** that occurred and their solutions
- ✅ **Solutions** that worked
- 💡 **Patterns** or techniques that were effective
- 🏗️ **Decisions** about architecture or technology choices
- ⚠️ **Gotchas** - things to avoid in the future
- 📚 **Context** - project-specific information

## Categories

| Category | Use When | Example |
|----------|----------|---------|
| `gotchas` | Production bugs, tricky errors | "Oracle needs explicit COMMIT" |
| `patterns` | Working code patterns | "Use chunking for large imports" |
| `decisions` | Architecture choices | "Chose Redis for caching due to speed" |
| `context` | Project information | "This project uses PHP 8.3 + MySQL" |
| `errors` | Error messages + solutions | "EPERM error - file was hidden" |

## How to Save Knowledge

Use the save-knowledge script:

```bash
# Save a gotcha
python .agent/scripts/save-knowledge.py --category gotchas "CRITICAL: [describe issue and solution]"

# Save a pattern
python .agent/scripts/save-knowledge.py --category patterns "PATTERN: [describe pattern and usage]"

# Save a decision
python .agent/scripts/save-knowledge.py --category decisions "DECISION: [what was decided and why]"

# Save context
python .agent/scripts/save-knowledge.py --category context "CONTEXT: [project information]"
```

## Expected Output Format

After saving, report to user:

```
✅ Saved 3 learnings from this chat:
   - gotchas/mysql-localhost-windows.md
   - patterns/excel-chunking.md
   - decisions/redis-session-cache.md
```

## Tips for Effective Saving

1. **Include code examples** when relevant
2. **Be specific** - "MySQL connection fails" is less useful than "MySQL fails when using localhost on Windows"
3. **Tag appropriately** - makes searching easier later
4. **Don't skip errors** - every bug is a learning opportunity
5. **Link related entries** - help connect the dots
6. **Mark severity** - use CRITICAL for production-breaking issues

## Entry Format Template

```markdown
# [Clear, Descriptive Title]

**Category:** [gotchas/patterns/decisions/context]  
**Severity:** [🚨 CRITICAL / ⚠️ MEDIUM / ℹ️ INFO]  
**Tags:** [tag1, tag2, tag3]  
**Date:** [YYYY-MM-DD]

---

## Problem / Context

[Describe the issue or context]

---

## Solution / Pattern

[Describe the solution or pattern]

```code
// Include code example if relevant
```

---

## When This Applies

- ✅ Condition 1
- ✅ Condition 2
- ❌ Don't use when: ...

---

*Saved from chat session on [date]*
```

## Checklist

Before finishing:

- [ ] Scan entire chat from start to finish
- [ ] Identify at least 3-5 important learnings
- [ ] Categorize each learning correctly
- [ ] Save using script with proper category
- [ ] Verify files were created
- [ ] Report summary to user

---

*Kiro Steering File: Save Knowledge Workflow*
