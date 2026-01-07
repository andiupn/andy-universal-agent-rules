# GitHub Copilot Instructions

> Complete guidelines available in [AGENTS.md](../AGENTS.md) at project root.

---

## Quick Reference

### Required Reading
1. **AGENTS.md** - Main entry point dengan semua rules
2. **.agent/memory/entries/gotchas/** - Critical bugs yang harus dihindari
3. **.agent/context/project-context.json** - Project configuration

### Critical Gotchas
- ⚠️ Oracle: HARUS explicit COMMIT untuk transactions
- ⚠️ MySQL Windows: Gunakan `127.0.0.1`, BUKAN `localhost`
- ⚠️ PHP 7.2: Tidak support arrow functions (`fn`)

### Safety Rules
- ❌ JANGAN `git reset --hard` tanpa backup
- ❌ JANGAN akses file `.env`, `*.pem`, `*.key`
- ✅ SELALU konfirmasi sebelum delete operations

### Memory System
Knowledge tersimpan di `.agent/memory/entries/`:
- `gotchas/` - Production bugs & fixes
- `patterns/` - Code patterns yang works
- `decisions/` - Architectural decisions
- `context/` - Project guides

### Workflows

**Maintenance Routine:**
```bash
# 1. Validate index
python .agent/scripts/validate-index.py --report

# 2. Create backup
python .agent/scripts/backup-memory.py

# 3. Update environment
python .agent/scripts/detect-environment.py

# 4. Test search
python .agent/scripts/search-knowledge.py "test" --limit 3
```

**Save from Chat:**
```bash
# Save gotcha (critical bug/fix)
python .agent/scripts/save-knowledge.py --category gotchas "CRITICAL: [issue + solution]"

# Save pattern (working code pattern)
python .agent/scripts/save-knowledge.py --category patterns "PATTERN: [pattern + usage]"

# Save decision (architecture choice)
python .agent/scripts/save-knowledge.py --category decisions "DECISION: [what + why]"
```

When to save knowledge:
- ✅ After solving a tricky bug
- ✅ After discovering a working pattern
- ✅ After making an architectural decision
- ✅ Before ending a productive session

---

*See [AGENTS.md](../AGENTS.md) for complete documentation*
