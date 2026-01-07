# Knowledge Management Scripts

> Python scripts untuk mengelola knowledge base AI Agent

## 📁 Scripts Overview

| Script                   | Purpose                  | Usage                                                       |
|--------------------------|--------------------------|-------------------------------------------------------------|
| `save-knowledge.py`      | Simpan knowledge baru    | `python scripts/save-knowledge.py --category gotchas "message"` |
| `search-knowledge.py`    | Cari di knowledge base   | `python scripts/search-knowledge.py "keyword"`              |
| `validate-index.py`      | Validasi index integrity | `python scripts/validate-index.py --fix`                    |
| `sync-agents-stats.py`   | Sync stats ke AGENTS.md  | `python scripts/sync-agents-stats.py`                       |
| `backup-memory.py`       | Backup knowledge base    | `python scripts/backup-memory.py`                           |
| `detect-environment.py`  | Deteksi environment      | `python scripts/detect-environment.py`                      |
| `benchmark-scripts.py`   | Benchmark performance    | `python scripts/benchmark-scripts.py`                       |
| `sync-editor-rules.ps1`  | Sync multi-editor rules  | `powershell scripts/sync-editor-rules.ps1`                  |

---

## 🔧 Detailed Usage

### 1. Save Knowledge

```bash
# Save gotcha (bug/fix)
python scripts/save-knowledge.py --category gotchas "Oracle commit bug - always use explicit COMMIT"

# Save pattern (code yang works)
python scripts/save-knowledge.py --category patterns "PM2 ecosystem config pattern"

# Save decision (keputusan arsitektur)
python scripts/save-knowledge.py --category decisions "Why we use PDO over CLI"

# Save context (project info)
python scripts/save-knowledge.py --category context "Project X tech stack"
```

### 2. Search Knowledge

```bash
# Basic search
python scripts/search-knowledge.py "oracle commit"

# Filter by category
python scripts/search-knowledge.py mysql --category gotchas

# Filter by tags
python scripts/search-knowledge.py --tags critical database

# Limit results
python scripts/search-knowledge.py kafka --limit 5
```

### 3. Validate Index

```bash
# Report only (no changes)
python scripts/validate-index.py --report

# Auto-fix issues
python scripts/validate-index.py --fix
```

**Fixes:**
- Removes orphaned index entries
- Adds unindexed files to index

### 4. Sync Statistics

```bash
python scripts/sync-agents-stats.py
```

**Updates in AGENTS.md:**
- Total entries count
- Category counts (gotchas, patterns, decisions, context)
- Last updated date

### 5. Backup Memory

```bash
# Create backup
python scripts/backup-memory.py

# List backups
python scripts/backup-memory.py --list

# Restore from backup
python scripts/backup-memory.py --restore memory_backup_20251230.zip
```

**Backup location:** `_backups/memory_backup_YYYYMMDD_HHMMSS.zip`

### 6. Detect Environment

```bash
python scripts/detect-environment.py
```

**Detects:**
- OS, User, Project path
- Tech stack (PHP, Node, Python)
- Database connections

**Output:** `.agent/context/environment.json`

### 7. Benchmark Scripts

```bash
python scripts/benchmark-scripts.py
```

**Tests:**
- Validate Index (~150ms)
- Search Knowledge (~165ms)
- Sync Statistics (~80ms)
- Detect Environment (~220ms)

**Target:** All scripts < 500ms

### 8. Sync Editor Rules

```powershell
powershell scripts/sync-editor-rules.ps1
```

**Syncs AGENTS.md summary to:**
- `.github/copilot-instructions.md`
- `.cursor/rules.md`
- `.kiro/rules.md`

---

## 📊 Performance

| Script                   | Avg Time | Status   |
|--------------------------|----------|----------|
| validate-index.py        | ~150ms   | ✅ PASS |
| search-knowledge.py      | ~165ms   | ✅ PASS |
| sync-agents-stats.py     | ~80ms    | ✅ PASS |
| detect-environment.py    | ~220ms   | ✅ PASS |
| backup-memory.py         | ~500ms   | ✅ PASS |

---

## 📁 Output Files

| Script                   | Output Location                         |
|--------------------------|-----------------------------------------|
| save-knowledge.py        | `.agent/memory/entries/<category>/`     |
| validate-index.py        | `.agent/memory/index.json`              |
| sync-agents-stats.py     | `AGENTS.md`                             |
| backup-memory.py         | `_backups/`                             |
| detect-environment.py    | `.agent/context/environment.json`       |
| benchmark-scripts.py     | `.agent/context/benchmark-results.txt`  |

---

## ⚠️ Requirements

- Python 3.10+
- No external dependencies (uses stdlib only)

---

## 🔄 Maintenance Workflow

```bash
# 1. Validate index
python scripts/validate-index.py --fix

# 2. Sync stats
python scripts/sync-agents-stats.py

# 3. Create backup
python scripts/backup-memory.py

# 4. Run benchmarks
python scripts/benchmark-scripts.py
```

Atau gunakan workflow: `/maintenance-agent-rules`

---

*Last Updated: 2026-01-04*
