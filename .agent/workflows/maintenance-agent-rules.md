---
description: maintenance-agent-rules
---

# 🔧 Workflow: Maintenance Agent Rules System

> Workflow untuk menjaga agent rules system tetap optimal.

---

## 📋 Kapan Dijalankan

Jalankan workflow ini:
- ✅ Setelah menambah banyak knowledge entries baru
- ✅ Sebelum sharing project ke tim lain
- ✅ Setiap 1-2 minggu untuk maintenance rutin
- ✅ Setelah update besar pada scripts

---

## 🎯 Step-by-Step Maintenance

### 1. **Validate Index Integrity**

```bash
python .agent/scripts/validate-index.py --report
```

**Expected:** No orphaned entries, no unindexed files.

**Jika ada error:** Jalankan dengan `--fix`:
```bash
python .agent/scripts/validate-index.py --fix
```

---

### 2. **Sync Statistics**

```bash
python .agent/scripts/sync-agents-stats.py
```

**Expected:** AGENTS.md up-to-date dengan actual counts.

---

### 3. **Update Environment**

```bash
python .agent/scripts/detect-environment.py
```

**Expected:** `environment.json` ter-update dengan info terbaru.

---

### 4. **Create Backup**

```bash
python .agent/scripts/backup-memory.py
```

**Expected:** New backup file di `_backups/` folder.

---

### 5. **Test Search Functionality**

```bash
# Test basic search
python .agent/scripts/search-knowledge.py oracle --limit 3

# Test category filter
python .agent/scripts/search-knowledge.py mysql --category gotchas

# Test tags filter
python .agent/scripts/search-knowledge.py --tags critical database
```

**Expected:** Results ditemukan dengan score relevance.

---

### 6. **Review Gotchas**

Buka dan review semua gotchas:

```bash
ls .agent/memory/entries/gotchas/
```

**Check:**
- [ ] Semua gotchas masih relevan?
- [ ] Ada yang perlu di-update?
- [ ] Ada yang bisa di-archive?

---

### 7. **Check Multi-Editor Files**

Pastikan semua editor support files tersedia:

```bash
ls .github/copilot-instructions.md
ls .cursor/rules.md
ls .kiro/rules.md
```

**Expected:** Semua file ada dan isinya sinkron dengan AGENTS.md.

---

### 8. **Performance Benchmark (Optional)**

```bash
# Gunakan benchmark script (lebih akurat)
python .agent/scripts/benchmark-scripts.py
```

**Expected:** Semua scripts < 500ms (biasanya 90-215ms).

---

### 9. **Integrate New Knowledge to AGENTS.md** ⭐ NEW

Cek apakah ada knowledge baru yang perlu di-integrate ke AGENTS.md:

```bash
# Cek knowledge terbaru (list files by date)
Get-ChildItem .agent/memory/entries -Recurse -File | Sort-Object LastWriteTime -Descending | Select-Object -First 10 Name, LastWriteTime

# Atau search dengan query spesifik
python .agent/scripts/search-knowledge.py mcp --limit 5

# Cari yang belum di-integrate
Get-ChildItem .agent/memory/entries/gotchas/
Get-ChildItem .agent/memory/entries/patterns/
Get-ChildItem .agent/memory/entries/decisions/
```

**Review dan integrate jika ada:**
- [ ] Gotchas baru → tambah ke section "Critical Gotchas"
- [ ] MCP patterns → tambah ke section "MCP Servers"
- [ ] Database knowledge → tambah ke section "Database Performance"
- [ ] Decisions penting → buat section baru jika perlu

**Key files to check:**
```
entries/gotchas/*.md           → AGENTS.md Critical Gotchas
entries/patterns/mcp-*.md      → AGENTS.md MCP Servers
entries/decisions/*.md         → AGENTS.md relevant sections
entries/context/database-*.md  → AGENTS.md Database Performance
```

---

### 10. **Update AGENTS.md Manual Sections**

Pastikan sections di AGENTS.md masih akurat:

```bash
# Review AGENTS.md
head -100 AGENTS.md
```

**Check:**
- [ ] MCP Servers section up-to-date?
- [ ] Database Performance benchmarks current?
- [ ] Connection info masih valid?
- [ ] Project structure accurate?

---

### 11. **Update Documentation Files** ⭐ NEW

Sync statistik di documentation files dengan actual counts:

```bash
# Cek actual counts dari index.json
python -c "import json; d=json.load(open('.agent/memory/index.json')); print(f\"Total: {d['totalEntries']}\"); [print(f\"  {k}: {v['count']}\") for k,v in d['categories'].items()]"
```

**Files yang perlu di-update secara MANUAL:**

