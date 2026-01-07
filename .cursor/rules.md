# Cursor AI Rules - Optimized Configuration

> **Project:** andy-universal-agent-rules - AI Agent Rules Testing & Documentation System  
> **Complete guidelines:** [AGENTS.md](../AGENTS.md) | **Knowledge base:** [.agent/memory/](.agent/memory/)

---

## 🎯 Cursor-Specific Capabilities

### **Cursor Features Available**
- **Built-in Tools:** File operations, terminal, code completion, inline editing
- **Agent Mode:** Default mode combining Chat, Composer, and Agent (since Feb 2025)
- **Rules System:** Project rules (`.cursor/rules`) and User rules (global settings)
- **MCP Integration:** Configurable via workspace settings - See MCP section below
- **Web Search:** Automatic web search for latest information (no explicit command needed)

### **Cursor Workflow Priority**
1. **Built-in Cursor tools** (primary) → File ops, terminal, code completion
2. **Project Rules** (`.cursor/rules.md` or `.mdc` files) → Project-specific guidelines
3. **MCP Servers** (if configured) → External services, databases, automation
4. **CLI fallbacks** (backup) → When MCP unavailable

### **Rules Generation**
- Use `/Generate Cursor Rules` command to create rules from conversation context
- Rules can be saved as `.mdc` files in `.cursor/rules/` directory
- `AGENTS.md` is supported as alternative simple format

---

## 🔌 MCP Servers (Configurable)

### **MCP Configuration**
Cursor supports MCP servers via workspace configuration. Status depends on user setup:

| MCP Server              | Status       | Notes                           |
|-------------------------|--------------|---------------------------------|
| **GitHub**              | ⚠️ Configurable | Setup via Cursor settings      |
| **Firebase**            | ⚠️ Configurable | Requires workspace config      |
| **Cloud Run**           | ⚠️ Configurable | Requires workspace config      |
| **Dart**                | ⚠️ Configurable | Requires workspace config      |
| **Redis**               | ⚠️ Configurable | Requires workspace config      |
| **Sequential Thinking** | ⚠️ Configurable | Requires workspace config      |
| **MySQL**               | ⚠️ Configurable | Requires workspace config      |
| **SQLite**              | ⚠️ Configurable | Requires workspace config      |

### **MCP Setup Recommendation**
1. Test each MCP before heavy use
2. Document working MCP in project rules
3. Use CLI fallback if MCP unavailable
4. Verify MCP connectivity at session start

### **MCP Configuration Location**
```
Cursor Settings → MCP Servers
# Or via workspace config file
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

## 🎯 Cursor Workflow Patterns

### **1. Repository Analysis**
```markdown
1. Use Cursor Agent mode for codebase exploration
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
2. Use /Generate Cursor Rules to capture learnings
3. Save new learnings with proper categorization
4. Update AGENTS.md stats via sync-agents-stats.py
```

### **4. Code Generation**
```markdown
1. Use Cursor Composer for multi-file changes
2. Leverage inline editing for quick fixes
3. Use Chat for complex reasoning tasks
4. Apply project rules automatically via .cursor/rules.md
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
*Cursor Optimization Level: **ENHANCED** ✅*  
*MCP Servers: Configurable | Knowledge: 220 entries | Performance: All <500ms*
