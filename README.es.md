#Reglas del Agente Andy Universal 🛰️

<div align="center">
  <a href="README.md">English</a> | <a href="README.id.md">Bahasa Indonesia</a> | <a href="README.zh.md">简体中文</a> | <a href="README.hi.md">हिन्दी</a> | <a href="README.fr-ca.md">Français (CA)</a> | <a href="README.de.md">Deutsch</a> | <a href="README.fr.md">Français</a> | <a href="README.pt-br.md">Português (BR)</a> | <a href="README.vi.md">Tiếng Việt</a> | <a href="README.pl.md">Polski</a> | <a href="README.ja.md">日本語</a> | <a href="README.ko.md">한국어</a> | <strong>Español</strong> | <a href="README.tr.md">Türkçe</a> | <a href="README.it.md">Italiano</a> | <a href="README.ru.md">Русский</a> | <a href="README.uk.md">Українська</a> | <a href="README.nl.md">Nederlands</a>
</div>

<br />

<div align="center">
  <h3><strong>El mejor modelo de IA es inútil sin las instrucciones correctas.</strong></h3>
  <p><strong>Un instalador de una sola línea, liviano y sin dependencia que inyecta reglas de codificación estándar, directivas de agentes otonom y scripts de curación de memoria en cualquier espacio de trabajo en 1 segundo.</strong></p>

  <p>Deje de sufrir alucinaciones de IA, refactorización de código desordenada y pérdida de contexto en las sesiones del editor. Potencia tus espacios de trabajo Cursor, Gemini, Claude Code y Windsurf al instante.</p>
</div>

> 📦 Plantilla Gold Standard de **andiupn** ([kuncimu.com](https://kuncimu.com)) · Licenciado bajo [Licencia MIT](LICENSE)  
> ☕ Si es útil, [cómprame un café](https://ko-fi.com/andiupn) · 🚀 ¿Buscas ajustes preestablecidos de espacios de trabajo seleccionados? Pruebe nuestro [Ecosistema Starter y PRO](https://kuncimu.com)

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)
[![GitHub release](https://img.shields.io/github/v/release/andiupn/andy-universal-agent-rules)](https://github.com/andiupn/andy-universal-agent-rules/releases)
[![Ko-Fi](https://img.shields.io/badge/Ko--fi-Support-ff5f5f?logo=ko-fi)](https://ko-fi.com/andiupn)
[![Patreon](https://img.shields.io/badge/Patreon-Support-f96854?logo=patreon)](https://patreon.com/AndiUpn)
[![Trakteer](https://img.shields.io/badge/Trakteer-Support-red?logo=trakteer)](https://trakteer.id/andi_upn/gift)
[![Saweria](https://img.shields.io/badge/Saweria-Support-yellow?logo=saweria)](https://saweria.co/andiupn)

---

## 💡 El problema: por qué los modelos inteligentes de IA escriben código incorrecto
Los modelos avanzados de IA (como GPT-4o, Claude 3.5 Sonnet y Gemini Pro) tienen una enorme capacidad de razonamiento. Pero sin pautas arquitectónicas estrictas, un espacio aislado de carpetas claro y reglas de formato unificadas, escriben código no estructurado, ignoran las convenciones existentes y repiten los mismos errores en todas las sesiones.

---

## ⚡ La solución: la gobernanza de la IA de referencia

### 1. 📜 Reglas universales entre editores
Inyecta instrucciones de IA de alto rendimiento (equivalentes a `AGENTS.md` y `.cursorrules`) compatibles con los principales editores de IA: **Cursor, Windsurf, Claude Code, GitHub Copilot y Kiro**. Un conjunto de reglas para gobernarlos a todos.

### 🧠 2. Curadores de memoria independientes
Incluye scripts stdlib nativos de Python que automatizan la acumulación de conocimiento del proyecto local. Si la IA resuelve un error o toma una decisión arquitectónica una vez, la escribe en `.agent/memory/` y nunca la olvida.

### ⚡ Instalador de dependencia cero
Sin `npm install`, sin `pip install`. Se instala en 1 segundo a través de una simple línea nativa de curl/Powershell, descargando solo scripts de Python de biblioteca estándar y flujos de trabajo de rebajas limpios.

---

## 📂 Mapa del directorio visual

```
your-project/
  .agent/
    scripts/           # Zero-dependency Python tools (Search, Save, Validate)
    workflows/         # Step-by-step markdown workflows (Maintenance, Save)
  AGENTS.md            # The master AI system instructions (entry point)
  install.sh           # Native Linux/macOS installer
  install.ps1          # Native Windows PowerShell installer
```

---

## 🚀 Instalación (1 Segundo)

### Windows (PowerShell):

```powershell
iwr -useb https://raw.githubusercontent.com/andiupn/andy-universal-agent-rules/main/install.ps1 | iex
```

### Linux/macOS (Bash):

```bash
curl -fsSL https://raw.githubusercontent.com/andiupn/andy-universal-agent-rules/main/install.sh | bash
```

---

## 💖 Apoye este proyecto (Donaciones)

Si esta plantilla ha acelerado su flujo de trabajo de codificación, considere admitir:
- **Ko-fi:** [ko-fi.com/andiupn](https://ko-fi.com/andiupn)
- **Patreon:** [patreon.com/AndiUpn](https://patreon.com/AndiUpn)
- **Trakteer:** [trakteer.id/andi_upn/gift](https://trakteer.id/andi_upn/gift)
- **Saweria:** [saweria.co/andiupn](https://saweria.co/andiupn)

---

## 📄 Licencia

Este proyecto tiene la licencia **Licencia MIT**. Consulte el archivo [LICENCIA](LICENSE) para obtener más información.