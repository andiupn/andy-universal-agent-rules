# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

---

## [Unreleased]

### Added
- **Quick Start Section** in README.md with 3-step installation guide
- **Using Workflows Section** in README.md explaining `/maintenance`, `/save-from-chat`, `/search`
- **FAQ Section** in README.md with 5 common questions:
  - How is this different from .cursorrules?
  - Can I use this with multiple projects?
  - How do I uninstall?
  - Does this work offline?
  - Will this slow down my editor?
- **Troubleshooting Section** in README.md with 5 solutions:
  - Python not found
  - Permission errors
  - Git conflicts
  - Workflows not working
  - ModuleNotFoundError
- **5 New Badges** to README.md:
  - GitHub release version
  - GitHub issues count
  - GitHub pull requests count
  - Platform support (Linux/macOS/Windows)
  - Python requirement (3.10+)
- **4 Issue Templates** in `.github/ISSUE_TEMPLATE/`:
  - Bug Report template
  - Feature Request template
  - Question template
  - Workflow Contribution template

### Changed
- **Enhanced CONTRIBUTING.md** with:
  - Development setup guide
  - Testing guide (scripts, installers, workflows, docs)
  - Pull request workflow with conventional commits
  - Detailed code style guidelines (Python, Shell, Markdown)
  - Release process section
- **Updated CHANGELOG.md** with semantic versioning adherence

### Improved
- Documentation structure for better user onboarding
- Repository discoverability with additional badges
- Contributor guidance with comprehensive CONTRIBUTING.md

---

## [1.1.0] - 2026-01-08

### Added
- **Workflows as Core Feature**: All 6 workflows now installed by default
  - `maintenance.md` - System maintenance workflow
  - `maintenance-agent-rules.md` - Agent rules specific maintenance
  - `save-from-chat.md` - Save knowledge from current chat
  - `search.md` - Quick knowledge search
  - `simpan-pengetahuan-dari-chat.md` - Indonesian version of save-from-chat
  - `simpan-pengetahuan-dari-folder.md` - Save knowledge from folder
- **Pre-Installation Guide**: New "Before You Install" section in README.md
  - ✅ Recommended setup examples (new project, existing project, Laragon)
  - ❌ Common mistakes section showing wrong vs. correct installation
  - 📁 Visual folder structure preview showing what gets installed
- Enhanced "What Gets Installed" section highlighting workflows as 🆕 CORE FEATURE

### Changed
- `install.ps1`: Now downloads all 6 workflows automatically
- `install.sh`: Now downloads all 6 workflows automatically (previously only 2)
- README.md structure reorganized for better user onboarding

### Fixed
- Installation consistency across Windows and Linux/Mac platforms
- Workflow installation completeness - users now get full feature set

---

## [1.0.0] - 2026-01-07

### Added
- 🚀 Initial public release
- 📁 `.agent/` knowledge management system
- 🧠 `AGENTS.md` as AI entry point
- 📜 Python scripts for knowledge management:
  - `save-knowledge.py` - Save new knowledge
  - `search-knowledge.py` - Search existing knowledge
  - `validate-index.py` - Validate knowledge index
  - `backup-memory.py` - Backup memory system
  - `detect-environment.py` - Auto-detect environment
  - `sync-agents-stats.py` - Sync statistics
- ⚡ One-liner installers:
  - `install.sh` for Linux/macOS
  - `install.ps1` for Windows PowerShell
- 🔧 Multi-editor support:
  - GitHub Copilot (`.github/copilot-instructions.md`)
  - Cursor AI (`.cursor/`)
  - Kiro AI (`.kiro/`)
  - Windsurf (`.windsurf/`)
  - Antigravity (Gemini/Claude)
- 💖 Funding support (Ko-fi, Patreon, Trakteer, Saweria)
- 📄 MIT License

### Features
- ✅ Searchable knowledge base with 4 categories (gotchas, patterns, decisions, context)
- ✅ Automated scripts for knowledge management
- ✅ Cross-editor compatibility
- ✅ Cross-platform support (Windows, Linux, macOS)
- ✅ Zero external dependencies (Python stdlib only)
- ✅ Offline-first design
- ✅ Git-friendly structure

---

## Version History Summary

| Version | Release Date | Type | Description |
|---------|-------------|------|-------------|
| **1.1.0** | 2026-01-08 | Minor | Workflows as core feature + Enhanced docs |
| **1.0.0** | 2026-01-07 | Major | Initial release |

---

## Upgrade Guide

### From 1.0.0 to 1.1.0

If you installed version 1.0.0, your workflows folder may be empty or incomplete. To upgrade:

```bash
# 1. Backup your current knowledge (recommended)
python .agent/scripts/backup-memory.py

# 2. Re-run installer to get all workflows
cd your-project
iwr -useb https://raw.githubusercontent.com/andiupn/andy-universal-agent-rules/main/install.ps1 | iex

# 3. Choose 'y' when asked to overwrite
# Your knowledge in .agent/memory/ will be preserved
```

**What gets updated:**
- ✅ All 6 workflows installed in `.agent/workflows/`
- ✅ Scripts updated (if any changes)
- ✅ AGENTS.md template refreshed

**What stays safe:**
- ✅ Your knowledge entries in `.agent/memory/entries/`
- ✅ Your `index.json`
- ✅ Your custom modifications to AGENTS.md (if you don't overwrite)

---

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md) for how to contribute to this project.

## Links

- [Repository](https://github.com/andiupn/andy-universal-agent-rules)
- [Issues](https://github.com/andiupn/andy-universal-agent-rules/issues)
- [Releases](https://github.com/andiupn/andy-universal-agent-rules/releases)

---

*Format based on [Keep a Changelog](https://keepachangelog.com/)*

