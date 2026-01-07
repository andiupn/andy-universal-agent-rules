# AGENTS.md

> AI Agent Instructions for this project. Didukung oleh GitHub Copilot, Cursor, Kiro, Antigravity, dll.
*Stats: 237 entries (59 gotchas, 110 patterns, 25 decisions, 41 context)*

---

## 📋 Project Overview

**Project:** andy-universal-agent-rules  
**Purpose:** Testing & documentation AI agent rules system  
**Stack:** Multi-platform (PHP, Node.js, Python) - See `.agent/context/environment.json` for detected versions.

---

## 🛠️ Tech Stack & Environment

> **NOTE:** Actual versions are auto-detected in `.agent/context/environment.json`.

- **Backend:** PHP 8.4+, Node.js 20.x+
- **Database:** MySQL (3306), Oracle 11g (1521)
- **Tools:** Laragon (Win), Valet/Homebrew (Mac), Native (Linux)
- **OS:** Cross-Platform (Windows/Linux/macOS)

---

## 🐘 Multi-PHP Version Support

> **Available PHP Versions (Linux):** 5.6, 7.2, 8.3, 8.4, 8.5

### Per-Project PHP Version

```bash
# Check default PHP
php -v

# Use specific version
php5.6 script.php
php7.2 artisan serve
php8.4 composer install

# Check all available
ls /usr/bin/php*
```

### Project-Specific Configuration

Untuk project yang membutuhkan PHP tertentu, gunakan:

| Method | File/Command | Example |
|--------|--------------|---------|
| **Shebang** | Script header | `#!/usr/bin/php7.2` |
| **Composer** | `composer.json` | `"php": "^7.2"` |
| **Apache** | `.htaccess` | `SetHandler application/x-httpd-php72` |

### Gotchas per Version

| PHP Version | Known Issues |
|-------------|--------------|
| **5.6** | No arrow functions, MySQL charset issues |
| **7.2** | No typed properties, limited union types |
| **8.3+** | Full modern PHP features |

> 📚 **Related:** `.agent/memory/entries/gotchas/php72-arrow-function.md`

---

## ⚡ Quick Commands

```bash
# PHP Project
composer install
php artisan serve

# Node.js Project
npm install
npm run dev

# Knowledge Management
python .agent/.agent/scripts/save-knowledge.py --category gotchas "message"
python .agent/.agent/scripts/search-knowledge.py "oracle commit"
python .agent/.agent/scripts/validate-index.py --fix

# Backup (auto-timestamp & compression)
python .agent/.agent/scripts/backup-memory.py             # Quick backup
python .agent/.agent/scripts/backup-memory.py --list       # List backups
python .agent/.agent/scripts/backup-memory.py --restore <file>

# Environment
python .agent/.agent/scripts/detect-environment.py

# Python Testing & Validation
python .agent/context/python_capability_test.py
python .agent/context/test_new_packages.py
```

---

## 🐍 Python Capabilities

Agent memiliki Python 3.13.5 dengan **11 third-party packages** untuk berbagai keperluan:

### Web & Data
| Package            | Kegunaan      | Example Use Case                       |
|--------------------|---------------|----------------------------------------|
| **requests**       | HTTP requests | API calls, download files              |
| **beautifulsoup4** | HTML parsing  | Web scraping, extract data dari HTML   |
| **lxml**           | XML parsing   | Parse XML configs, RSS feeds           |

### Data Processing
| Package    | Kegunaan            | Example Use Case                      |
|------------|---------------------|---------------------------------------|
| **pandas** | Data analysis       | Olah CSV/Excel, statistical analysis |
| **numpy**  | Numerical computing | Matrix operations, calculations       |

### Config & Formats
| Package    | Kegunaan    | Example Use Case                       |
|------------|-------------|----------------------------------------|
| **pyyaml** | YAML parser | Parse docker-compose.yml, k8s configs  |
| **toml**   | TOML parser | Parse pyproject.toml, modern configs   |

### Development Tools
| Package    | Kegunaan          | Example Use Case                   |
|------------|-------------------|------------------------------------|
| **pytest** | Testing framework | Unit tests, integration tests      |
| **pylint** | Code linter       | Check code quality, find bugs      |
| **black**  | Code formatter    | Auto-format Python code            |
| **pillow** | Image processing  | Resize, convert, manipulate images |

### 💡 Use Cases untuk AI Agent

```python
# Web Scraping
from bs4 import BeautifulSoup
soup = BeautifulSoup(html, 'html.parser')
data = soup.find_all('div', class_='product')

# Data Analysis
import pandas as pd
df = pd.read_csv('data.csv')
summary = df.describe()

# Config Parsing
import toml
config = toml.load('config.toml')

# Image Processing
from PIL import Image
img = Image.open('photo.jpg')
img.thumbnail((800, 600))
```

> 📚 **Test Results:** `.agent/context/benchmark-results.txt`

---

## 🎯 Multi-Tech Quick Reference

> Agent dapat bekerja dengan berbagai jenis project. Gunakan referensi ini untuk menentukan tools yang tepat.

| Project Type | Primary Tech | Tools/Framework | Memory Reference |
|--------------|--------------|-----------------|------------------|
| **Web App (PHP)** | PHP 5.6-8.5 | Laravel, Yii, Native | See Multi-PHP section |
| **Web App (Node)** | Node.js 24.x | Express, Next.js, Vite | `npm run dev` |
| **Mobile (Android)** | Flutter/Dart | Android Studio, Firebase | `flutter-development-guide.md` |
| **Desktop** | Electron/Flutter | Cross-platform | Flutter Desktop |
| **Reports/Data** | Python | pandas, numpy, matplotlib | `python-automation-capabilities.md` |
| **API/Backend** | PHP/Node | REST, GraphQL | Native frameworks |

### Quick Start per Project Type

```bash
# Web PHP
php artisan serve              # Laravel
php -S localhost:8000          # Native

# Web Node
npm run dev                    # Vite/Next.js

# Mobile Android
flutter run -d android         # Flutter
flutter build apk --release    # Build APK

# Data/Reports
python3 scripts/generate-report.py
```

---

## 📂 Strict File Organization Rules

> **🚨 CRITICAL:** Agent **DILARANG KERAS** membuat file baru sembarangan di ROOT directory project (`/`).
> Lihat struktur lengkap di: `PROJECT_STRUCTURE.md`.

### 🚫 Forbidden Actions
1.  **NO Root Clutter:** Jangan pernah buat file testing, script one-off, atau log di root.
2.  **NO Temp Files:** Jangan tinggalkan file `test.py`, `output.txt`, atau `temp.json` di root.

