---
inclusion: always
---

# Product Overview & Features

## Project Purpose
**test.all.editor** - AI Agent Rules Testing & Documentation System

### Core Functions
- **Knowledge base** with 189 entries (gotchas, patterns, decisions, context)
- **Multi-editor compatibility** (GitHub Copilot, Cursor, Kiro, Antigravity)
- **Automation scripts** for knowledge management
- **Testing environment** for database, server, and Python components

## Key Features

### 1. Knowledge Management System
- **Search:** `python scripts/search-knowledge.py "keyword"`
- **Save:** `python scripts/save-knowledge.py --category gotchas "message"`
- **Validate:** `python scripts/validate-index.py --fix`
- **Backup:** `python scripts/backup-memory.py`

### 2. Performance Benchmarks
| Script | Target | Current |
|--------|--------|---------|
| Knowledge Search | <200ms | ✅ ~165ms |
| Index Validation | <200ms | ✅ ~150ms |
| Stats Sync | <100ms | ✅ ~80ms |

### 3. Critical Gotchas Database
- **Oracle transaction commit bug** (data loss prevention)
- **MySQL Windows connection** (127.0.0.1 vs localhost)
- **Python PowerShell multiline** (execution hangs)
- **Kafka consumer scaling** (message duplication)

### 4. MCP Integration
- **18 servers configured** (12 active)
- **Security hardening** with auto-approve policies
- **Mixed package managers** (uvx/npx)

## Workflow Patterns
1. **Repository analysis** → Use context-gatherer subagent
2. **Database operations** → Check gotchas first, use PHP libraries
3. **Knowledge management** → Search before creating, save learnings
4. **Testing** → Follow strict file organization rules