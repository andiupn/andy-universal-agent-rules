---
description: cara-simpan-pengetahuan-dari-chat
---

# 🧠 Prompt: Simpan Pengetahuan dari Chat Session

> **Untuk AI Agent**: Gunakan prompt ini untuk menyimpan seluruh learnings dari chat session yang baru saja selesai.

---

## 📋 Instruksi untuk AI Agent

Saya ingin kamu **menganalisis seluruh chat session ini** dan menyimpan pengetahuan penting ke memory system. Ini akan membantu kamu (dan AI agent lainnya) untuk:

✅ **Tidak mengulang kesalahan yang sama**  
✅ **Mengingat solusi yang berhasil**  
✅ **Bekerja lebih cepat di session berikutnya**  
✅ **Memahami project context tanpa perlu dijelaskan ulang**

---

## 🎯 Yang Harus Kamu Lakukan

### 1. **Scan Seluruh Chat Session**

Baca ulang dari awal sampai akhir chat ini, cari:

- ❌ **Kesalahan yang terjadi** (error, bug, approach yang salah)
- ✅ **Solusi yang berhasil** (fix, workaround, best practice)
- 💡 **Pattern/teknik yang works** (code pattern, workflow)
- 🏗️ **Keputusan arsitektur** (kenapa pilih teknologi X, struktur folder, dll)
- ⚠️ **Gotchas/pitfalls** (hal-hal yang harus dihindari)
- 📚 **Project context** (tech stack, struktur, tujuan project)

### 2. **Kategorisasi Pengetahuan**

Kelompokkan berdasarkan kategori:

| Kategori | Kapan Digunakan | Contoh |
|----------|-----------------|--------|
| **gotchas** | Bug production, error yang tricky, hal yang harus dihindari | "Oracle transaction harus explicit COMMIT" |
| **patterns** | Code pattern yang works, best practice | "Gunakan chunking untuk import Excel besar" |
| **decisions** | Keputusan arsitektur, pilihan teknologi | "Pakai Redis karena 10x lebih cepat dari MySQL untuk cache" |
| **errors** | Error yang pernah terjadi + solusinya | "EPERM error karena file Hidden, solusi: unhide dulu" |
| **context** | Informasi tentang project ini | "Project ini pakai PHP 8.4 + Oracle 11g + MySQL" |

### 3. **Format Setiap Entry**

Untuk setiap pengetahuan yang kamu simpan, gunakan format ini:

```markdown
# [Judul Singkat & Jelas]

**Category:** [gotchas/patterns/decisions/errors/context]  
**Severity:** [🚨 CRITICAL / ⚠️ MEDIUM / ℹ️ INFO]  
**Tags:** [tag1, tag2, tag3]  
**Date:** [YYYY-MM-DD]  
**Source:** Chat session [tanggal]

---

## Problem / Context

[Jelaskan masalah atau konteksnya]

---

## Solution / Pattern

[Jelaskan solusinya atau pattern-nya]

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

- See: [link ke entry lain jika ada]
- File: [path ke file terkait]

---

*Saved from chat session on [date]*
```

### 4. **Simpan Menggunakan Script**

Untuk setiap entry, jalankan:

```bash
python scripts/save-knowledge.py --category [kategori] "[isi pengetahuan lengkap]"
```

**ATAU** buat file manual di:
```
.agent/memory/entries/[kategori]/[nama-file].md
```

### 5. **Update Project Context**

Simpan juga informasi tentang project ini di:

```
.agent/context/project-context.json
```

Format:

```json
{
  "projectName": "nama project",
  "purpose": "tujuan project",
  "techStack": {
    "backend": ["php", "laravel"],
    "frontend": ["vue"],
    "database": ["mysql", "oracle"]
  },
  "structure": {
    "description": "deskripsi struktur folder",
    "mainFolders": ["folder1", "folder2"]
  },
  "knownIssues": [
    "Issue 1 yang pernah terjadi",
    "Issue 2 yang harus dihindari"
  ],
  "bestPractices": [
    "Practice 1 yang harus diikuti",
    "Practice 2 yang recommended"
  ],
  "lastUpdated": "2025-12-21"
}
```

---

## 📊 Checklist Lengkap

Sebelum selesai, pastikan kamu sudah:

