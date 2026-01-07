---
description: Quick search the knowledge base
---

# Search Workflow

> Find relevant knowledge before starting work.

## When to Use

- ✅ Before fixing a tricky bug
- ✅ Before implementing a feature you've done before
- ✅ When you encounter an error
- ✅ To check if a pattern exists

## Quick Search

```bash
# Basic search
python .agent/scripts/search-knowledge.py "keyword"

# Search with limit
python .agent/scripts/search-knowledge.py "mysql" --limit 5

# Search specific category
python .agent/scripts/search-knowledge.py "error" --category gotchas

# Search by tags
python .agent/scripts/search-knowledge.py "database" --tags critical
```

## Understanding Results

```
🔍 Found 3 result(s) for: 'mysql'

1. [GOTCHAS] MySQL localhost vs 127.0.0.1 on Windows
   Score: 23 | Tags: mysql, windows, connection
   File: .agent/memory/entries/gotchas/mysql-localhost-windows.md
   Preview: MySQL connection fails on Windows when using localhost...
```

- **Score** - Higher = more relevant
- **Tags** - Categories for quick filtering
- **Preview** - First few lines of content

## Best Practices

1. **Search before solving** - The answer might already exist
2. **Use specific keywords** - "mysql connection windows" > "database"
3. **Check gotchas first** - Avoid known bugs
4. **Read the full entry** - Previews are truncated

---

*Workflow: search*