### ✅ Mandatory Locations
File baru harus ditempatkan sesuai kategorinya:

| Tipe File | Lokasi Wajib | Keterangan |
| :--- | :--- | :--- |
| **Python Tests** | `test/python/` | Unit testing, pytest script |
| **PHP Database Tests** | `test/database/<db_name>/` | MySQL/Oracle connection tests |
| **Utility Scripts** | `scripts/` | Automation tools |
| **Temporary Files** | `test/temp/` | File debug/sementara (tidak di-commit) |
| **Dokumentasi** | `test/<category>/README.md` | Doc untuk script spesifik |

**Contoh Pelanggaran:**
- ❌ Membuat `calculator.py` di root → Pindah ke `test/python/`
- ❌ Membuat `debug_log.txt` di root → Pindah ke `test/temp/`

---

## 📝 Coding Conventions

### General
- Use **UTF-8** encoding for all files
- Use **4 spaces** for indentation (no tabs)
- Max line length: **120 characters**

### PHP
- Follow **PSR-12** coding standard
- Use **type hints** for all function parameters and return types
- All classes must have **docblocks**

### JavaScript/Node.js
- Use **ESLint** with recommended rules
- Prefer **const** over let, avoid var
- Use **async/await** over callbacks

### Python
- Follow **PEP 8** style guide
- Use **type hints** (Python 3.10+)
- Use **f-strings** for formatting

### Markdown Tables
- **Align columns** dengan padding spaces agar rata
- **Bold** item penting di kolom pertama (e.g., `**PHP**`)
- **Tambah emoji status** jika ada state (✅ ❌ ⚠️)
- Separator `|---|` harus sama panjang dengan header

```markdown
# ❌ SALAH - Tidak rata, tidak bold
| Platform | Status |
|---|---|
| PHP | Done |

# ✅ BENAR - Rata, bold, emoji
| Platform   | Status | Notes            |
|------------|--------|------------------|
| **PHP**    | ✅     | Production ready |
| **Python** | ⚠️     | Needs testing    |
```

### ⚠️ Python Execution

**Linux/macOS (Bash):**
```bash
# ✅ Single line
python3 -c "import os; print('hello')"

# ✅ Multiline (Heredoc)
python3 <<EOF
import os
print('hello')
EOF
```

**Windows (PowerShell):**
```powershell
# ❌ JANGAN - Multiline python -c akan STUCK!
python -c "
import os
print('hello')
"
```

# ✅ BENAR - Buat file .py terlebih dahulu
python .agent/context/temp_script.py

# ✅ ATAU - Single line dengan semicolon
python -c "import os; print('hello')"
```

> 📚 **Detail:** `.agent/memory/entries/gotchas/python-powershell-multiline-commands.md`

---

## ⚠️ Critical Gotchas

> **Full database:** lihat `.agent/memory/entries/gotchas/`

### Database

#### Oracle Transaction Commit Bug 🚨
```php
// ❌ SALAH - Data hilang setelah 15 menit!
$model->save();

// ✅ BENAR - Explicit COMMIT
$transaction->commit();
Yii::app()->db->getPdoInstance()->exec("COMMIT");
```

#### MySQL Windows Connection
```php
// ❌ SALAH - Bisa gagal di Windows
'host' => 'localhost'

// ✅ BENAR
'host' => '127.0.0.1'
```


### Git
- ❌ JANGAN `git reset --hard` tanpa backup
- ❌ JANGAN force push ke `main` atau `develop`
- ✅ SELALU buat branch untuk fitur baru
- ✅ **SELALU buat GitHub repo sebagai PRIVATE** (user preference)

### GitHub Repository Creation
```bash
# ✅ BENAR - Private by default
gh repo create NAMA_REPO --private --source=. --remote=origin --push

# ❌ SALAH - Public (hanya jika diminta eksplisit)
gh repo create NAMA_REPO --public --source=. --remote=origin --push
```

---

## 🧭 Best Practices: Tool Selection Strategy

Untuk kinerja optimal, gunakan decision tree berikut saat memilih tool.

### 1. Web Browsing Hierarchy
*Goal: Hemat waktu & resource.*

1. **Butuh info dari dokumentasi/artikel statis?** → Gunakan `read_url_content` (Cepat, Text-only).
2. **Butuh solusi error umum?** → Gunakan `search_web`.
3. **Butuh login, UI visual, atau SPA dynamic?** → Gunakan `browser_subagent`.
4. **Butuh mass automation/testing?** → Gunakan `Playwright MCP`.

> 📚 **Detail:** `.agent/memory/entries/patterns/browsing-tool-hierarchy.md`

### 2. Scripting Language: Python vs Node.js
*Goal: Efisiensi coding & performance.*

| Kebutuhan | Pilih Bahasa | Alasan |
| :--- | :--- | :--- |
| **Data Processing (CSV/Excel)** | **Python** 🐍 | Pandas jauh lebih cepat & mudah |
| **Simple Automation** | **Python** 🐍 | Standard library (OS, Sys) robust |
| **API Batch Operations** | **Node.js** 📦 | Native Async/Await non-blocking |
| **Project Integration** | **Node.js** 📦 | Reuse existing project logic |

> 📚 **Detail:** `.agent/memory/entries/decisions/python-vs-nodejs-scripting.md`

### 3. External AI Tools: Gemini CLI vs Jules
*Goal: Pilih tool AI paling tepat untuk setiap task.*

> **🚨 IMPORTANT HIERARCHY:**
> 1. **PRIMARY:** Built-in AI dari Code Editor (Gemini 3 / Claude Anthropic) → **GUNAKAN INI DULU!**
> 2. **SUPPORT:** Gemini CLI, Jules CLI, MCP → Gunakan sebagai **ASYNC/PARALLEL** support saja
>
> External tools JANGAN mengganggu responsivitas primary AI. Gunakan hanya untuk task spesifik yang memerlukan!

#### Kapan Gunakan External Tools (Async/Parallel)?

| Kondisi | Tool Support | Mode | Alasan |
| :--- | :--- | :--- | :--- |
| **Task berat yang butuh waktu lama** | `jules new` | 🔄 Async | Jalan di background, tidak block editor |
| **Quota primary AI habis** | `gemini -p` | 🔄 Async | Backup saat limit tercapai |
| **Butuh akses ke service eksternal** | MCP Servers | 🔄 Parallel | GitHub, Firebase, database |
| **Generate file batch** | `jules new` | 🔄 Async | Multi-file tanpa ganggu workflow |
| **Debug error kompleks** | `gemini -p` | 🔄 Quick | Second opinion cepat |

#### ❌ JANGAN Gunakan External Tools Untuk:
- Task yang bisa dikerjakan langsung oleh built-in AI
- Operasi simple yang mengganggu flow kerja
- Menggantikan primary AI untuk task standar

#### Use Cases untuk External Tools (Async Only):

| Task Type | Tool Support | Mode | Kapan Digunakan |
| :--- | :--- | :--- | :--- |
| **Multi-file Generation** | `jules new` | 🔄 Async | Banyak file sekaligus |
| **Refactoring Massal** | `jules new` | 🔄 Async | Complex changes |
| **Documentation Full** | `jules new` | 🔄 Async | Multiple docs |
| **Code Migration** | `jules new` | 🔄 Async | Language conversion |
| **Second Opinion** | `gemini -p` | 🔄 Quick | Debug/verify |
| **Quota Backup** | `gemini -p` | 🔄 Quick | Primary AI limit |

**Decision Tree (UPDATED):**
```
Butuh bantuan AI?
│
├─ Bisa dikerjakan built-in AI (Gemini 3 / Claude)?
│   └─ ✅ GUNAKAN BUILT-IN AI (PRIMARY) ← DEFAULT!
│
├─ Task berat / multi-file / butuh waktu lama?
│   └─ ✅ Gunakan: jules new "..." (ASYNC, jalan di background)
│
├─ Quota primary AI habis?
│   └─ ✅ Fallback: gemini -p "..." (External CLI)
│
└─ Butuh akses service eksternal (GitHub, DB, etc)?
    └─ ✅ Gunakan: MCP Servers (PARALLEL)
