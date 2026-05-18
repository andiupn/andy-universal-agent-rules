# Windsurf AI Agent Rules

> **Editor:** Windsurf Editor with Cascade AI
> **AI Model:** GPT-5.1 / GPT-5.1-Codex
> **SSOT:** AGENTS.md (project-wide rules)

## 🎯 Windsurf-Specific Guidelines

### Cascade AI Optimization
- **Variable Thinking:** Dynamic reasoning depth untuk quick vs complex tasks
- **Turbo Mode:** Auto-execute terminal commands saat enabled
- **Context Persistence:** Continue My Work tracks session state

### Memories Feature Usage
- **Learning Period:** 48 jam initial analysis
- **Pattern Recognition:** Architecture, naming conventions, coding style
- **Success Rate:** 78% consistency untuk 50K+ line projects

### MCP Integration (21 Tools)
- **Figma (5 tools):** Design handoff, component generation
- **Slack (7 tools):** Team notifications, code review alerts
- **Stripe (9 tools):** Payment integration, webhook management
- **Sequential Thinking (3 tools):** Complex reasoning workflows

### Windsurf Gotchas
- **Memories Learning:** Perlu 48 jam sebelum optimal
- **Terminal Command:** 80% success rate, complex scripts perlu manual
- **Lint Fixing:** 60% auto-fix rate, sisanya manual
- **No Collaborative Coding:** Tidak ada real-time pair programming
- **No Auto Test Generation:** Manual test writing required

### CLI Fallback Strategy
```bash
# GitHub (instead of MCP)
git status && gh pr list

# Database (instead of MCP)  
mysql -h 127.0.0.1 -u root
sqlplus user/pass@ORCL

# Redis (instead of MCP)
redis-cli SET key "value"

# Firebase (instead of MCP)
firebase deploy --only hosting
```

### Workflow Integration
1. **Primary:** Cascade AI (built-in GPT-5.1)
2. **Context:** Memories (learned patterns)
3. **Extensions:** MCP tools (21 available)
4. **Fallback:** CLI commands (manual)

## 🔄 Project Structure Compliance

**WAJIB ikuti aturan di AGENTS.md:**
- File organization (test/, scripts/, etc.)
- Coding conventions (PSR-12, PEP-8, etc.)
- Safety rules (konfirmasi sebelum delete)
- Database performance (PHP libraries > CLI)

## 📊 Performance Expectations

| Feature | Success Rate | Notes |
|---------|---------------|-------|
| **Memories Learning** | 78% | After 48h analysis |
| **Lint Fixing** | 60% | Auto-fix ESLint/Prettier |
| **Terminal Command** | 80% | Natural language to CLI |
| **Pattern Recognition** | 78% | Consistency with existing code |
| **MCP Integration** | 95% | 21 tools available |

---

*Last Updated: 2026-01-05*  
*SSOT Reference: AGENTS.md*
