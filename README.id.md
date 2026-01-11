<div align="center">
  <a href="README.md">English</a> | 
  **Bahasa Indonesia**
</div>

# andy-universal-agent-rules

> 🧠 **Basis Pengetahuan & Sistem Aturan Agen AI Universal**
> 
> Jadikan asisten koding AI Anda lebih pintar. Bekerja dengan project apa saja, editor apa saja.

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![GitHub release](https://img.shields.io/github/v/release/andiupn/andy-universal-agent-rules)](https://github.com/andiupn/andy-universal-agent-rules/releases)
[![GitHub issues](https://img.shields.io/github/issues/andiupn/andy-universal-agent-rules)](https://github.com/andiupn/andy-universal-agent-rules/issues)
[![GitHub pull requests](https://img.shields.io/github/issues-pr/andiupn/andy-universal-agent-rules)](https://github.com/andiupn/andy-universal-agent-rules/pulls)
[![Platform](https://img.shields.io/badge/platform-Linux%20%7C%20macOS%20%7C%20Windows-blue)](https://github.com/andiupn/andy-universal-agent-rules)
[![Python](https://img.shields.io/badge/python-3.10%2B-blue)](https://www.python.org/)

[![GitHub stars](https://img.shields.io/github/stars/andiupn/andy-universal-agent-rules?style=social)](https://github.com/andiupn/andy-universal-agent-rules/stargazers)
[![GitHub forks](https://img.shields.io/github/forks/andiupn/andy-universal-agent-rules?style=social)](https://github.com/andiupn/andy-universal-agent-rules/network)
[![Ko-Fi](https://img.shields.io/badge/Ko--fi-Support-ff5f5f?logo=ko-fi)](https://ko-fi.com/andiupn)

---

## 🎬 Mulai Cepat

**Baru menggunakan andy-universal-agent-rules?** Instalasi dalam 60 detik:

### Video Tutorial (Segera Hadir)
<!-- 
[![Quick Start Video](https://img.youtube.com/vi/YOUR_VIDEO_ID/0.jpg)](https://youtu.be/YOUR_VIDEO_ID)
-->

### 3 Langkah Instalasi

1. **Buat folder project**
   ```bash
   mkdir proyek-saya && cd proyek-saya
   ```

2. **Jalankan installer**
   - **Windows:** `iwr -useb https://raw.githubusercontent.com/andiupn/andy-universal-agent-rules/main/install.ps1 | iex`
   - **Linux/Mac:** `curl -sL https://raw.githubusercontent.com/andiupn/andy-universal-agent-rules/main/install.sh | bash`

3. **Mulai gunakan workflows**
   - Perintahkan AI Anda: `"Run the maintenance workflow"` (Jalankan workflow maintenance)
   - Atau: `"Simpan pengetahuan dari chat ini"`

Selesai! AI Anda sekarang memiliki memori. 🧠✨

---

## 📂 Sebelum Anda Menginstall

> **Penting:** Installer akan membuat folder `.agent/` dan file `AGENTS.md` **di direktori Anda saat ini**.

### ✅ Setup yang Disarankan

**Buat folder khusus terlebih dahulu:**

```bash
# Contoh 1: Project Baru
mkdir proyek-keren-saya
cd proyek-keren-saya
# Sekarang jalankan installer di sini ↓

# Contoh 2: Project yang Sudah Ada
cd /path/ke/project/anda
# Sekarang jalankan installer di sini ↓

# Contoh 3: Windows (Laragon www/)
mkdir c:\laragon\www\proyek-saya
cd c:\laragon\www\proyek-saya
# Sekarang jalankan installer di sini ↓
```

### ❌ Kesalahan Umum

```bash
# ❌ SALAH - Menginstall langsung di root www/
cd c:\laragon\www\
iwr -useb ... | iex  # Ini akan membuat .agent/ langsung di folder www/!

# ✅ BENAR - Buat folder project dulu
cd c:\laragon\www\
mkdir proyek-saya
cd proyek-saya
iwr -useb ... | iex  # Sekarang .agent/ ada di dalam proyek-saya/
```

### 📁 Apa yang Terinstall

Setelah instalasi, folder Anda akan terlihat seperti ini:

```
proyek-anda/                # ← Direktori Anda saat ini
├── AGENTS.md               # ← AI membaca ini pertama kali
└── .agent/
    ├── scripts/            # ← Script otomasi Python (6 file)
    ├── workflows/          # ← AI workflows (6 file) 🆕 FITUR UTAMA
    ├── memory/             # ← Basis pengetahuan Anda
    │   ├── index.json
    │   └── entries/
    │       ├── gotchas/
    │       ├── patterns/
    │       ├── decisions/
    │       └── context/
    └── context/            # ← Deteksi lingkungan
        └── environment.json
```

---

## ⚡ Quick Install Command

### Linux/Mac (Satu baris)
```bash
curl -sL https://raw.githubusercontent.com/andiupn/andy-universal-agent-rules/main/install.sh | bash
```

### Windows PowerShell (Satu baris)
```powershell
iwr -useb https://raw.githubusercontent.com/andiupn/andy-universal-agent-rules/main/install.ps1 | iex
```

### Manual
```bash
git clone https://github.com/andiupn/andy-universal-agent-rules.git
cp -r andy-universal-agent-rules/.agent ./
cp andy-universal-agent-rules/AGENTS.md ./
rm -rf andy-universal-agent-rules  # bersih-bersih
```

---

## 🎯 Apa Ini?

Sebuah **sistem manajemen pengetahuan** untuk asisten koding AI. Daripada menjelaskan bug dan solusi yang sama setiap kali memulai sesi chat, AI Anda akan mengingat:

- ❌ **Gotchas** - Bug produksi & cara menghindarinya
- ✅ **Patterns** - Pola koding yang terbukti berhasil
- 📐 **Decisions** - Pilihan arsitektur software & alasannya
- 📚 **Context** - Panduan spesifik project

**Hasilnya:** Asisten AI Anda menjadi semakin pintar seiring berjalannya waktu.

---

## 🔧 Editor yang Didukung

| Editor | Status |
|--------|--------|
| **VSCode + GitHub Copilot** | ✅ |
| **Cursor AI** | ✅ |
| **Kiro AI** | ✅ |
| **Windsurf Editor** | ✅ |
| **Antigravity (Gemini/Claude)** | ✅ |

---

## 🔧 OS yang Didukung

| OS | Installer |
|----|-----------|
| **Linux** | `install.sh` |
| **macOS** | `install.sh` |
| **Windows** | `install.ps1` |

---

## 💡 Cara Penggunaan

### Simpan Pengetahuan dari Chat
Ketika AI Anda memecahkan bug yang sulit, simpan solusinya:
```bash
python .agent/scripts/save-knowledge.py --category gotchas "MySQL: Gunakan 127.0.0.1 daripada localhost di Windows"
```

### Cari Pengetahuan
Sebelum mulai bekerja, cari pengetahuan yang sudah ada:
```bash
python .agent/scripts/search-knowledge.py "koneksi mysql"
```

### Validasi Index
Menjaga kesehatan basis pengetahuan Anda:
```bash
python .agent/scripts/validate-index.py --fix
```

### Backup
Sebelum perubahan besar:
```bash
python .agent/scripts/backup-memory.py
```

---

## 🔄 Menggunakan Workflows

Setelah instalasi, Anda mendapatkan **6 workflows bertenaga AI** yang membuat manajemen pengetahuan menjadi mudah. Cukup bicara dengan AI Anda!

### `/maintenance` - Menjaga Kesehatan Knowledge Base

Memvalidasi index, membuat backup, memperbarui lingkungan secara otomatis.

**Penggunaan:**
```
"Run the maintenance workflow"
"Lakukan maintenance pada knowledge base"
```

**Apa yang dilakukannya:**
- ✅ Validasi integritas `index.json`
- ✅ Membuat backup dari `.agent/memory/`
- ✅ Memperbarui deteksi lingkungan (environment)
- ✅ Sinkronisasi statistik ke AGENTS.md

---

### `/save-from-chat` - Simpan Pembelajaran Sesi Ini

Memindai chat Anda untuk mencari gotchas, patterns, dan decisions untuk disimpan secara otomatis.

**Penggunaan:**
```
"Save learnings from this chat"
"Simpan pengetahuan dari percakapan kita"
```

**Apa yang dilakukannya:**
- 🔍 Menganalisa riwayat chat
- 📝 Mengekstrak gotchas, patterns, decisions
- 💾 Menyimpan ke `.agent/memory/entries/`
- 🔄 Memperbarui index secara otomatis

---

### `/search` - Cari Pengetahuan yang Ada

Pencarian cepat sebelum mulai bekerja untuk menghindari penemuan ulang solusi yang sudah ada.

**Penggunaan:**
```
"Search for MySQL gotchas"
"Cari info tentang autentikasi"
```

**Apa yang dilakukannya:**
- 🔎 Mencari di semua kategori
- 📊 Mengurutkan berdasarkan relevansi
- 📄 Menampilkan entri yang cocok beserta konteksnya

---

### Workflows Bahasa Indonesia 🇮🇩

Khusus untuk pengguna berbahasa Indonesia:
- `/simpan-pengetahuan-dari-chat` - Simpan dari percakapan
- `/simpan-pengetahuan-dari-folder` - Simpan dari folder

---

**Pro Tip:** Workflows bekerja paling baik dengan:
- ✅ Antigravity (Gemini/Claude)
- ✅ Cursor (Agent Mode)
- ✅ Kiro AI

Untuk editor lain, gunakan script Python secara langsung:
```bash
python .agent/scripts/save-knowledge.py --category gotchas "Gotcha Anda"
```

---

## 🧠 Keajaibannya: Priority Loading

Ketika AI membuka project Anda, sistem otomatis memuat:

1. 🚨 **Critical Gotchas** (hindari bug)
2. 📊 **Environment Info** (OS, stack, versi)
3. 🔝 **Top Patterns** (solusi yang paling sering dipakai)
4. 📝 **Project Context** (tentang apa project ini)

**AI Anda mengenali project Anda bahkan sebelum Anda bertanya.**

---

## ❓ FAQ (Tanya Jawab)

### Apa bedanya dengan hanya menggunakan `.cursorrules`?

**`.cursorrules`** adalah satu file statis yang dibaca AI sekali saja.

**andy-universal-agent-rules** adalah **sistem manajemen pengetahuan dinamis**:
- ✅ **Basis pengetahuan yang bisa dicari** - Temukan solusi dari bug masa lalu
- ✅ **Script untuk otomasi** - Simpan, cari, validasi, backup
- ✅ **Workflows** - Perintah siap pakai seperti `/maintenance`, `/save-from-chat`
- ✅ **Support lintas editor** - Bekerja dengan Cursor, VSCode, Kiro, Windsurf, Antigravity
- ✅ **Berkembang seiring waktu** - AI Anda makin pintar saat Anda menambah pengetahuan

Anggap ini sebagai `.cursorrules` + Git untuk memori AI Anda.

### Bisakah saya gunakan ini untuk banyak project?

**Ya!** Install di setiap project secara terpisah:

```bash
# Project 1
cd ~/projects/aplikasi-saya
iwr -useb https://raw.githubusercontent.com/andiupn/andy-universal-agent-rules/main/install.ps1 | iex

# Project 2
cd ~/projects/aplikasi-lain
iwr -useb https://raw.githubusercontent.com/andiupn/andy-universal-agent-rules/main/install.ps1 | iex
```

Setiap project punya basis pengetahuan (memory) yang independen di `.agent/memory/`.

### Bagaimana cara uninstall?

Cukup hapus foldernya:

```bash
# Hapus aturan agen
rm -rf .agent
rm AGENTS.md

# Atau di Windows PowerShell
Remove-Item -Recurse -Force .agent
Remove-Item AGENTS.md
```

**Opsional:** Hapus dari riwayat git jika sudah di-commit:
```bash
git rm -r .agent AGENTS.md
git commit -m "Hapus andy-universal-agent-rules"
```

### Apakah ini bekerja offline?

**Ya!** Setelah instalasi, semuanya berjalan offline:
- ✅ Script berjalan lokal (hanya Python stdlib)
- ✅ Basis pengetahuan tersimpan lokal
- ✅ Tidak butuh API call atau internet

**Internet hanya butuh saat:**
- Instalasi (download file)
- Menggunakan fitur AI (AI-nya yang butuh internet, bukan tool ini)

### Apakah ini akan memperlambat editor saya?

**Tidak!** Sistem ini:
- ✅ **Pasif** - Hanya dibaca AI saat dibutuhkan
- ✅ **Ringan** - Script Python total ~50KB
- ✅ **Cepat** - Semua script berjalan <500ms (lihat benchmark)

Performa editor Anda tidak akan terpengaruh.

---

## 🔧 Troubleshooting

### Python not found

**Error:** `python: command not found` atau `'python' is not recognized`

**Solusi:**

**Windows:**
```powershell
# Download Python dari python.org
# Atau install via winget
winget install Python.Python.3.12

# Verifikasi instalasi
python --version
```

**Linux/Mac:**
```bash
# Ubuntu/Debian
sudo apt install python3

# macOS
brew install python3

# Verifikasi
python3 --version
```

### Permission errors saat instalasi

**Error:** `Permission denied` atau `Access is denied`

**Solusi:**

**Windows:**
```powershell
# Jalankan PowerShell sebagai Administrator
# Klik kanan PowerShell → "Run as administrator"
```

**Linux/Mac:**
```bash
# Jangan gunakan sudo dengan installer!
# Pastikan Anda punya akses tulis ke direktori saat ini
cd ~/projects/proyek-saya
curl -sL ... | bash
```

### Git conflicts dengan folder `.agent/`

**Error:** Merge conflicts di `.agent/memory/`

**Solusi:**

**Opsi 1: Simpan versi Anda (disarankan)**
```bash
git checkout --ours .agent/memory/
git add .agent/memory/
git commit
```

**Opsi 2: Merge manual**
```bash
# Selesaikan konflik di .agent/memory/index.json
# Pertahankan kedua basis pengetahuan jika perlu
git add .agent/memory/
git commit
```

**Pencegahan:** Tambahkan ke `.gitignore`:
```
.agent/memory/entries/
.agent/context/environment.json
```

### Workflows tidak bekerja / tidak ditemukan

**Error:** AI bilang "workflow not found" atau `/maintenance` tidak jalan

**Solusi:**

1. **Verifikasi workflows terinstall:**
```bash
ls .agent/workflows/
# Harusnya muncul: maintenance.md, save-from-chat.md, dll.
```

2. **Reinstall jika hilang:**
```bash
iwr -useb https://raw.githubusercontent.com/andiupn/andy-universal-agent-rules/main/install.ps1 | iex
```

3. **Cek kompatibilitas editor:**
   - Workflows bekerja dengan: Antigravity, Cursor (Agent Mode), Kiro
   - Untuk VSCode/Copilot: Gunakan script langsung

### Script error `ModuleNotFoundError`

**Error:** `ModuleNotFoundError: No module named 'xyz'`

**Ini TIDAK BOLEH terjadi!** Semua script hanya menggunakan Python standard library.

**Jika terjadi:**
```bash
# Cek versi Python (harus 3.10+)
python --version

# Pastikan menggunakan system Python, bukan venv
which python  # Linux/Mac
where python  # Windows
```

**Masih error?** [Laporkan isu](https://github.com/andiupn/andy-universal-agent-rules/issues)

---

## 💖 Dukung Project Ini

Jika ini menghemat waktu debugging Anda, pertimbangkan untuk mendukung:

| Platform | Link |
|----------|------|
| **Ko-fi** | [ko-fi.com/andiupn](https://ko-fi.com/andiupn) |
| **Patreon** | [patreon.com/AndiUpn](https://www.patreon.com/cw/AndiUpn) |
| **Trakteer** 🇮🇩 | [trakteer.id/andi_upn](https://trakteer.id/andi_upn/gift) |
| **Saweria** 🇮🇩 | [saweria.co/andiupn](https://saweria.co/andiupn) |

---

## 📜 Lisensi

MIT License - Gunakan di mana saja, modifikasi dengan bebas.

**Riwayat versi:** Lihat [CHANGELOG.md](CHANGELOG.md).

---

## 🌟 Star Repo Ini!

Jika Anda merasa ini bermanfaat, tolong kasih ⭐ star di repo ini untuk membantu orang lain menemukannya!

---

*Dibuat dengan ❤️ oleh Andi UPN*
