# AGENTS.md

> AI Agent Instructions for this project. Supported by GitHub Copilot, Cursor, Kiro, Windsurf, Antigravity.

*Stats: 0 entries (start building your knowledge base!)*

---

## 📋 Project Overview

**Project:** [Your Project Name]  
**Purpose:** [What this project does]  
**Stack:** Auto-detected in `.agent/context/environment.json`

---

## 🛠️ Tech Stack & Environment

> **NOTE:** Actual versions are auto-detected. Run `python .agent/scripts/detect-environment.py` to update.

Check your environment:
```bash
python .agent/scripts/detect-environment.py
cat .agent/context/environment.json
```

---

## ⚡ Quick Commands

```bash
# Knowledge Management (Core Features)
python .agent/scripts/save-knowledge.py --category gotchas "Your gotcha here"
python .agent/scripts/search-knowledge.py "search term"
python .agent/scripts/validate-index.py --fix

# Backup & Environment
python .agent/scripts/backup-memory.py
python .agent/scripts/detect-environment.py

# Interactive CLI (Recommended - No Python needed!)
bash .agent/scripts/agent-cli.sh        # Linux/Mac
powershell .agent/scripts/agent-cli.ps1 # Windows
```

---

## 🔄 Workflows (AI-Powered)

Tell your AI assistant to run these workflows:

| Workflow | Command | What It Does |
|----------|---------|--------------|
| **Maintenance** | "Run maintenance workflow" | Validate, backup, update environment |
| **Save from Chat** | "Save learnings from this chat" | Extract & save knowledge from session |
| **Search** | "Search for [topic]" | Find existing knowledge |

> 📁 Workflow files: `.agent/workflows/`

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

## ⚠️ Critical Gotchas

> **Your knowledge base starts here!** Add gotchas as you discover them.

### Example Format:

```markdown
### [Short Title] 🚨

**Problem:** What went wrong
**Solution:** How to fix it

// Code example if applicable
```

### Your Gotchas:

<!-- Add your gotchas below as you discover them -->

---

## ✅ Patterns That Work

> Save patterns that work well in your project.

### Example Format:

```markdown
### [Pattern Name]

**When to use:** Condition
**How:** Implementation

// Code example
```

### Your Patterns:

<!-- Add your patterns below -->

---

## 📐 Architecture Decisions

> Document important decisions and why you made them.

### Example Format:

```markdown
### [Decision Title]

**Decision:** What was decided
**Reason:** Why this choice
**Date:** YYYY-MM-DD
```

### Your Decisions:

<!-- Add your decisions below -->

---

## 📝 Coding Conventions

### General
- Use **UTF-8** encoding for all files
- Use **4 spaces** for indentation (no tabs)
- Max line length: **120 characters**

### Language-Specific

| Language | Style Guide | Key Rules |
|----------|-------------|-----------|
| **PHP** | PSR-12 | Type hints, docblocks |
| **JavaScript** | ESLint | const > let, async/await |
| **Python** | PEP 8 | Type hints, f-strings |

---

## 🔐 Safety Rules

### ⚠️ Always Confirm Before:
1. **Delete operations:** `rm`, `DROP TABLE`, `TRUNCATE`
2. **Git destructive:** `reset --hard`, `clean -fd`, force push
3. **Package install:** `npm install`, `composer require`
4. **External requests:** API calls to production

### 🚫 Sensitive Files (No Access):
```
.env, .env.*, *.env
*.pem, *.key, id_rsa
config/database.php
credentials/*, secrets/*
```

---

## 📂 File Organization

> Keep your project clean!

| File Type | Location | Notes |
|-----------|----------|-------|
| **Tests** | `test/` | Unit tests, integration tests |
| **Scripts** | `scripts/` or `.agent/scripts/` | Automation tools |
| **Temp files** | `test/temp/` | Debug files (gitignored) |
| **Documentation** | `docs/` | Project docs |

### ❌ Don't create files in project root unless necessary!

---

## 🧠 Memory System

Your AI's knowledge is stored in:

```
.agent/
├── memory/
│   ├── index.json          # Knowledge index
│   └── entries/
│       ├── gotchas/        # Bugs & how to avoid
│       ├── patterns/       # Code patterns that work
│       ├── decisions/      # Architecture decisions
│       └── context/        # Project information
├── context/
│   └── environment.json    # Auto-detected environment
└── workflows/              # AI workflow definitions
```

### Adding Knowledge

```bash
# Via script
python .agent/scripts/save-knowledge.py --category gotchas "Your learning here"

# Or create file manually
# .agent/memory/entries/gotchas/your-gotcha.md
```

---

## 💡 Getting Started

1. **Run environment detection:**
   ```bash
   python .agent/scripts/detect-environment.py
   ```

2. **Try the interactive CLI:**
   ```bash
   bash .agent/scripts/agent-cli.sh
   ```

3. **Start saving knowledge!**
   - When you solve a bug → Save as gotcha
   - When you find a good pattern → Save as pattern
   - When you make a decision → Save as decision

4. **Run maintenance weekly:**
   ```bash
   python .agent/scripts/validate-index.py --fix
   python .agent/scripts/backup-memory.py
   ```

---

## 📚 Learn More

- **README:** Project overview and installation
- **Workflows:** `.agent/workflows/` - Detailed workflow instructions
- **Scripts:** `.agent/scripts/README.md` - Script documentation

---

*Made with ❤️ by [andy-universal-agent-rules](https://github.com/andiupn/andy-universal-agent-rules)*
