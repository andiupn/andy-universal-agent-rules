---
description: cara-simpan-pengetahuan-dari-folder
---

# 🧠 Prompt: Simpan Pengetahuan dari Folder _o.knowledge

> **Untuk AI Agent**: Gunakan prompt ini untuk menyimpan pengetahuan dari folder `_o.knowledge` ke memory system.

---

## 📋 Instruksi untuk AI Agent

Saya ingin kamu **menganalisis seluruh isi folder `_o.knowledge`** dan menyimpan pengetahuan penting ke memory system. Folder ini berisi dokumentasi, catatan, dan learnings yang sudah dikumpulkan sebelumnya.

---

## 🎯 Yang Harus Kamu Lakukan

### 1. **Scan Folder _o.knowledge**

Baca semua file di folder `_o.knowledge/`:

```bash
# List semua file
ls _o.knowledge/

# Atau dengan tree
tree _o.knowledge/
```

**File types yang harus dibaca:**
- ✅ Markdown files (*.md)
- ✅ Text files (*.txt)
- ✅ JSON files (*.json)
- ✅ YAML files (*.yml, *.yaml)
- ✅ Documentation files (README, NOTES, etc)

### 2. **Analisis Setiap File**

Untuk setiap file, identifikasi:

- 📚 **Knowledge Type** - Apakah ini gotcha, pattern, decision, atau context?
- 🎯 **Relevance** - Apakah ini masih relevan untuk project saat ini?
- 🏷️ **Tags** - Teknologi/topik apa yang dibahas?
- ⚠️ **Severity** - Seberapa penting/critical informasi ini?

### 3. **Kategorisasi Pengetahuan**

| Kategori | Kapan Digunakan | Contoh dari _o.knowledge |
|----------|-----------------|--------------------------|
| **gotchas** | Bug, error, pitfall yang harus dihindari | "Database connection timeout", "Memory leak pattern" |
| **patterns** | Code pattern, best practice, teknik yang works | "API design pattern", "Caching strategy" |
| **decisions** | Keputusan arsitektur, pilihan teknologi | "Why we chose X over Y", "Architecture decision" |
| **context** | Informasi tentang project, tech stack, history | "Project background", "Tech stack evolution" |

### 4. **Extract & Transform**

Untuk setiap knowledge yang ditemukan:

#### A. Extract Information

```markdown
Source File: _o.knowledge/[filename]
Content: [relevant content]
Date: [jika ada]
Author: [jika ada]
```

#### B. Transform ke Format Standard

```markdown
# [Judul yang Clear & Descriptive]

**Category:** [gotchas/patterns/decisions/context]  
**Severity:** [🚨 CRITICAL / ⚠️ MEDIUM / ℹ️ INFO]  
**Tags:** [tag1, tag2, tag3]  
**Date:** [YYYY-MM-DD]  
**Source:** _o.knowledge/[filename]

---

## Context / Problem

[Jelaskan konteks atau masalahnya]

---

## Solution / Pattern / Decision

[Jelaskan solusi, pattern, atau keputusan]

```code
// Include code example jika ada
```

---

## When This Happens / When to Use

- ✅ Kondisi 1
- ✅ Kondisi 2
- ❌ Jangan dipakai saat: ...

---

## Related

- Source: `_o.knowledge/[filename]`
- See also: [link ke entry lain jika ada]

---

*Migrated from _o.knowledge on [date]*
```

### 5. **Deduplication Check**

Sebelum save, cek apakah knowledge sudah ada:

```bash
# Check existing entries
cat .agent/memory/index.json

# Search for similar content
grep -r "keyword" .agent/memory/entries/
```

**Jika sudah ada:**
- ❌ Skip jika 100% sama
- ✅ Merge jika ada info tambahan
- ✅ Update jika ada versi lebih baru

### 6. **Save to Memory**

Untuk setiap entry:

```bash
# Option 1: Via script
python scripts/save-knowledge.py --category [kategori] "[content]"

# Option 2: Manual file creation
# Create: .agent/memory/entries/[kategori]/[nama-file].md
```

### 7. **Update Index & Context**

```bash
# Index akan auto-update jika pakai script
# Atau manual update: .agent/memory/index.json

# Update project context jika ada info penting
# Edit: .agent/context/project-context.json
```

---

## 📊 Workflow Lengkap

```
1. List semua file di _o.knowledge/
   ↓
2. Baca setiap file satu per satu
   ↓
3. Identifikasi knowledge type & relevance
   ↓
4. Extract informasi penting
   ↓
5. Transform ke format standard
   ↓
6. Check duplicates di memory
   ↓
7. Save ke .agent/memory/entries/
   ↓
8. Update index.json
   ↓
9. Sync AGENTS.md statistics
   ↓
10. Create migration report
```

---

## 📋 Checklist Lengkap

Sebelum selesai, pastikan:

- [ ] Scan semua file di _o.knowledge/
- [ ] Identifikasi minimal 5-10 knowledge penting
- [ ] Kategorisasi setiap knowledge dengan benar
- [ ] Check duplicates dengan existing entries
- [ ] Transform ke format standard
- [ ] Save ke folder yang sesuai
- [ ] Update index.json
- [ ] Update project-context.json (jika perlu)
- [ ] **Sync AGENTS.md statistics** (`python scripts/sync-agents-stats.py`)
- [ ] Buat migration report
- [ ] Mark processed files (optional: add .migrated suffix)

