---
inclusion: always
---

# Kiro Efficiency Guidelines

## Response Style
- Be decisive, precise, and clear
- Use technical language appropriate for developers
- Prioritize actionable information over general explanations
- Keep responses concise and direct
- Use bullet points and formatting for readability

## Execution Priority
1. **Built-in Kiro tools** (file operations, terminal, diagnostics)
2. **Kiro Powers** (when available)
3. **MCP servers** (parallel execution)
4. **CLI fallbacks** (backup options)

## Performance Targets
- All operations < 500ms when possible
- Use efficient tools (PHP libraries over CLI for databases)
- Batch operations when appropriate
- Minimize redundant file reads

## Code Quality
- Write minimal, focused code
- Include error handling
- Use type hints and documentation
- Follow project coding standards (PSR-12 for PHP, PEP 8 for Python)