# Правила універсального агента Енді 🛰️

<div align="center">
  <a href="README.md">English</a> | <a href="README.id.md">Bahasa Indonesia</a> | <a href="README.zh.md">简体中文</a> | <a href="README.hi.md">हिन्दी</a> | <a href="README.fr-ca.md">Français (CA)</a> | <a href="README.de.md">Deutsch</a> | <a href="README.fr.md">Français</a> | <a href="README.pt-br.md">Português (BR)</a> | <a href="README.vi.md">Tiếng Việt</a> | <a href="README.pl.md">Polski</a> | <a href="README.ja.md">日本語</a> | <a href="README.ko.md">한국어</a> | <a href="README.es.md">Español</a> | <a href="README.tr.md">Türkçe</a> | <a href="README.it.md">Italiano</a> | <a href="README.ru.md">Русский</a> | <strong>Українська</strong> | <a href="README.nl.md">Nederlands</a> | <a href="README.sv.md">Svenska</a> | <a href="README.ro.md">Română</a>
</div>

<br />

<div align="center">
  <h3><strong>Найкраща модель ШІ марна без правильних інструкцій.</strong></h3>
  <p><strong>Легкий однорядковий інсталятор без залежності, який за 1 секунду впроваджує правила кодування золотого стандарту, директиви агента otonom і сценарії керування пам’яттю в будь-який робочий простір.</strong></p>

  <p>Припиніть страждати від галюцинацій штучного інтелекту, безладного рефакторинга коду та втрати контексту під час сеансів редактора. Миттєво активуйте робочі області Cursor, Gemini, Claude Code та Windsurf.</p>
</div>

> 📦 Шаблон золотого стандарту від **andiupn** ([kuncimu.com](https://kuncimu.com)) · Ліцензовано відповідно до [ліцензії MIT](LICENSE)  
> ☕ Якщо буде корисно, [приготуйте мені кави](https://ko-fi.com/andiupn) · 🚀 Шукаєте підібрані стилі робочої області? Спробуйте нашу [екосистему для початківців і професійних спеціалістів](https://kuncimu.com)

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)
[![GitHub release](https://img.shields.io/github/v/release/andiupn/andy-universal-agent-rules)](https://github.com/andiupn/andy-universal-agent-rules/releases)
[![Ko-Fi](https://img.shields.io/badge/Ko--fi-Support-ff5f5f?logo=ko-fi)](https://ko-fi.com/andiupn)
[![Patreon](https://img.shields.io/badge/Patreon-Support-f96854?logo=patreon)](https://patreon.com/AndiUpn)
[![Trakteer](https://img.shields.io/badge/Trakteer-Support-red?logo=trakteer)](https://trakteer.id/andi_upn/gift)
[![Saweria](https://img.shields.io/badge/Saweria-Support-yellow?logo=saweria)](https://saweria.co/andiupn)

---

## 💡 Проблема: чому розумні моделі ШІ пишуть поганий код
Удосконалені моделі ШІ (такі як GPT-4o, Claude 3.5 Sonnet і Gemini Pro) мають величезну здатність міркувати. Але без строгих архітектурних інструкцій, чіткого ізольованого програмного середовища для папок і уніфікованих правил форматування вони пишуть неструктурований код, ігнорують ваші існуючі домовленості та повторюють ті самі помилки під час сеансів.

---

## ⚡ Рішення: золотий стандарт управління ШІ

### 1. 📜 Універсальні правила крос-редакторів
Впроваджує високопродуктивні інструкції AI (еквівалент `AGENTS.md` та `.cursorrules`), сумісні з усіма основними редакторами AI — **Cursor, Windsurf, Claude Code, GitHub Copilot і Kiro**. Один набір правил, щоб керувати ними всіма.

### 🧠 2. Автономні куратори пам’яті
Включає власні сценарії stdlib Python, які автоматизують накопичення знань про локальний проект. Якщо штучний інтелект один раз вирішує помилку або приймає архітектурне рішення, він записує його в `.agent/memory/` і ніколи не забуває.

### ⚡ Інсталятор без залежності
Ні `npm install`, ні `pip install`. Встановлюється за 1 секунду через простий рідний curl/Powershell в один рядок, завантажуючи лише стандартні бібліотечні сценарії Python і чисті робочі процеси уцінки.

---

## 📂 Візуальна карта каталогу

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

## 🚀 Встановлення (1 секунда)

### Windows (PowerShell):

```powershell
iwr -useb https://raw.githubusercontent.com/andiupn/andy-universal-agent-rules/main/install.ps1 | iex
```

### Linux / macOS (Bash):

```bash
curl -fsSL https://raw.githubusercontent.com/andiupn/andy-universal-agent-rules/main/install.sh | bash
```

---

## 💖 Підтримайте цей проект (пожертви)

Якщо цей шаблон прискорив ваш робочий процес кодування, подумайте про підтримку:
- **Ko-fi:** [ko-fi.com/andiupn](https://ko-fi.com/andiupn)
- **Patreon:** [patreon.com/AndiUpn](https://patreon.com/AndiUpn)
- **Trakteer:** [trakteer.id/andi_upn/gift](https://trakteer.id/andi_upn/gift)
- **Saweria:** [saweria.co/andiupn](https://saweria.co/andiupn)

---

## 📄 Ліцензія

Цей проект ліцензований згідно з **ліцензією MIT**. Щоб дізнатися більше, перегляньте файл [LICENSE](LICENSE).