- [ ] Scan seluruh chat dari awal sampai akhir
- [ ] Identifikasi minimal 5-10 pengetahuan penting
- [ ] Kategorisasi setiap pengetahuan dengan benar
- [ ] Buat file markdown untuk setiap entry
- [ ] Update `index.json` dengan entry baru
- [ ] Simpan project context di `project-context.json`
- [ ] Verifikasi semua file tersimpan dengan benar
- [ ] **Sync statistics AGENTS.md** (`python scripts/sync-agents-stats.py`)
- [ ] Buat summary report untuk user

---

## 🎯 Output yang Diharapkan

Setelah selesai, berikan report seperti ini:

```
✅ Knowledge Saved from Chat Session

📊 Summary:
   - Total entries: 12
   - Gotchas: 5
   - Patterns: 4
   - Decisions: 2
   - Context: 1

🚨 Critical Gotchas:
   1. Oracle transaction commit bug
   2. MySQL localhost vs 127.0.0.1
   3. ...

💡 Useful Patterns:
   1. Excel import chunking
   2. API response format
   3. ...

📁 Files Created:
   - .agent/memory/entries/gotchas/oracle-commit-bug.md
   - .agent/memory/entries/patterns/excel-chunking.md
   - ...

🔗 Next Session:
   Saat project dibuka lagi, AI agent akan otomatis load
   semua knowledge ini dan tidak perlu dijelaskan ulang!
```

---

## 🔄 Auto-Load System (untuk Session Berikutnya)

Agar AI agent otomatis tahu context saat buka project:

### File: `.agent/context/session-init.md`

Buat file ini yang berisi:

```markdown
# Session Initialization

Saat AI agent membuka project ini, WAJIB baca file-file berikut:

1. **Project Context**
   - `.agent/context/project-context.json`
   - `.agent/context/environment.json`

2. **Critical Knowledge** (HARUS DIBACA!)
   - `.agent/memory/entries/gotchas/*.md` (semua gotchas)
   - Top 5 patterns dari `.agent/memory/index.json`

3. **Recent Changes**
   - Check git log terakhir
   - Check `.agent/context/last-session.json`

Setelah baca semua, AI agent sudah siap bekerja tanpa perlu
dijelaskan ulang tentang project ini!
```

---

## 💡 Tips untuk AI Agent

1. **Jangan skip error** - Setiap error yang terjadi adalah pembelajaran
2. **Catat solusi yang works** - Bukan cuma masalahnya
3. **Include code examples** - Lebih mudah dipahami
4. **Tag dengan baik** - Memudahkan search nanti
5. **Update index.json** - Jangan lupa!
6. **Severity matters** - Tandai yang critical dengan jelas
7. **Link related entries** - Bantu AI agent connect the dots

---

## 🚀 Cara Pakai Prompt Ini

### Opsi 1: Copy-Paste ke Chat

```
@.agent/promnt/cara-simpan-pengetahuan-dari-chat.md

Tolong simpan seluruh pengetahuan dari chat session ini
sesuai instruksi di file tersebut.
```

### Opsi 2: Otomatis di Akhir Session

Tambahkan di `AGENTS.md`:

```markdown
## End of Session Protocol

Sebelum session berakhir, AI agent WAJIB:
1. Baca `.agent/promnt/cara-simpan-pengetahuan-dari-chat.md`
2. Simpan semua learnings dari session ini
3. Update project context
4. Buat summary report
```

---

## 📝 Template Quick Save

Untuk save cepat saat chat:

```bash
# Gotcha
python scripts/save-knowledge.py --category gotchas "CRITICAL: [deskripsi masalah + solusi]"

# Pattern
python scripts/save-knowledge.py --category patterns "PATTERN: [nama pattern + cara pakai]"

# Decision
python scripts/save-knowledge.py --category decisions "DECISION: [keputusan + alasan]"

# Sync AGENTS.md statistics (ALWAYS run after adding entries!)
python scripts/sync-agents-stats.py
```

---

**Tujuan Akhir:**  
🎯 AI agent yang **self-improving** - semakin sering dipakai, semakin pintar!

---

*Created: 2025-12-21*  
*Last Updated: 2026-01-04*  
*Stats: See AGENTS.md (auto-synced)*
