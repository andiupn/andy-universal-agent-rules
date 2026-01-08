# andy-universal-agent-rules

> 🧠 **Universal AI Agent Knowledge Base & Rules System**
> 
> Make your AI coding assistant smarter. Works with any project, any editor.

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![GitHub stars](https://img.shields.io/github/stars/andiupn/andy-universal-agent-rules?style=social)](https://github.com/andiupn/andy-universal-agent-rules/stargazers)
[![GitHub forks](https://img.shields.io/github/forks/andiupn/andy-universal-agent-rules?style=social)](https://github.com/andiupn/andy-universal-agent-rules/network)
[![Ko-Fi](https://img.shields.io/badge/Ko--fi-Support-ff5f5f?logo=ko-fi)](https://ko-fi.com/andiupn)

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

### Save Knowledge from Chat
When your AI solves a tricky bug, save it:
```bash
python .agent/scripts/save-knowledge.py --category gotchas "MySQL: Use 127.0.0.1 instead of localhost on Windows"
```

### Search Knowledge
Before starting work, search existing knowledge:
```bash
python .agent/scripts/search-knowledge.py "mysql connection"
```

### Validate Index
Keep your knowledge base healthy:
```bash
python .agent/scripts/validate-index.py --fix
```

### Backup
Before major changes:
```bash
python .agent/scripts/backup-memory.py
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

## 🌟 Star This Repo!

If you find this useful, please ⭐ star this repo to help others find it!

---

*Made with ❤️ by Andi UPN*