```

**Quick Commands (Support Tools Only):**
```bash
# Jules (background async - tidak block editor)
jules new "Buat unit test untuk semua file di src/"
jules remote list --session
jules remote pull --session ID --apply

# Gemini CLI (fallback/second opinion)
gemini -p "Fix error: [paste error]"
```

> 📚 **Detail:** `.agent/memory/entries/patterns/gemini-cli-*.md`, `jules-cli-*.md`

### 4. Complete Tool Priority Matrix
*Goal: Built-in AI FIRST, external tools sebagai SUPPORT.*

| Task | 1st Choice (PRIMARY) | 2nd Choice (SUPPORT) | 3rd Choice |
| :--- | :--- | :--- | :--- |
| **Code Generation** | **Built-in AI** | Jules (async) | - |
| **Code Review** | **Built-in AI** | Gemini CLI | - |
| **Error Debugging** | **Built-in AI** | Gemini CLI | - |
| **Refactoring** | **Built-in AI** | Jules (async) | - |
| **Documentation** | **Built-in AI** | Jules (async) | - |
| **GitHub PR/Issues** | MCP GitHub | `gh` CLI | - |
| **Database Query** | PHP PDO/OCI8 | MCP DBeaver | CLI |
| **Redis Cache** | `redis-cli` | MCP Redis | - |
| **Browser Testing** | MCP Playwright | browser_subagent | - |

> **INGAT:** External tools (Gemini CLI, Jules, MCP) = **ASYNC/PARALLEL SUPPORT ONLY!**
> Jangan block workflow primary AI dari code editor.

---

## 🔐 Safety Rules

### Konfirmasi Wajib Sebelum:
1. **Delete operations:** `rm`, `del`, `DROP TABLE`, `TRUNCATE`
2. **Git destructive:** `reset --hard`, `clean -fd`, force push
3. **Package install:** `npm install`, `composer require`
4. **External requests:** API calls ke production

### File Sensitif (NO ACCESS):
```
.env, .env.*, *.env
*.pem, *.key, id_rsa
config/database.php
credentials/*, secrets/*
```

---

## 🔌 MCP Servers (Available Tools)

Agent memiliki akses ke 6 MCP servers. Gunakan sesuai kebutuhan:

| MCP Server              | Fungsi                    | Kapan Digunakan              |
|-------------------------|---------------------------|------------------------------|
| **GitHub**              | Repo, PR, Issues          | Git operations yang kompleks |
| **Firebase**            | Auth, Firestore, Hosting  | Firebase projects            |
| **Cloud Run**           | GCP deployment            | Deploy ke Google Cloud       |
| **Dart**                | Flutter/Dart projects     | Mobile app development       |
| **Redis**               | Cache, key-value store    | Data caching & sessions      |
| **Sequential Thinking** | Problem solving           | Complex reasoning tasks      |

### Local Custom MCP Servers

> **STATUS:** ✅ All 8 servers PASSED validation (Verified 2026-01-02 via `validate-servers.js`)

Server-server ini dijalankan via `start-mcp.ps1` atau config editor:

| MCP Server          | Type    | Function        | Status (Test 2026-01-02) |
|---------------------|---------|-----------------|---------------------------|
| **DBeaver**         | Python  | Multi-DB Access | ✅ Ready (Found venv)     |
| **Oracle**          | Node.js | Oracle DB       | ✅ Ready                  |
| **Postgres**        | Node.js | Postgres DB     | ✅ Ready                  |
| **Chrome DevTools** | Node.js | Browser Debug   | ✅ Ready                  |
| **Playwright**      | Node.js | Automation      | ✅ Ready                  |
| **Context7**        | Node.js | Context Mgmt    | ✅ Ready                  |
| **Blogger**         | Node.js | Blog Management | ✅ Ready                  |
| **LangChain**       | Node.js | AI Workflows    | ✅ Ready                  |

### Quick Reference (Built-in)

> **⚠️ WARNING:** redis-mcp-server failed testing ("Client closed"). Use `redis-cli` instead.

```bash
# GitHub - Get user info
mcp_github-mcp-server_get_me()

# Redis - Cache operations
# ❌ MCP Fails ("Client closed")
# mcp_redis_set({key: "key", value: "value"}) (DO NOT USE)

# ✅ Workaround: Use redis-cli
# 1. Setup Alias (PowerShell):
#    Set-Alias redis-cli "path/to/redis-cli.exe"
# 2. Run commands:
redis-cli SET mykey "Hello"
redis-cli GET mykey

# Firebase - Get environment
mcp_firebase-mcp-server_firebase_get_environment()
```

### MCP vs Direct Access

| Task            | Gunakan MCP              | Gunakan Direct              |
|-----------------|--------------------------|-----------------------------|
| Git operations  | ✅ Complex (PR, Issues)  | ✅ Simple (commit, push)    |
| Redis cache     | ✅ MCP Redis             | ❌ PHP Redis (slower)       |
| Database query  | ❌                       | ✅ PHP PDO/OCI8 (faster)    |
| Firebase admin  | ✅ MCP Firebase          | -                           |

> 📚 **Detail:** `.agent/memory/entries/context/mcp-server-status-configuration.md`

---

## 🤖 Model-Specific Guidelines

> **CRITICAL:** MCP server compatibility berbeda antar AI model di Antigravity editor

### Claude Sonnet (Claude 3.5/4)

**MCP Compatibility:**

| MCP Server              | Status       | Reason                 |
|-------------------------|--------------|------------------------|
| **Redis**               | ✅ **WORKS** | Local, no external API |
| **Sequential Thinking** | ✅ **WORKS** | Internal processing    |
| **GitHub**              | ❌ **HANGS** | External API timeout   |
| **Firebase**            | ❌ **HANGS** | External API timeout   |
| **Cloud Run**           | ❌ **HANGS** | External API timeout   |
| **Dart**                | ❌ **HANGS** | External API timeout   |

**Recommended Usage:**

```markdown
✅ SAFE untuk Claude Sonnet:
- Local file operations (view_file, write_to_file)
- Terminal commands (run_command)
- Redis MCP (caching, sessions)
- Sequential Thinking MCP (reasoning)

❌ AVOID dengan Claude Sonnet:
- GitHub MCP → Use: git CLI, gh CLI
- Firebase MCP → Use: firebase CLI
- Cloud Run MCP → Use: gcloud CLI
- Dart MCP → Use: flutter CLI
```

### Gemini 3 (Gemini 2.0 Flash/Pro)

**MCP Compatibility:**

| MCP Server            | Status       |
|-----------------------|--------------|
| **ALL 6 MCP Servers** | ✅ **WORKS** |

**Recommended Usage:**

```markdown
✅ SAFE untuk Gemini 3:
- Semua MCP servers available
- External API-based MCP (GitHub, Firebase, Cloud Run, Dart)
- Complex MCP workflows
- Multiple parallel MCP calls
```

### Model Selection Strategy

| Task Type               | Recommended Model | Reason                            |
|-------------------------|-------------------|-----------------------------------|
| **GitHub operations**   | ✅ Gemini 3       | GitHub MCP required               |
| **Firebase deployment** | ✅ Gemini 3       | Firebase MCP required             |
| **Cloud Run deploy**    | ✅ Gemini 3       | Cloud Run MCP required            |
| **Flutter development** | ✅ Gemini 3       | Dart MCP required                 |
| **Code analysis**       | ✅ Claude Sonnet  | Superior reasoning, no MCP needed |
| **Local development**   | ✅ Claude Sonnet  | File ops + Redis MCP sufficient   |
| **Caching operations**  | ✅ Both           | Redis MCP works on both           |

### Hybrid Workflow Pattern

Untuk workflow yang memerlukan both MCP dan code analysis:

```markdown
Step 1: Use Gemini 3
├─ Fetch data via GitHub MCP
├─ Deploy via Cloud Run MCP
└─ Setup via Firebase MCP

Step 2: Switch to Claude Sonnet
├─ Analyze fetched data
├─ Code review & refactoring
└─ Generate solutions

Step 3: Back to Gemini 3
└─ Execute deployment via MCP
```

### CLI Alternatives (For Claude Sonnet)

Jika menggunakan Claude Sonnet, gunakan CLI tools sebagai pengganti MCP:

```bash
# Instead of GitHub MCP
git log -n 10
gh pr list
gh issue list

# Instead of Firebase MCP
firebase projects:list
firebase deploy

# Instead of Cloud Run MCP
gcloud run services list
gcloud run deploy

# Instead of Dart MCP
flutter devices
flutter run
flutter test
```

> 📚 **Testing Results:** Verified 2025-12-29 via systematic MCP testing

---

## 🐳 Docker MCP Infrastructure

> **INFO:** Beberapa MCP servers berjalan di Docker containers

### Docker MCP Toolkit (Beta)

> **STATUS:** ✅ Active (Verified 2026-01-02 via `docker mcp server list`)

Docker Desktop kini memiliki **MCP Toolkit** built-in yang berfungsi sebagai gateway untuk berbagai MCP servers.

**Command Gateway:**
```bash
docker mcp gateway run
```
Command ini menghubungkan MCP Client (Editor) dengan server-server yang dimanage oleh Docker.

**Installed Servers (Docker):**
*   **Playwright** (Enabled) - Browser automation
*   **GitHub** (Active Container: `ghcr.io/github/github-mcp-server`)

### GitHub MCP Server (Docker Container)

**Architecture:**
```
Docker Environment:
├─ Image: ghcr.io/github/github-mcp-server
├─ Instances: 2 containers (redundancy/load-balancing)
│   ├─ Container 1: Primary instance
│   └─ Container 2: Fallback instance
├─ Network: Internal Docker network
├─ Communication: MCP protocol (stdio/HTTP)
└─ Version: 0.26.3 (as of 2025-12-29)
```

**Management Commands:**

```bash
# Check running MCP containers
docker ps | grep mcp

# Check all MCP containers (including stopped)
docker ps -a | grep mcp

# View container logs
docker logs <container_id> --tail 50

# Restart container if stuck
docker restart <container_id>

# Check container resource usage
docker stats <container_id>
```

**Troubleshooting:**

| Problem | Solution |
|---------|----------|
| MCP hangs | Check `docker ps -a`, restart if needed |
| No response | Check logs: `docker logs <id>` |
| Auth error | Verify GitHub token still valid |
| Container exited | `docker start <container_id>` |

---

## 🖥️ Editor-Specific MCP Support

> **CRITICAL:** MCP availability berbeda antar code editors

### Complete MCP Compatibility Matrix

| MCP Server              | Antigravity (Gemini) | Antigravity (Claude) | VSCode (Copilot) | Cursor   | Kiro                    | **Windsurf** |
|-------------------------|----------------------|----------------------|------------------|----------|-------------------------|--------------|
| **Redis**               | ✅ Works             | ✅ Works             | ❌ N/A           | ⚠️ Check | ❌ Not configured       | ❌ CLI only  |
| **Sequential Thinking** | ✅ Works             | ✅ Works             | ❌ N/A           | ⚠️ Check | ✅ Works (auto-approve)  | ✅ 3 tools    |
| **GitHub**              | ✅ Works             | ❌ Hangs             | ✅ PR Tools      | ⚠️ Check | ✅ Works (git MCP)       | ❌ CLI only  |
| **Firebase**            | ✅ Works             | ❌ Hangs             | ❌ N/A           | ⚠️ Check | ❌ Not configured       | ❌ CLI only  |
| **Cloud Run**           | ✅ Works             | ❌ Hangs             | ❌ N/A           | ⚠️ Check | ❌ Not configured       | ❌ CLI only  |
| **Dart**                | ✅ Works             | ❌ Hangs             | ❌ N/A           | ⚠️ Check | ❌ Not configured       | ❌ CLI only  |
| **MySQL**               | ❌ N/A               | ❌ N/A               | ❌ N/A           | ⚠️ Check | ✅ Works (auto-approve)  | ❌ CLI only  |
| **SQLite**              | ❌ N/A               | ❌ N/A               | ❌ N/A           | ⚠️ Check | ✅ Works (auto-approve)  | ❌ CLI only  |
| **Filesystem**          | ❌ N/A               | ❌ N/A               | ❌ N/A           | ⚠️ Check | ✅ Works (auto-approve)  | ❌ CLI only  |
| **Chrome DevTools**     | ❌ N/A               | ❌ N/A               | ❌ N/A           | ⚠️ Check | ✅ Works (manual)        | ❌ CLI only  |
| **Puppeteer**           | ❌ N/A               | ❌ N/A               | ❌ N/A           | ⚠️ Check | ✅ Works (manual)        | ❌ CLI only  |
| **Lighthouse**          | ❌ N/A               | ❌ N/A               | ❌ N/A           | ⚠️ Check | ✅ Works (auto-approve)  | ❌ CLI only  |
| **Memory**              | ❌ N/A               | ❌ N/A               | ❌ N/A           | ⚠️ Check | ✅ Works (knowledge graph)| ❌ CLI only  |
| **Fetch**               | ❌ N/A               | ❌ N/A               | ❌ N/A           | ⚠️ Check | ✅ Works (manual)        | ❌ CLI only  |
| **Figma**               | ❌ N/A               | ❌ N/A               | ❌ N/A           | ⚠️ Check | ❌ Not configured       | ✅ 5 tools    |
| **Slack**               | ❌ N/A               | ❌ N/A               | ❌ N/A           | ⚠️ Check | ❌ Not configured       | ✅ 7 tools    |
| **Stripe**              | ❌ N/A               | ❌ N/A               | ❌ N/A           | ⚠️ Check | ❌ Not configured       | ✅ 9 tools    |

**Legend:**
- ✅ Works = Fully functional
- ❌ Hangs = Will cause hang/timeout
- ❌ N/A = Not available/configured
- ⚠️ Check = Verify before using

---

### Editor-Specific Configuration

#### Antigravity Editor

**Full MCP Support dengan catatan model:**

```markdown
Antigravity + Gemini 3:
├─ ✅ ALL 6 MCP servers available
├─ ✅ External API MCP works (GitHub, Firebase, Cloud Run, Dart)
├─ ✅ Local MCP works (Redis, Sequential Thinking)
└─ ✅ Recommended untuk MCP-heavy workflows

Antigravity + Claude Sonnet:
├─ ✅ Local MCP only (Redis, Sequential Thinking)
├─ ❌ External API MCP HANGS (GitHub, Firebase, Cloud Run, Dart)
├─ ✅ Use CLI alternatives (git, firebase, gcloud, flutter)
└─ ✅ Recommended untuk code analysis (no MCP needed)
```

#### VSCode + GitHub Copilot

**Limited MCP - GitHub only:**

```markdown
Available Tools:
├─ ✅ github-pull-request_activePullRequest()
├─ ✅ github-pull-request_issue_fetch()
├─ ✅ github-pull-request_openPullRequest()
├─ ✅ github-pull-request_doSearch()
├─ ✅ Workspace management tools
└─ ✅ API request tools

Not Available:
├─ ❌ Firebase MCP
├─ ❌ Cloud Run MCP
├─ ❌ Dart MCP
├─ ❌ Redis MCP
└─ ❌ Sequential Thinking MCP
```

**Workaround:** Use terminal commands untuk access services

#### Cursor AI

**Flexible MCP Support dengan Agent Mode:**

```markdown
Cursor Capabilities:
├─ ✅ Agent Mode (default) - Combines Chat, Composer, and Agent
├─ ✅ Built-in tools (file ops, terminal, code completion)
├─ ✅ Rules system (.cursor/rules.md or .mdc files)
├─ ✅ Web search (automatic, no explicit command)
├─ ✅ /Generate Cursor Rules command (from conversation)
└─ ⚠️ MCP servers (configurable via workspace settings)

MCP Configuration:
├─ ⚠️ Status depends on user workspace setup
├─ ⚠️ Requires manual configuration in Cursor settings
├─ ⚠️ Test each MCP before heavy use
└─ ✅ CLI fallbacks available when MCP unavailable

Workflow Priority:
1. Built-in Cursor tools (primary)
2. Project Rules (.cursor/rules.md)
3. MCP Servers (if configured)
4. CLI fallbacks (backup)
```

**Configuration:**
- Rules: `.cursor/rules.md` (enhanced) or `.cursor/rules/*.mdc` files
- MCP: Cursor Settings → MCP Servers (workspace-specific)
- User Rules: Global settings (applied to all projects)
- Agent Mode: Default since Feb 2025 update

#### Kiro AI

**Full MCP Support dengan 18 servers (12 active):**

```markdown
Kiro Capabilities:
├─ ✅ 18 MCP servers total (12 active, 6 disabled)
├─ ✅ Built-in tools (file ops, terminal, diagnostics)
├─ ✅ Kiro Powers (subagents: context-gatherer, general-task-execution)
├─ ✅ Auto-approve untuk read operations
└─ ✅ Recommended untuk multi-tool workflows

Active MCP Servers (12):
├─ Database: mysql, sqlite
├─ Automation: git, filesystem, chrome-devtools, puppeteer
├─ Analysis: lighthouse, sequential-thinking, memory
├─ Network: fetch
└─ Utility: time, everything

Disabled Servers (6):
├─ aws, sentry, jira, figma (need credentials)
└─ youtube-transcript, playwright (package not found)

Workflow Priority:
1. Built-in Kiro tools (primary)
2. Kiro Powers (when available)
3. MCP Servers (parallel execution)
4. CLI fallbacks (backup)
```

**Steering Files (Always Included):**
- `structure.md` - File organization rules
- `tech.md` - Tech stack & capabilities
- `efficiency.md` - Efficiency guidelines
- `product.md`, `security.md` - Additional guidelines

**Configuration:**
- MCP config: `.kiro/settings/mcp.json` (workspace-specific)
- Rules: `.kiro/rules.md` (enhanced with 18 MCP servers)
- Steering: `.kiro/steering/*.md` (auto-included)

---

#### Windsurf Editor

**Advanced AI dengan Cascade & Memories:**

```markdown
Windsurf Capabilities:
├─ ✅ Cascade AI (GPT-5.1) - Advanced reasoning
├─ ✅ Memories (48h learning) - Pattern recognition
├─ ✅ MCP Support (21 tools) - Figma, Slack, Stripe
├─ ✅ Drag & Drop Images - Design-to-code
├─ ✅ Terminal Command - Natural language CLI
├─ ✅ Lint Fixing - Auto-fix 60% success rate
└─ ✅ Continue My Work - Session persistence

MCP Tools Available:
├─ Design: Figma (5 tools)
├─ Communication: Slack (7 tools)  
├─ Payment: Stripe (9 tools)
└─ Reasoning: Sequential Thinking (3 tools)

Workflow Priority:
1. Cascade AI (primary) - Built-in GPT-5.1
2. Memories (context) - Learned patterns
3. MCP Tools (21 available) - Third-party integrations
4. CLI Fallback (backup) - Manual operations
```

**Configuration:**
- Rules: `.windsurf/rules.md` (editor-specific)
- MCP: Windsurf Settings → MCP Servers (one-click setup)
- Memories: Auto-learn after 48h analysis
- AI Model: Cascade (GPT-5.1/GPT-5.1-Codex)

**Unique Features:**
- **Memories Learning:** 78% pattern consistency for 50K+ line projects
- **Lint Fixing:** Real-time ESLint/Prettier auto-fix
- **Drag & Drop:** Generate React from images/Figma
- **Turbo Mode:** Auto-execute terminal commands

---

### 🎯 Quick Decision Guide

**"Which model/editor should I use for this task?"**

| Task                      | Best Choice          | Reason                               |
|---------------------------|----------------------|--------------------------------------|
| **GitHub PR operations**  | Antigravity + Gemini | Full GitHub MCP                      |
| **Firebase deployment**   | Antigravity + Gemini | Firebase MCP required                |
| **Cloud Run deploy**      | Antigravity + Gemini | Cloud Run MCP required               |
| **Flutter development**   | Antigravity + Gemini | Dart MCP required                    |
| **Code analysis/review**  | Any Claude model     | Superior reasoning                   |
| **Local caching**         | Any model            | Redis MCP works everywhere           |
| **Complex reasoning**     | Any model            | Sequential Thinking works everywhere |
| **Simple git operations** | Any editor           | `git` CLI sufficient                 |
| **Quick PR review**       | VSCode Copilot       | Built-in PR tools                    |
| **Multi-file refactoring** | ✅ Cursor            | Composer mode for batch changes      |
| **Code completion**       | ✅ Cursor            | Superior inline editing & autocomplete|
| **Rules from conversation** | ✅ Cursor         | /Generate Cursor Rules command       |
| **Multi-tool workflows**  | ✅ Kiro              | 12 active MCP servers, built-in tools |
| **Database operations**  | ✅ Kiro              | MySQL/SQLite MCP with auto-approve   |
| **Browser automation**   | ✅ Kiro              | Chrome DevTools + Puppeteer MCP      |
| **Performance audit**    | ✅ Kiro              | Lighthouse MCP (auto-approve)        |
| **Knowledge graph**      | ✅ Kiro              | Memory MCP for context management    |
| **Design-to-code**       | ✅ Windsurf          | Figma MCP + Drag & Drop Images       |
| **Payment integration**   | ✅ Windsurf          | Stripe MCP (9 tools)                 |
| **Team notifications**    | ✅ Windsurf          | Slack MCP (7 tools)                  |
| **Pattern learning**     | ✅ Windsurf          | Memories feature (48h learning)     |
| **Natural language CLI** | ✅ Windsurf          | Terminal Command (80% success)       |

---

### 🔄 MCP Fallback Strategy

Jika MCP tidak tersedia atau hang, gunakan CLI alternatives:

```bash
# ═══════════════════════════════════════════
# FALLBACK: CLI Alternatives untuk MCP
# ═══════════════════════════════════════════

# ── GitHub (instead of GitHub MCP) ──
git status
git log -n 10
git push origin main
gh pr list
gh pr create
gh issue list

# ── Firebase (instead of Firebase MCP) ──
firebase login --reauth
firebase projects:list
firebase deploy
firebase deploy --only hosting
firebase deploy --only functions

# ── Cloud Run (instead of Cloud Run MCP) ──
gcloud auth login
gcloud projects list
gcloud run services list
gcloud run deploy SERVICE_NAME --source .

# ── Dart/Flutter (instead of Dart MCP) ──
flutter doctor
flutter devices
flutter run
flutter run -d chrome
flutter build apk
flutter test

# ── Redis (if Redis MCP unavailable) ──
redis-cli ping
redis-cli SET key "value"
redis-cli GET key
redis-cli KEYS "pattern:*"
```

---

### ⚠️ Pre-Session MCP Check Protocol

**Sebelum mulai session baru, AI agent HARUS:**

```markdown
1. [ ] Identify current editor (Antigravity/VSCode/Cursor/Kiro)
2. [ ] Identify active model (Gemini/Claude/GPT)
3. [ ] Check MCP compatibility matrix above
4. [ ] For task requiring external MCP:
       - If Claude: Use CLI fallback or switch to Gemini
       - If Gemini: Proceed with MCP
       - If unsure: Test simple MCP call first (Redis SET/GET)
5. [ ] Warn user if MCP incompatibility detected
```

**Example Warning Message:**

```markdown
⚠️ **MCP Compatibility Notice**

Anda menggunakan Claude Sonnet. Task ini memerlukan GitHub MCP 
yang tidak compatible dengan Claude.

**Options:**
1. Switch ke Gemini 3 model
2. Saya gunakan `git` CLI sebagai alternatif

Pilih opsi yang diinginkan?
```

---

## ⚡ Database Performance

> Berdasarkan benchmark 2026-01-04

### Hasil Benchmark

| Database   | PHP Library  | CLI Tool       | Difference      |
|------------|--------------|----------------|-----------------|
| **MySQL**  | PDO: 3.20ms  | mysql: ~75ms   | **23x faster**  |
| **Oracle** | OCI8: 2.25ms | SQLPlus: 355ms | **157x faster** |

### Guidelines

**✅ SELALU gunakan PHP libraries untuk aplikasi:**
```php
// MySQL - PDO (recommended)
$pdo = new PDO('mysql:host=127.0.0.1;port=3306;dbname=db', 'root', '');

// Oracle - OCI8
$conn = oci_connect('user', 'pass', '//localhost:1521/ORCL');
```

**⚠️ CLI tools hanya untuk admin tasks:**
```bash
# OK untuk interactive/one-off
mysql -h 127.0.0.1 -u root
sqlplus user/pass@ORCL
```

**❌ JANGAN gunakan CLI dalam loops:**
```php
// SALAH - 157x lebih lambat!
for ($i = 0; $i < 100; $i++) {
    exec("sqlplus user/pass@ORCL @query.sql");
}
```

### Connection Info

| Database | Host      | Port | User    | Notes                                    |
|----------|-----------|------|---------|------------------------------------------|
| MySQL    | 127.0.0.1 | 3306 | root    | Password kosong                          |
| Oracle   | localhost | 1521 | testphp | Password: testphp123                     |

> 📚 **Detail:** `.agent/memory/entries/decisions/php-libraries-over-cli-tools.md`

---

## 🎨 Web Apps UI/UX Guidelines

### Design Principles
- **Mobile-first** approach untuk semua development
- **Accessibility** compliance (WCAG 2.1)
- **Performance-oriented** design (Core Web Vitals)
- **Consistent** design system dengan reusable components

### CSS Best Practices

| Guideline | Example |
|-----------|---------|
| Use CSS Variables | `var(--primary-color)` |
| BEM Naming | `.card__title--active` |
| Mobile-first queries | `@media (min-width: 768px)` |
| Prefer flexbox/grid | Hindari float layouts |

```css
/* ✅ BENAR - CSS Variables + Modern Layout */
:root {
    --primary: #3b82f6;
    --radius: 0.5rem;
}
.card {
    display: grid;
    gap: 1rem;
    border-radius: var(--radius);
}
```

### JavaScript Guidelines
- **ES6+** features (arrow functions, destructuring, modules)
- **async/await** over callbacks
- **Event delegation** untuk dynamic content
- **Lazy loading** untuk performance

```javascript
// ✅ BENAR - Modern JS Pattern
const loadData = async () => {
    const { data } = await fetch('/api/items').then(r => r.json());
    return data;
};
```

### UI Framework Recommendations

| Project Type | Recommended Framework |
|--------------|----------------------|
| Simple landing | Vanilla CSS + JS |
| Medium webapp | Bootstrap 5 / TailwindCSS |
| Complex SPA | React / Vue + CSS-in-JS |
| E-commerce | Next.js / Nuxt.js |

### Browser Testing Checklist
- [ ] Chrome, Firefox, Safari, Edge
- [ ] Mobile: iOS Safari, Chrome Android
- [ ] Lighthouse score ≥ 90
- [ ] No console errors

---

## 🚀 Node.js/PM2 Service Management

> Untuk project microservices dengan Kafka, Express, atau API services

### PM2 Quick Commands

```bash
# Start services
pm2 start ecosystem.config.js
pm2 start ecosystem.config.js --only service-name

