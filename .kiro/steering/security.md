---
inclusion: always
---

# Security Guidelines

## Confirmation Required Before
- **Delete operations:** `rm`, `del`, `DROP TABLE`, `TRUNCATE`
- **Git destructive:** `reset --hard`, `clean -fd`, force push
- **Package installs:** `npm install`, `composer require`
- **External API calls:** Production endpoints

## Never Access
```
.env, .env.*, *.env
*.pem, *.key, id_rsa
config/database.php
credentials/*, secrets/*
```

## MCP Auto-Approve Policy
**✅ Safe (Auto-approved):**
- Read operations: `read_file`, `list_tables`, `describe_table`
- Info operations: `get_file_info`, `search_files`
- Git read: `git_status`, `git_log`, `git_diff`

**⛔ Manual approval required:**
- Write operations: `write_file`, `create_directory`
- Database mutations: `query`, `execute_query`
- Network requests: `fetch` (in production)

## GitHub Repository Creation
```bash
# ✅ CORRECT - Private by default (user preference)
gh repo create NAME --private --source=. --push

# ❌ WRONG - Public (only if explicitly requested)
gh repo create NAME --public --source=. --push
```

## Database Security
- Use parameterized queries (PDO prepared statements)
- Never concatenate user input in SQL
- Always validate input before database operations
- Use connection pooling for production