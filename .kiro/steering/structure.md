---
inclusion: always
---

# Project Structure & File Organization

## Strict File Placement Rules

### ✅ Required Locations
| File Type | Location | Example |
|-----------|----------|---------|
| **Python Tests** | `test/python/` | `test_feature.py` |
| **PHP Database Tests** | `test/database/<db>/` | `test-oracle-final.php` |
| **PHP Server Tests** | `test/server/` | `redis-test.php` |
| **Utility Scripts** | `scripts/` | `save-knowledge.py` |
| **Temporary Files** | `test/temp/` | Debug files (not committed) |

### ❌ Forbidden Actions
- **NO files in ROOT directory** (except docs)
- **NO temp files outside** `test/temp/`
- **NO mixing test types** in same location

## Knowledge Base Structure
```
.agent/memory/entries/
├── gotchas/     ← 45 critical bugs & fixes
├── patterns/    ← 91 proven code patterns  
├── decisions/   ← 20 architectural decisions
└── context/     ← 32 project guides
```

## Testing Structure
```
test/
├── database/    ← DB tests (MySQL, Oracle, benchmarks)
├── server/      ← Server tests (PHP, Redis, HTTP)
├── python/      ← Python tests (pytest)
└── temp/        ← Temporary files (gitignored)
```

## Coding Conventions
- **PHP:** PSR-12, type hints, docblocks
- **Python:** PEP 8, type hints, f-strings
- **JavaScript:** ESLint, const over let, async/await
- **Line length:** 120 characters max
- **Indentation:** 4 spaces (no tabs)