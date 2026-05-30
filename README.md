<div align="center">
  **English** | 
  <a href="README.id.md">Bahasa Indonesia</a>
</div>

# andy-universal-agent-rules

> 🧠 **Universal AI Agent Knowledge Base & Rules System**
> 
> Make your AI coding assistant smarter. Works with any project, any editor.

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

## 🎬 Quick Start

**New to andy-universal-agent-rules?** Get up and running in 60 seconds:

### Video Tutorial (Coming Soon)
<!-- 
[![Quick Start Video](https://img.youtube.com/vi/YOUR_VIDEO_ID/0.jpg)](https://youtu.be/YOUR_VIDEO_ID)
-->

### 3-Step Install

1. **Create a project folder**
   ```bash
   mkdir my-project && cd my-project
   ```

2. **Run the installer**
   - **Windows:** `iwr -useb https://raw.githubusercontent.com/andiupn/andy-universal-agent-rules/main/install.ps1 | iex`
   - **Linux/Mac:** `curl -sL https://raw.githubusercontent.com/andiupn/andy-universal-agent-rules/main/install.sh | bash`

3. **Start using workflows**
   - Tell your AI: `"Run the maintenance workflow"`
   - Or: `"Save learnings from this chat"`

That's it! Your AI now has memory. 🧠✨

---

## 📂 Before You Install

> **Important:** The installer will create `.agent/` folder and `AGENTS.md` file **in your current directory**.

### ✅ Recommended Setup

**Create a dedicated folder first:**

```bash
# Example 1: New project
mkdir my-awesome-project
cd my-awesome-project
# Now run installer here ↓

# Example 2: Existing project
cd /path/to/your/existing/project
# Now run installer here ↓

# Example 3: Windows (Laragon www/)
mkdir c:\laragon\www\my-project
cd c:\laragon\www\my-project
# Now run installer here ↓
```

### ❌ Common Mistake

```bash
# ❌ WRONG - Installing directly in www/ root
cd c:\laragon\www\
iwr -useb ... | iex  # This creates .agent/ in www/ directly!

# ✅ CORRECT - Create project folder first
cd c:\laragon\www\
mkdir my-project
cd my-project
iwr -useb ... | iex  # Now .agent/ is in my-project/
```

### 📁 What Gets Installed

After installation, your folder will look like this:

```
your-project/               # ← Your current directory
├── AGENTS.md               # ← AI reads this first
└── .agent/
    ├── scripts/            # ← Python automation scripts (6 files)
    ├── workflows/          # ← AI workflows (6 files) 🆕 CORE FEATURE
    ├── memory/             # ← Your knowledge base
    │   ├── index.json
    │   └── entries/
    │       ├── gotchas/
    │       ├── patterns/
    │       ├── decisions/
    │       └── context/
    └── context/            # ← Environment detection
        └── environment.json
```

---

## ⚡ Quick Install

### Linux/Mac (One-liner)
```bash
curl -sL https://raw.githubusercontent.com/andiupn/andy-universal-agent-rules/main/install.sh | bash
```

### Windows PowerShell (One-liner)
```powershell
iwr -useb https://raw.githubusercontent.com/andiupn/andy-universal-agent-rules/main/install.ps1 | iex
```

### Manual
```bash
git clone https://github.com/andiupn/andy-universal-agent-rules.git
cp -r andy-universal-agent-rules/.agent ./
cp andy-universal-agent-rules/AGENTS.md ./
rm -rf andy-universal-agent-rules  # cleanup
```

---

## 🎯 What is This?

A **knowledge management system** for AI coding assistants. Instead of explaining the same bugs and solutions every chat session, your AI remembers:

- ❌ **Gotchas** - Production bugs & how to avoid them
- ✅ **Patterns** - Code patterns that work
- 📐 **Decisions** - Architectural choices & why
- 📚 **Context** - Project-specific guides

**Result:** Your AI assistant gets smarter over time.

---

## 💡 Real-World Example

> See how knowledge base saves hours of debugging time.

### Scenario: The MySQL Connection Bug 🐛

**Day 1 - New Developer Joins:**
```
Developer: "Help, MySQL connection refused!"
AI: "I don't know your setup. Try checking the port..."
Developer: *Googles for 30 minutes*
Solution: Use 127.0.0.1 instead of localhost on Windows
```

**Developer saves the learning:**
```bash
python .agent/scripts/save-knowledge.py --category gotchas \
  "MySQL Windows: Use 127.0.0.1 instead of localhost"
```

**Day 30 - Another Developer Gets Same Error:**
```
Developer: "Help, MySQL connection refused!"
AI: "I found a gotcha in your knowledge base! 
     Use 127.0.0.1 instead of localhost on Windows."
Developer: *Fixed in 5 seconds* ✅
```

**Time saved:** 30 minutes → 5 seconds 🚀

### More Examples:

| Problem | Without Knowledge Base | With Knowledge Base |
|---------|----------------------|---------------------|
| Oracle commit bug | Debug 2 hours | Fixed in 1 minute |
| PHP version conflict | Google 15 minutes | AI knows immediately |
| API rate limit | Trial & error | Pattern already saved |

**Your AI learns from YOUR mistakes so you never repeat them!**

---

## 🔧 Supported Editors

| Editor | Status |
|--------|--------|
| **VSCode + GitHub Copilot** | ✅ |
| **Cursor AI** | ✅ |
| **Kiro AI** | ✅ |
| **Windsurf Editor** | ✅ |
| **Antigravity (Gemini/Claude)** | ✅ |

---

## 🔧 Supported OS

| OS | Installer |
|----|-----------|
| **Linux** | `install.sh` |
| **macOS** | `install.sh` |
| **Windows** | `install.ps1` |

---

## 📁 What's Installed

```
your-project/
├── AGENTS.md               # AI reads this first
└── .agent/
    ├── scripts/            # Automation scripts
    │   ├── save-knowledge.py
    │   ├── search-knowledge.py
    │   ├── validate-index.py
    │   └── backup-memory.py
    ├── workflows/          # 🆕 AI workflows (CORE FEATURE)
    │   ├── maintenance.md
    │   ├── maintenance-agent-rules.md
    │   ├── save-from-chat.md
    │   ├── search.md
    │   ├── simpan-pengetahuan-dari-chat.md
    │   └── simpan-pengetahuan-dari-folder.md
    ├── memory/             # Your knowledge base
    │   ├── index.json
    │   └── entries/
    │       ├── gotchas/
    │       ├── patterns/
    │       ├── decisions/
    │       └── context/
    ├── context/            # Environment detection
    │   └── environment.json
```

---

## 💡 How to Use

### 🎮 Interactive CLI (Recommended)

The easiest way to manage your knowledge base - **no Python required!**

**Windows:**
```powershell
powershell -File .agent/scripts/agent-cli.ps1
```

**Linux/Mac:**
```bash
bash .agent/scripts/agent-cli.sh
```

This opens an interactive menu:
```
╔════════════════════════════════════════════════════╗
║       andy-universal-agent-rules CLI               ║
╠════════════════════════════════════════════════════╣
║ 1. 🔍 Search Knowledge                             ║
║ 2. 💾 Save New Knowledge                           ║
║ 3. 🔧 Run Maintenance                              ║
║ 4. 💼 Backup Memory                                ║
║ 5. 📊 Show Stats                                   ║
║ 6. ✅ Validate Index                               ║
╚════════════════════════════════════════════════════╝
```

> 💡 **Tip:** The CLI auto-detects Python. If found, uses full features. If not, uses native scripts with basic functionality.

---

### 📜 Python Scripts (Advanced)

For automation or scripting, use Python directly:

```bash
# Save knowledge
python .agent/scripts/save-knowledge.py --category gotchas "Your gotcha here"

# Search knowledge
python .agent/scripts/search-knowledge.py "mysql connection"

# Validate index
python .agent/scripts/validate-index.py --fix

# Backup
python .agent/scripts/backup-memory.py
```

---

## 🔄 Using Workflows

After installation, you get **6 AI-powered workflows** that make knowledge management effortless. Just talk to your AI!

### `/maintenance` - Keep Knowledge Base Healthy

Validates index, creates backups, updates environment automatically.

**Usage:**
```
"Run the maintenance workflow"
"Do maintenance on the knowledge base"
```

**What it does:**
- ✅ Validates `index.json` integrity
- ✅ Creates backup of `.agent/memory/`
- ✅ Updates environment detection
- ✅ Syncs statistics to AGENTS.md

---

### `/save-from-chat` - Save Current Session Learnings

Scans your chat for gotchas, patterns, and decisions to save automatically.

**Usage:**
```
"Save learnings from this chat"
"Save knowledge from our conversation"
```

**What it does:**
- 🔍 Analyzes chat history
- 📝 Extracts gotchas, patterns, decisions
- 💾 Saves to `.agent/memory/entries/`
- 🔄 Updates index automatically

---

### `/search` - Find Existing Knowledge

Quick search before starting work to avoid reinventing solutions.

**Usage:**
```
"Search for MySQL gotchas"
"Find knowledge about authentication"
```

**What it does:**
- 🔎 Searches across all categories
- 📊 Ranks by relevance
- 📄 Shows matching entries with context

---

### Indonesian Workflows 🇮🇩

For Indonesian speakers:
- `/simpan-pengetahuan-dari-chat` - Save dari percakapan
- `/simpan-pengetahuan-dari-folder` - Save dari folder

---

**Pro Tip:** Workflows work best with:
- ✅ Antigravity (Gemini/Claude)
- ✅ Cursor (Agent Mode)
- ✅ Kiro AI

For other editors, use Python scripts directly:
```bash
python .agent/scripts/save-knowledge.py --category gotchas "Your gotcha"
```

---

## 🧠 The Magic: Priority Loading

When an AI opens your project, it automatically loads:

1. 🚨 **Critical Gotchas** (avoid bugs)
2. 📊 **Environment Info** (OS, stack, versions)
3. 🔝 **Top Patterns** (most-used solutions)
4. 📝 **Project Context** (what this project is about)

**Your AI knows your project before you even ask.**

---

## ❓ FAQ

### How is this different from just using `.cursorrules`?

**`.cursorrules`** is a single static file that AI reads once.

**andy-universal-agent-rules** is a **dynamic knowledge management system**:
- ✅ **Searchable knowledge base** - Find solutions from past bugs
- ✅ **Scripts for automation** - Save, search, validate, backup
- ✅ **Workflows** - Pre-built commands like `/maintenance`, `/save-from-chat`
- ✅ **Cross-editor support** - Works with Cursor, VSCode, Kiro, Windsurf, Antigravity
- ✅ **Grows over time** - Your AI gets smarter as you add knowledge

Think of it as `.cursorrules` + Git for your AI's memory.

### Can I use this with multiple projects?

**Yes!** Install in each project separately:

```bash
# Project 1
cd ~/projects/my-app
iwr -useb https://raw.githubusercontent.com/andiupn/andy-universal-agent-rules/main/install.ps1 | iex

# Project 2
cd ~/projects/another-app
iwr -useb https://raw.githubusercontent.com/andiupn/andy-universal-agent-rules/main/install.ps1 | iex
```

Each project has its own independent knowledge base in `.agent/memory/`.

### How do I uninstall?

Simply delete the folders:

```bash
# Remove agent rules
rm -rf .agent
rm AGENTS.md

# Or on Windows PowerShell
Remove-Item -Recurse -Force .agent
Remove-Item AGENTS.md
```

**Optional:** Remove from git history if committed:
```bash
git rm -r .agent AGENTS.md
git commit -m "Remove andy-universal-agent-rules"
```

### Does this work offline?

**Yes!** After installation, everything works offline:
- ✅ Scripts run locally (Python stdlib only)
- ✅ Knowledge base stored locally
- ✅ No API calls or internet required

**Only internet needed:**
- During installation (to download files)
- If using AI features (your AI needs internet, not this tool)

### Will this slow down my editor?

**No!** This system is:
- ✅ **Passive** - Only read by AI when needed
- ✅ **Lightweight** - Python scripts ~50KB total
- ✅ **Fast** - All scripts run <500ms (see benchmarks)

Your editor performance is unaffected.

---

## 🔧 Troubleshooting

### Python not found

**Error:** `python: command not found` or `'python' is not recognized`

**Solution:**

**Windows:**
```powershell
# Download Python from python.org
# Or install via winget
winget install Python.Python.3.12

# Verify installation
python --version
```

**Linux/Mac:**
```bash
# Ubuntu/Debian
sudo apt install python3

# macOS
brew install python3

# Verify
python3 --version
```

### Permission errors during installation

**Error:** `Permission denied` or `Access is denied`

**Solution:**

**Windows:**
```powershell
# Run PowerShell as Administrator
# Right-click PowerShell → "Run as administrator"
```

**Linux/Mac:**
```bash
# Don't use sudo with installer!
# Instead, ensure you have write access to current directory
cd ~/projects/my-project  # Your user directory
curl -sL ... | bash
```

### Git conflicts with `.agent/` folder

**Error:** Merge conflicts in `.agent/memory/`

**Solution:**

**Option 1: Keep your version (recommended)**
```bash
git checkout --ours .agent/memory/
git add .agent/memory/
git commit
```

**Option 2: Merge manually**
```bash
# Resolve conflicts in .agent/memory/index.json
# Keep both knowledge bases if needed
git add .agent/memory/
git commit
```

**Prevention:** Add to `.gitignore`:
```
.agent/memory/entries/
.agent/context/environment.json
```

### Workflows not working / not found

**Error:** AI says "workflow not found" or `/maintenance` doesn't work

**Solution:**

1. **Verify workflows installed:**
```bash
ls .agent/workflows/
# Should show: maintenance.md, save-from-chat.md, etc.
```

2. **Reinstall if missing:**
```bash
iwr -useb https://raw.githubusercontent.com/andiupn/andy-universal-agent-rules/main/install.ps1 | iex
```

3. **Check editor compatibility:**
   - Workflows work with: Antigravity, Cursor (Agent Mode), Kiro
   - For VSCode/Copilot: Use scripts directly instead

### Scripts show `ModuleNotFoundError`

**Error:** `ModuleNotFoundError: No module named 'xyz'`

**This should NOT happen!** All scripts use Python stdlib only.

**If it occurs:**
```bash
# Check Python version (need 3.10+)
python --version

# Verify it's using system Python, not a venv
which python  # Linux/Mac
where python  # Windows
```

**Still broken?** [Report issue](https://github.com/andiupn/andy-universal-agent-rules/issues)

---

## 💖 Support This Project

If this saves you hours of debugging, consider supporting:

| Platform | Link |
|----------|------|
| **Ko-fi** | [ko-fi.com/andiupn](https://ko-fi.com/andiupn) |
| **Patreon** | [patreon.com/AndiUpn](https://www.patreon.com/cw/AndiUpn) |
| **Trakteer** 🇮🇩 | [trakteer.id/andi_upn](https://trakteer.id/andi_upn/gift) |
| **Saweria** 🇮🇩 | [saweria.co/andiupn](https://saweria.co/andiupn) |

---

## 📜 License

MIT License - Use it anywhere, modify freely.

**Version tracking:** See [CHANGELOG.md](CHANGELOG.md) for release history.

---

## 📦 AI Agent Template Ecosystem

Kami menyediakan berbagai template workspace siap pakai yang dioptimalkan secara mendalam untuk kolaborasi AI Agent:

- 🛰️ **[AntiGravity Templates](https://github.com/andiupn/antigravity-starter)** — Teroptimasi untuk Gemini 3.5 Flash & Next.js 16/React 19/Flutter.
- 🤖 **[Claude Code Templates](https://github.com/andiupn/claude-code-starter)** — Teroptimasi untuk Claude Code CLI.
- 🧠 **[Codex Templates](https://github.com/andiupn/codex-starter)** — Teroptimasi untuk OpenAI/Codex API.

*Dapatkan Edisi PRO (Premium Multi-Project Workspace) dengan fitur terlengkap untuk masing-masing stack di [kuncimu.com](https://kuncimu.com).*

---

## 🌟 Star This Repo!

If you find this useful, please ⭐ star this repo to help others find it!

---

*Made with ❤️ by Andi UPN*