# Stop/Restart
pm2 stop service-name
pm2 restart all
pm2 reload service-name  # Zero-downtime reload

# Monitoring
pm2 list
pm2 monit
pm2 logs
pm2 logs service-name --lines 100
pm2 logs --err --lines 50  # Errors only

# Persist & Auto-start
pm2 save
pm2 startup
```

### ⚠️ Critical: Kafka Consumer Rules

```javascript
// ecosystem.config.js
{
  name: 'kafka-consumer',
  instances: 1,       // ⚠️ NEVER > 1! Causes message duplication
  exec_mode: 'fork',  // NOT cluster!
}
```

**Why?** Multiple Kafka consumers in same group cause message duplication due to partition rebalancing.

### API Instances (Can Scale)

```javascript
{
  name: 'api-server',
  instances: 2,       // Can scale as needed
  exec_mode: 'cluster' // Load balanced
}
```

### Portable Deployment Checklist

```
✅ WAJIB COPY:
├── package.json, package-lock.json
├── .env.example (NOT .env!)
├── ecosystem.config.js
├── src/**/*.js
└── database/schema.sql

❌ JANGAN COPY:
├── node_modules/ (npm install ulang)
├── .env (buat baru di server)
├── logs/
└── .git/
```

> 📚 **Detail:** `.agent/memory/entries/patterns/pm2-ecosystem-startup-pattern.md`

---

## 📱 Mobile Development (Android/Flutter)

### Flutter Environment
- **Flutter SDK:** Path verified in `.agent/context/environment.json`
- **Android Studio:** Emulator & SDK Support
- **MCP Server:** `dart-mcp-server` available

### Quick Commands

```bash
# Create new project
flutter create my_app