---

## 🎯 Output yang Diharapkan

Setelah selesai, berikan report seperti ini:

```
✅ Knowledge Migrated from _o.knowledge

📊 Summary:
   - Total files scanned: 15
   - Total entries extracted: 23
   - Gotchas: 8
   - Patterns: 10
   - Decisions: 3
   - Context: 2
   - Duplicates skipped: 5
   - New entries: 18

🚨 Critical Gotchas Found:
   1. [Title] - from [filename]
   2. [Title] - from [filename]
   3. ...

💡 Useful Patterns:
   1. [Title] - from [filename]
   2. [Title] - from [filename]
   3. ...

📁 Files Created:
   - .agent/memory/entries/gotchas/[filename].md
   - .agent/memory/entries/patterns/[filename].md
   - ...

📝 Migration Notes:
   - [Any important notes about the migration]
   - [Files that couldn't be processed]
   - [Recommendations for manual review]
```

---

## 🔍 File Processing Guidelines

### Markdown Files (*.md)

```markdown
# Baca struktur markdown
# Extract headers sebagai potential titles
# Extract code blocks
# Extract lists sebagai actionable items
```

### Text Files (*.txt)

```
# Baca line by line
# Detect patterns (ERROR:, WARNING:, NOTE:, TODO:)
# Group related lines
# Extract as knowledge entries
```

### JSON/YAML Files

```json
{
  "knowledge": "Extract structured data",
  "config": "Save as context or pattern",
  "notes": "Transform to markdown format"
}
```

---

## 💡 Smart Processing Tips

### 1. **Priority Processing**

Process in order:
1. Files dengan "critical", "important", "gotcha" di nama
2. Files dengan tanggal terbaru
3. Files dengan size terbesar (likely more content)
4. Sisanya alphabetically

### 2. **Content Detection**

Auto-detect category dari content:

```python
# Gotchas indicators
if "error" in content or "bug" in content or "fix" in content:
    category = "gotchas"

# Pattern indicators
if "pattern" in content or "best practice" in content:
    category = "patterns"

# Decision indicators
if "decided" in content or "chose" in content or "architecture" in content:
    category = "decisions"
```

### 3. **Tag Extraction**

Auto-extract tags dari:
- Filenames
- Headers
- Code language blocks
- Mentioned technologies

---

## 🚀 Cara Pakai Prompt Ini

### Opsi 1: Manual Trigger

```
@.agent/workflows/cara-simpan-pengetahuan-dari-folder.md

Tolong migrate semua knowledge dari folder _o.knowledge
sesuai instruksi di file tersebut.
```

### Opsi 2: Script Automation (Future)

```bash
# Create migration script
python scripts/migrate-knowledge-folder.py _o.knowledge/
```

---

## 📝 Example Transformation

### Before (dari _o.knowledge/database-notes.txt):

```
Oracle connection timeout after 30 seconds
Fix: Increase timeout in config
Added: 2024-12-15
```

### After (di .agent/memory/entries/gotchas/):

```markdown
# Oracle Connection Timeout Issue

**Category:** gotchas  
**Severity:** ⚠️ MEDIUM  
**Tags:** oracle, database, timeout, configuration  
**Date:** 2024-12-15  
**Source:** _o.knowledge/database-notes.txt

---

## Problem

Oracle database connection timeout setelah 30 detik, menyebabkan
long-running queries gagal.

---

## Solution

Increase timeout di configuration file:

```php
'timeout' => 120, // Increase from 30 to 120 seconds
```

---

## When This Happens

- ✅ Long-running queries (> 30 seconds)
- ✅ Complex reports
- ✅ Batch processing

---

*Migrated from _o.knowledge on 2025-12-21*
```

---

## ⚠️ Important Notes

### DO's ✅
- ALWAYS check for duplicates
- ALWAYS preserve original source reference
- ALWAYS use standard format
- ALWAYS update index.json
- ALWAYS create migration report

### DON'Ts ❌
- JANGAN delete original files di _o.knowledge
- JANGAN skip deduplication check
- JANGAN save tanpa kategorisasi
- JANGAN lupa update index
- JANGAN migrate irrelevant/outdated info

---

## 🔄 Post-Migration

Setelah migration selesai:

1. **Verify** - Check semua entries tersimpan dengan benar
2. **Test** - Load memory system dan verify bisa dibaca
3. **Sync Stats** - Jalankan `python scripts/sync-agents-stats.py`
4. **Archive** - Optional: add `.migrated` suffix ke processed files
5. **Document** - Update project-context.json dengan migration info
6. **Backup** - Backup _o.knowledge folder (jangan delete!)

---

**Tujuan Akhir:**  
🎯 Semua knowledge dari _o.knowledge tersimpan rapi di memory system dan bisa auto-load saat AI agent buka project!

---

*Created: 2025-12-21*  
*Last Updated: 2026-01-04*  
*Stats: See AGENTS.md (auto-synced)*