| File | Section yang perlu di-update |
|------|------------------------------|
| `.agent/README.md` | Struktur folder (line 9-18), Tabel kategori (line 63-69) |
| `.agent/context/project-context.json` | `lastUpdated`, `lastSession` section |
| `.agent/workflows/maintenance-agent-rules.md` | Footer stats (last lines) |

**Checklist:**
- [ ] `.agent/README.md` entries count = actual?
- [ ] `project-context.json` lastSession date = hari ini?
- [ ] Workflow footer stats = actual counts?

> **Note:** `sync-agents-stats.py` hanya update AGENTS.md, documentation files lain perlu manual update.

---

### 12. **AGENTS.md Content Audit** ⭐ NEW (2026-01-04)

Cek konsistensi dan kualitas content AGENTS.md:

```bash
# Cek duplicate content
grep -n "Get user info" AGENTS.md | head -5

# Cek broken characters
grep -n "�" AGENTS.md

# Cek outdated dates
grep -n "benchmark 20" AGENTS.md
```

**Checklist:**
- [ ] Tidak ada duplicate code blocks?
- [ ] Tidak ada broken emoji/characters?
- [ ] Semua dates masih relevan?
- [ ] Header stats (line 4) sudah benar?

---

### 13. **Scripts Folder Audit** ⭐ NEW (2026-01-04)

Cek apakah semua scripts masih relevan:

```bash
# List scripts
ls scripts/*.py scripts/*.ps1

# Check for legacy/unused scripts
# Move to _archive/scripts_legacy/ jika tidak dipakai
```

**Checklist:**
- [ ] Semua scripts masih digunakan?
- [ ] Tidak ada hardcoded stats di scripts?
- [ ] README.md di scripts/ masih akurat?

---

### 14. **SSOT Compliance Check** ⭐ NEW (2026-01-04)

Pastikan stats hanya ada di AGENTS.md line 4 (Single Source of Truth):

```bash
# Search for hardcoded entry counts di seluruh project
grep -r "entries" README.md PROJECT_STRUCTURE.md | grep -E "[0-9]+ entries"

# Harus return empty atau hanya "See AGENTS.md"
```

**SSOT Rules:**
- ✅ Stats di AGENTS.md line 4 (auto-synced via script)
- ✅ Other files reference ke "See AGENTS.md"
- ❌ TIDAK boleh ada hardcoded stats di README.md, PROJECT_STRUCTURE.md

---

## 📊 Maintenance Checklist

```
[ ] Step 1: validate-index.py --report    ✅ No errors
[ ] Step 2: sync-agents-stats.py          ✅ Stats synced
[ ] Step 3: detect-environment.py         ✅ Env updated
[ ] Step 4: backup-memory.py              ✅ Backup created
[ ] Step 5: Test search functionality     ✅ Results found
[ ] Step 6: Review gotchas                ✅ All relevant
[ ] Step 7: Check multi-editor files      ✅ All present
[ ] Step 8: Performance benchmark         ✅ All < 500ms
[ ] Step 9: Integrate new knowledge       ✅ AGENTS.md updated
[ ] Step 10: Update manual sections       ✅ All accurate
[ ] Step 11: Update documentation files   ✅ All synced
[ ] Step 12: AGENTS.md content audit      ✅ No issues
[ ] Step 13: Scripts folder audit         ✅ All relevant
[ ] Step 14: SSOT compliance check        ✅ No hardcoded stats
```

---

## 🚨 Troubleshooting

### Index Error
```bash
python .agent/scripts/validate-index.py --fix
```

### Stats Out of Sync
```bash
python .agent/scripts/sync-agents-stats.py
```

### Missing Editor File
```bash
# Copy dari AGENTS.md summary
cat AGENTS.md | head -50
```

### Slow Performance
- Check jumlah entries (target: < 100)
- Arsipkan old entries ke `_archive/`
- Clear unused backups

---

## 💡 Best Practices

1. **Backup before major changes** - Selalu backup sebelum edit besar
2. **Validate after adding entries** - Run validate setelah batch add
3. **Keep gotchas updated** - Review dan update gotchas berkala
4. **Monitor performance** - Benchmark jika terasa lambat
5. **Sync stats regularly** - Pastikan AGENTS.md akurat

---

## 📅 Recommended Schedule

| Frequency | Tasks |
|-----------|-------|
| Daily | Save new learnings |
| Weekly | Validate + Sync stats |
| Monthly | Full maintenance + Backup |
| Quarterly | Review & archive old entries |

---

*Created: 2025-12-22*  
*Last Updated: 2026-01-04*  
*Stats: See AGENTS.md (auto-synced)*