# Run on device/emulator
flutter run

# Build release APK
flutter build apk --release

# Analyze & format code
flutter analyze
dart format .

# Run tests
flutter test
```

### Flutter Best Practices

| Practice | Description |
|----------|-------------|
| **const constructors** | Use const untuk widget statis |
| **State management** | BLoC/Provider/Riverpod |
| **Null safety** | Handle null dengan `?` dan `!` |
| **Widget extraction** | Split ke files terpisah |

```dart
// ✅ BENAR - Const + Clean Structure
class ProductCard extends StatelessWidget {
  const ProductCard({super.key, required this.product});
  final Product product;
  
  @override
  Widget build(BuildContext context) {
    return const Card(child: ...);
  }
}
```

### Project Structure

```
lib/
├── main.dart
├── models/          # Data models
├── screens/         # Full page widgets
├── widgets/         # Reusable components
├── services/        # API, database
└── utils/           # Helpers, constants
```

### MCP Dart Tools Available

| Tool | Fungsi |
|------|--------|
| `launch_app` | Launch Flutter app |
| `hot_reload` | Apply code changes |
| `hot_restart` | Restart app state |
| `get_widget_tree` | Inspect widget hierarchy |
| `run_tests` | Execute Flutter tests |
| `flutter_driver` | UI automation |

---

## 📐 Responsive Design & Accessibility

### Breakpoints (Bootstrap 5)

| Breakpoint | Size | Target Device |
|------------|------|---------------|
| xs | <576px | Mobile portrait |
| sm | ≥576px | Mobile landscape |
| md | ≥768px | Tablet |
| lg | ≥992px | Desktop |
| xl | ≥1200px | Large desktop |
| xxl | ≥1400px | Extra large |

### Media Query Pattern

```css
/* Mobile first - base styles untuk mobile */
.container { padding: 1rem; }

