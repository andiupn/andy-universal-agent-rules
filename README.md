# andy-universal-agent-rules

> 🧠 **Universal AI Agent Knowledge Base & Rules System**
> 
> Make your AI coding assistant smarter. Works with any project, any editor.

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![GitHub stars](https://img.shields.io/github/stars/andiupn/andy-universal-agent-rules?style=social)](https://github.com/andiupn/andy-universal-agent-rules/stargazers)
[![GitHub forks](https://img.shields.io/github/forks/andiupn/andy-universal-agent-rules?style=social)](https://github.com/andiupn/andy-universal-agent-rules/network)
[![Ko-Fi](https://img.shields.io/badge/Ko--fi-Support-ff5f5f?logo=ko-fi)](https://ko-fi.com/andiupn)

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
    ├── memory/             # Your knowledge base
    │   ├── index.json
    │   └── entries/
    │       ├── gotchas/
    │       ├── patterns/
    │       ├── decisions/
    │       └── context/
    ├── context/            # Environment detection
    │   └── environment.json
    └── workflows/          # AI workflows
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

---

## 🌟 Star This Repo!

If you find this useful, please ⭐ star this repo to help others find it!

---

*Made with ❤️ by Andi UPN*