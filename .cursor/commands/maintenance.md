# Maintenance Workflow

Run routine maintenance on the AI knowledge base system.

## What This Does

1. Validates knowledge base index integrity
2. Creates backup of current knowledge
3. Updates environment detection
4. Tests search functionality
5. Reviews gotchas for relevance

## Commands to Run

```bash
# 1. Validate index
python .agent/scripts/validate-index.py --report

# If errors found:
python .agent/scripts/validate-index.py --fix

# 2. Create backup
python .agent/scripts/backup-memory.py

# 3. Update environment
python .agent/scripts/detect-environment.py

# 4. Test search
python .agent/scripts/search-knowledge.py "test" --limit 3
```

## Checklist

- [ ] Index validated (no errors)
- [ ] Backup created
- [ ] Environment updated
- [ ] Search working
- [ ] Gotchas reviewed

---

*Use: Type `/maintenance` in Cursor Chat*