/* Tablet ke atas */
@media (min-width: 768px) {
    .container { padding: 2rem; }
}

/* Desktop ke atas */
@media (min-width: 1024px) {
    .container { max-width: 1200px; }
}
```

### Accessibility Checklist (WCAG 2.1)

| Requirement | Implementation |
|-------------|----------------|
| **Alt text** | Semua `<img>` punya `alt` |
| **Color contrast** | Ratio ≥ 4.5:1 |
| **Keyboard nav** | `tabindex`, focus states |
| **ARIA labels** | Interactive elements |
| **Focus indicator** | Visible `:focus` styles |

```html
<!-- ✅ BENAR - Accessible Button -->
<button 
    aria-label="Close dialog"
    class="btn-close"
    tabindex="0">
    <span aria-hidden="true">&times;</span>
</button>
```

---

## 🧪 Testing Strategy

> **📁 Test Location:** `test/` - Lihat [`test/README.md`](test/README.md) untuk panduan lengkap.

### Project Test Structure

```
test/
├── database/       ← Database testing (Oracle, MySQL, benchmarks)
├── server/         ← Server-side testing (PHP, Redis, HTTP)
├── python/         ← Python testing (pytest, unit tests)
└── temp/           ← Temporary test files (not committed)
```

### Testing Levels

| Type | Tools | Location | When to Run |
|------|-------|----------|-------------|
| **Unit** | pytest, PHPUnit | `test/python/`, `test/server/` | Setiap commit |
| **Database** | PHP PDO/OCI8 | `test/database/` | Sebelum deploy |
| **Integration** | Postman, Cypress | - | Setiap PR |
| **E2E** | Playwright, Selenium | - | Before release |

### Quick Test Commands

```bash
# Python Tests
cd test/python && pytest -v

