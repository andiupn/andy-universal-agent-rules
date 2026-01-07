# .agent - AI Agent Support Files

Folder ini berisi file-file pendukung untuk AI coding agents.

---

## 📁 Struktur

```
.agent/
├── README.md           ← You are here
├── memory/             ← Knowledge persistence system
│   ├── index.json      ← Searchable index
│   └── entries/        ← Knowledge entries
│       ├── gotchas/    ← Production bugs & fixes
│       ├── patterns/   ← Code patterns
│       ├── decisions/  ← Architectural decisions
│       └── context/    ← Project guides
│
├── context/            ← Environment detection
│   ├── environment.json
│   └── project-context.json
│
└── workflows/          ← AI agent workflows & prompts
    ├── save-from-chat.md
    ├── maintenance.md
    └── search.md
```

---

## 🌐 Multi-Editor Support

Project ini mendukung berbagai AI code editors:

| File                               | Editor                     |
|------------------------------------|----------------------------|
| `AGENTS.md`                        | Universal (semua editor)   |
| `.github/copilot-instructions.md`  | GitHub Copilot             |
| `.cursor/rules.md`                 | Cursor AI                  |
| `.kiro/rules.md`                   | Kiro                       |

---

## 🧠 Memory System

### Simpan Knowledge Baru

```bash
# Default category (learnings)
python .agent/scripts/save-knowledge.py "deskripsi solusi"

# Dengan kategori spesifik
python .agent/scripts/save-knowledge.py --category gotchas "Oracle commit bug"
python .agent/scripts/save-knowledge.py --category patterns "Chunking pattern"

# Search knowledge
python .agent/scripts/search-knowledge.py "oracle" --limit 5
```

### Kategori

| Kategori     | Deskripsi                             |
|--------------|---------------------------------------|
| `gotchas`    | Production bugs, errors, & solutions  |
| `patterns`   | Code patterns yang works              |
| `decisions`  | Architectural decisions               |
| `context`    | Project guides & references           |
| `errors`     | Error messages & fixes                |

---

## 📋 Context

Environment auto-detected saat run:

```bash
python .agent/scripts/detect-environment.py
```

Output tersimpan di `context/environment.json`.

---

## 🔗 Entry Point

File utama untuk AI agents: `../AGENTS.md`

---

*Last Updated: 2026-01-04*

