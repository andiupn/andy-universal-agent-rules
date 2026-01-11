# Kiro AI Rules - Optimized Configuration

> **Project:** andy-universal-agent-rules - AI Agent Rules Testing & Documentation System  
> **Complete guidelines:** [AGENTS.md](../AGENTS.md) | **Knowledge base:** [.agent/memory/](.agent/memory/)

---

## 🎯 Kiro-Specific Capabilities

### **Kiro Powers Available**
- **Built-in Tools:** File operations, terminal, diagnostics, web search/fetch
- **Subagents:** context-gatherer, general-task-execution
- **MCP Integration:** 18 servers (12 active) - See MCP section below

### **Kiro Workflow Priority**
1. **Built-in Kiro tools** (primary) → File ops, terminal, diagnostics
2. **Kiro Powers** (when available) → Specialized capabilities  
3. **MCP Servers** (parallel) → Database, automation, external services
4. **CLI fallbacks** (backup) → When MCP unavailable

---

## 🔌 MCP Servers (18 Total, 12 Active)

### **Active Servers** ✅
| Server | Type | Function | Auto-Approve |
|--------|------|----------|--------------|
| **fetch** | uvx | HTTP requests, web scraping | ❌ Manual |
| **git** | uvx | Git operations | ✅ Read ops |
| **sqlite** | uvx | SQLite database | ✅ Read ops |
| **mysql** | uvx | MySQL database | ✅ Read ops |
| **time** | uvx | Time/timezone | ✅ All |
| **memory** | npx | Knowledge graph | ✅ Read ops |
| **sequential-thinking** | npx | Problem solving | ✅ All |
| **filesystem** | npx | File operations | ✅ Read ops |
| **chrome-devtools** | npx | Browser automation | ❌ Manual |
| **puppeteer** | npx | Advanced browser | ❌ Manual |
| **lighthouse** | npx | Performance audit | ✅ All |
| **everything** | npx | Reference/test | ✅ All |

### **Disabled Servers** 🔒
- **aws, sentry, jira, figma** (need credentials)
- **youtube-transcript, playwright** (package not found)

### **MCP Configuration Location**
```
.kiro/settings/mcp.json  # Workspace-specific config
```

---

## 🧠 Knowledge Base Integration

### **Search Commands**
```bash
# Search by keyword
python .agent/scripts/search-knowledge.py "oracle commit"

# Search by category  
python .agent/scripts/search-knowledge.py mysql --category gotchas

# Search by tags
python .agent/scripts/search-knowledge.py --tags critical database
```

### **Knowledge Categories** (220 entries)
- **gotchas/** (52) - Production bugs & critical fixes
- **patterns/** (102) - Proven code patterns & workflows  
- **decisions/** (24) - Architectural decisions
- **context/** (40) - Project guides & references

---

## ⚠️ Critical Gotchas (Top Priority)

### **Database**
```php
// ❌ WRONG - Data loss after 15 minutes!
$model->save();

// ✅ CORRECT - Explicit COMMIT required
$transaction->commit();
Yii::app()->db->getPdoInstance()->exec("COMMIT");
```

### **MySQL Windows Connection**
```php
// ❌ WRONG - May fail on Windows
'host' => 'localhost'

// ✅ CORRECT - Always use IP
'host' => '127.0.0.1'
```

### **Python Execution (Windows)**
```powershell
# ❌ WRONG - Will HANG in PowerShell!
python -c "
import os
print('hello')
"

# ✅ CORRECT - Single line or file
python -c "import os; print('hello')"
# OR create temp file first
```

---

## 📁 File Organization Rules (STRICT)

### **✅ Required Locations**
| File Type | Location | Example |
|-----------|----------|---------|
| **Python Tests** | `test/python/` | `test_feature.py` |
| **PHP Database Tests** | `test/database/<db>/` | `test-oracle-final.php` |
| **Utility Scripts** | `scripts/` | `save-knowledge.py` |
| **Temp Files** | `test/temp/` | Debug files (not committed) |

### **❌ Forbidden Actions**
- Creating files in ROOT directory
- Temp files outside `test/temp/`
- Test files mixed with production code

---

## 🛡️ Safety Protocol

### **Always Confirm Before:**
- Delete operations (`rm`, `DROP TABLE`, `TRUNCATE`)
- Git destructive (`reset --hard`, `clean -fd`, force push)
- Package installs (`npm install`, `composer require`)
- External API calls to production

### **Never Access:**
- `.env`, `.env.*`, `*.env`
- `*.pem`, `*.key`, `id_rsa`
- `credentials/*`, `secrets/*`

---

## 🚀 Performance Benchmarks

| Operation | Target | Current Status |
|-----------|--------|----------------|
| **Knowledge Search** | <200ms | ✅ ~165ms |
| **Index Validation** | <200ms | ✅ ~150ms |
| **Stats Sync** | <100ms | ✅ ~80ms |
| **Environment Detection** | <300ms | ✅ ~220ms |

**All scripts meet <500ms target** ✅

---

## 🎯 Kiro Workflow Patterns

### **1. Repository Analysis**
```markdown
1. Use context-gatherer subagent for unfamiliar codebases
2. Read .agent/memory/index.json for existing knowledge
3. Check test/ structure for existing patterns
4. Apply knowledge from gotchas/ before making changes
```

### **2. Database Operations**
```markdown
1. Check .agent/memory/entries/gotchas/ for DB-specific issues
2. Use PHP libraries (PDO/OCI8) over CLI tools (23-157x faster)
3. Always explicit COMMIT for Oracle transactions
4. Use 127.0.0.1 for MySQL on Windows
```

### **3. Knowledge Management**
```markdown
1. Search existing knowledge before creating new solutions
2. Save new learnings with proper categorization
3. Update AGENTS.md stats via sync-agents-stats.py
4. Create backups before major changes
```

---

## 📚 Session Initialization

### **Auto-Load Files (Priority Order)**
1. `.agent/context/session-init.md` - Initialization protocol
2. `.agent/context/project-context.json` - Project configuration  
3. `.agent/memory/index.json` - Knowledge index
4. `.agent/memory/entries/gotchas/*.md` - Critical issues
5. Top 5 most-accessed patterns from memory system

### **Quick Commands**
```bash
# Environment check
python .agent/scripts/detect-environment.py

# Knowledge search  
python .agent/scripts/search-knowledge.py "keyword"

# Backup before major changes
python .agent/scripts/backup-memory.py

# Validate system integrity
python .agent/scripts/validate-index.py --fix
```

---

## 🔗 Integration Points

- **Main Documentation:** [AGENTS.md](../AGENTS.md) (34KB, 189 entries)
- **Project Structure:** [PROJECT_STRUCTURE.md](../PROJECT_STRUCTURE.md)
- **Testing Guide:** [test/README.md](../test/README.md)
- **Knowledge Base:** [.agent/memory/index.json](../.agent/memory/index.json)

---

*Last Updated: 2026-01-05*  
*Kiro Optimization Level: **ENHANCED** ✅*  
*MCP Servers: 12/18 Active | Knowledge: 220 entries | Performance: All <500ms*