# Database Tests
php test/database/oracle/test-oracle-final.php
php test/database/mysql/test-mysql-connection.php

# Server Tests
php test/server/redis-test.php
php test/server/mysql-test.php

# Benchmarks
php test/database/benchmarks/benchmark-mysql-access.php
```

### 🤖 AI Agent Test Guidelines

1. **Python tests** → `test/python/test_*.py`
2. **PHP database tests** → `test/database/<db_name>/`
3. **PHP server tests** → `test/server/`
4. **Temporary files** → `test/temp/` (auto-cleanup)

> ⚠️ **JANGAN buat test files di ROOT!** Selalu gunakan struktur `test/` di atas.

---

## 🐞 Debugging & Troubleshooting Patterns

> **NEW:** Comprehensive debugging guides for all platforms.

| Platform | Pattern File | Key Capabilities |
|----------|--------------|------------------|
| **Python** | [python-debug-workflow.md](.agent/memory/entries/patterns/python-debug-workflow.md) | `pdb`, logging, traceback, automation |
| **PowerShell** | [powershell-debug-pattern.md](.agent/memory/entries/patterns/powershell-debug-pattern.md) | Error handling, strict mode, script debug |
| **Browser** | [browser-devtools-integration.md](.agent/memory/entries/patterns/browser-devtools-integration.md) | Console logs, network inspection, overlays |
| **Node.js** | [nodejs-debug-pattern.md](.agent/memory/entries/patterns/nodejs-debug-pattern.md) | `--inspect`, PM2 logs, async error handling |

### Quick Debug Checklist

1. **Python**: Gunakan `python script.py` jangan `python -c` multiline.
2. **PowerShell**: Set `$ErrorActionPreference = "Stop"` di awal script.
3. **Browser**: Gunakan `browser_subagent` untuk capture console logs.
4. **Node.js**: Cek `pm2 logs --err` untuk production errors.

---

## 🧠 Memory System

Agent memiliki akses ke knowledge base di `.agent/memory/`.

### Available Scripts:

| Script | Fungsi |
|--------|--------|
| `save-knowledge.py` | Simpan knowledge baru (dengan duplicate detection) |
| `search-knowledge.py` | Cari knowledge by keyword/tag/category |
| `validate-index.py` | Validasi & fix index consistency |
| `backup-memory.py` | Backup/restore (ZIP compressed, auto-timestamp) |
| `detect-environment.py` | Deteksi environment project |
| `sync-agents-stats.py` | Auto-sync statistics di AGENTS.md |


### Kategori Memory:
- **gotchas/** - Production bugs & fixes (🚨 CRITICAL)
- **patterns/** - Code patterns yang works
- **decisions/** - Architectural decisions
- **context/** - Project guides & references

### Cari Knowledge:
- **Via Script:** `python .agent/.agent/scripts/search-knowledge.py "keyword"`
- **Manual:** Cek `.agent/memory/index.json` untuk daftar semua entries

### Backup:
Semua backup tersimpan di `_backups/` dengan format `memory_backup_YYYYMMDD_HHMMSS.zip`.

---

## 📁 Project Structure

```
project-root/
├── AGENTS.md              ← Entry point (You are here)
├── .github/
│   └── copilot-instructions.md  ← GitHub Copilot support
├── .cursor/
│   └── rules.md           ← Cursor AI support
├── .kiro/
│   └── rules.md           ← Kiro AI support
├── .agent/
│   ├── memory/            ← Knowledge persistence
│   │   ├── index.json     ← Searchable index
│   │   └── entries/
│   │       ├── gotchas/   ← Critical bugs
│   │       ├── patterns/  ← Code patterns
│   │       ├── decisions/ ← Arch decisions
│   │       └── context/   ← Project guides
│   ├── context/           ← Environment detection
│   └── workflows/         ← AI workflows
├── scripts/               ← Automation scripts
└── _backups/              ← Auto-compressed backups
```

---

## 🔗 Related Files

- [Memory Index](./.agent/memory/index.json)
- [Project Context](./.agent/context/project-context.json)
- [Session Init](./.agent/context/session-init.md)

---

## 🚀 Session Initialization Protocol

**UNTUK AI AGENT:** Saat membuka project ini, WAJIB baca file-file berikut:

### 1. Critical Files (MUST READ!)
```
.agent/context/session-init.md       ← Initialization protocol
.agent/context/project-context.json  ← Project info
.agent/memory/index.json             ← Knowledge index
.agent/memory/entries/gotchas/*.md   ← Critical gotchas
```

### 2. Auto-Load Behavior

AI agent akan otomatis:
- ✅ Load project context & environment
- ✅ Load semua critical gotchas
- ✅ Load top 5 patterns yang sering dipakai
- ✅ Siap bekerja tanpa perlu dijelaskan ulang

### 3. End of Session Protocol

Sebelum session berakhir:
- ✅ Simpan semua learnings baru
- ✅ Update memory index
- ✅ Buat summary report

**Detail lengkap:** Lihat `.agent/workflows/cara-simpan-pengetahuan-dari-chat.md`

---

*Last Updated: 2026-01-07*  
*Stats auto-sync: `python .agent/.agent/scripts/sync-agents-stats.py`*
