---
description: Routine maintenance for the knowledge system
---

# Maintenance Workflow

> Keep your AI knowledge base healthy and accurate.

## When to Run

- ✅ Weekly routine maintenance
- ✅ After adding many new entries
- ✅ Before sharing project with team
- ✅ After major updates

## Steps

### 1. Validate Index

```bash
python .agent/scripts/validate-index.py --report
```

If errors found:
```bash
python .agent/scripts/validate-index.py --fix
```

### 2. Create Backup

```bash
python .agent/scripts/backup-memory.py
```

### 3. Update Environment

```bash
python .agent/scripts/detect-environment.py
```

### 4. Test Search

```bash
python .agent/scripts/search-knowledge.py "test" --limit 3
```

### 5. Review Gotchas

```bash
ls .agent/memory/entries/gotchas/
```

Check:
- [ ] All entries still relevant?
- [ ] Any duplicates?
- [ ] Any outdated information?

## Checklist

```
[ ] validate-index.py --report   → No errors
[ ] backup-memory.py             → Backup created
[ ] detect-environment.py        → Environment updated
[ ] search-knowledge.py          → Search works
[ ] Review gotchas               → All relevant
```

## Troubleshooting

| Problem | Solution |
|---------|----------|
| Index errors | `python .agent/scripts/validate-index.py --fix` |
| Search not finding entries | Check `index.json` format |
| Slow performance | Archive old entries to `_archive/` |

---

*Workflow: maintenance*
