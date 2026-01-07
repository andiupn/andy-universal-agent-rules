# Maintenance Workflow for AI Knowledge System

> **Steering File** - Auto-included when working with `.agent/` folder

## Purpose

Keep the AI knowledge base healthy, accurate, and performant.

## When to Run

- ✅ After adding multiple knowledge entries
- ✅ Weekly routine maintenance
- ✅ Before sharing project with team
- ✅ After major updates

## Maintenance Steps

### 1. Validate Index Integrity

```bash
python .agent/scripts/validate-index.py --report
```

Expected: No orphaned entries, no unindexed files.

If errors found:
```bash
python .agent/scripts/validate-index.py --fix
```

### 2. Create Backup

```bash
python .agent/scripts/backup-memory.py
```

Creates timestamped backup in `_backups/` folder.

### 3. Update Environment Detection

```bash
python .agent/scripts/detect-environment.py
```

Updates `environment.json` with current OS, tools, and tech stack.

### 4. Test Search Functionality

```bash
python .agent/scripts/search-knowledge.py "test-query" --limit 3
```

Verify search is working and returning relevant results.

### 5. Review Gotchas

```bash
ls .agent/memory/entries/gotchas/
```

Check:
- [ ] All gotchas still relevant?
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
| Index errors | Run `validate-index.py --fix` |
| Search not finding entries | Check `index.json` format |
| Slow performance | Archive old entries to `_archive/` |

---

*Kiro Steering File: Maintenance Workflow*
