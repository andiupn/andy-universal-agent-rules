# Andy Universal Agent Kuralları 🛰️

<div align="center">
  <a href="README.md">English</a> | <a href="README.id.md">Bahasa Indonesia</a> | <a href="README.zh.md">简体中文</a> | <a href="README.hi.md">हिन्दी</a> | <a href="README.fr-ca.md">Français (CA)</a> | <a href="README.de.md">Deutsch</a> | <a href="README.fr.md">Français</a> | <a href="README.pt-br.md">Português (BR)</a> | <a href="README.vi.md">Tiếng Việt</a> | <a href="README.pl.md">Polski</a> | <a href="README.ja.md">日本語</a> | <a href="README.ko.md">한국어</a> | <a href="README.es.md">Español</a> | <strong>Türkçe</strong> | <a href="README.it.md">Italiano</a> | <a href="README.ru.md">Русский</a> | <a href="README.uk.md">Українська</a> | <a href="README.nl.md">Nederlands</a> | <a href="README.sv.md">Svenska</a> | <a href="README.ro.md">Română</a>
</div>

<br />

<div align="center">
  <h3><strong>En iyi yapay zeka modeli, doğru talimatlar olmadan işe yaramaz.</strong></h3>
  <p><strong>Altın standartta kodlama kurallarını, otonom aracı direktiflerini ve bellek iyileştirme komut dosyalarını herhangi bir çalışma alanına 1 saniyede ekleyen hafif, sıfır bağımlılık tek satırlık bir yükleyici.</strong></p>

  <p>Düzenleyici oturumlarında AI halüsinasyonlarından, karmaşık kod yeniden düzenlemelerinden ve bağlam kaybından muzdarip olmaya son verin. İmleç, Gemini, Claude Code ve Windsurf çalışma alanlarınıza anında güç verin.</p>
</div>

> 📦 Altın Standart Şablonu **andiupn** ([kuncimu.com](https://kuncimu.com)) tarafından hazırlanmıştır · [MIT Lisansı](LICENSE) kapsamında lisanslanmıştır  
> ☕ Yararlıysa, [bana bir kahve al](https://ko-fi.com/andiupn) · 🚀 Özel çalışma alanı ön ayarları mı arıyorsunuz? [Başlangıç ve PRO Ekosistemimizi](https://kuncimu.com) deneyin

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)
[![GitHub release](https://img.shields.io/github/v/release/andiupn/andy-universal-agent-rules)](https://github.com/andiupn/andy-universal-agent-rules/releases)
[![Ko-Fi](https://img.shields.io/badge/Ko--fi-Support-ff5f5f?logo=ko-fi)](https://ko-fi.com/andiupn)
[![Patreon](https://img.shields.io/badge/Patreon-Support-f96854?logo=patreon)](https://patreon.com/AndiUpn)
[![Trakteer](https://img.shields.io/badge/Trakteer-Support-red?logo=trakteer)](https://trakteer.id/andi_upn/gift)
[![Saweria](https://img.shields.io/badge/Saweria-Support-yellow?logo=saweria)](https://saweria.co/andiupn)

---

## 💡 Sorun: Akıllı Yapay Zeka Modelleri Neden Kötü Kod Yazıyor?
Gelişmiş yapay zeka modelleri (GPT-4o, Claude 3.5 Sonnet ve Gemini Pro gibi) muazzam bir akıl yürütme kapasitesine sahiptir. Ancak katı mimari yönergeler, açık klasör koruma alanı ve birleşik biçimlendirme kuralları olmadan, yapılandırılmamış kodlar yazarlar, mevcut kurallarınızı göz ardı ederler ve aynı hataları oturumlar arasında tekrarlarlar.

---

## ⚡ Çözüm: Altın Standart Yapay Zeka Yönetişimi

### 1. 📜 Evrensel Düzenleyiciler Arası Kurallar
Tüm önemli AI düzenleyicileriyle uyumlu yüksek performanslı AI talimatlarını (`AGENTS.md` ve `.cursorrules` eşdeğeri) enjekte eder—**Cursor, Windsurf, Claude Code, GitHub Copilot ve Kiro**. Hepsine hükmedecek tek bir kural dizisi.

### 🧠 2. Bağımsız Bellek Küratörleri
Yerel proje bilgisi birikimini otomatikleştiren yerel Python stdlib komut dosyalarını içerir. Yapay zeka bir hatayı çözerse veya bir kez mimari karar verirse bunu `.agent/memory/`'e yazar ve asla unutmaz.

### ⚡ Sıfır Bağımlılık Yükleyici
Hayır `npm install`, hayır `pip install`. Basit bir yerel curl/Powershell tek satırlık aracılığıyla 1 saniyede yüklenir, yalnızca standart kitaplık Python komut dosyalarını ve temiz işaretleme iş akışlarını indirir.

---

## 📂 Görsel Dizin Haritası

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

## 🚀 Kurulum (1 Saniye)

### Windows (PowerShell):

```powershell
iwr -useb https://raw.githubusercontent.com/andiupn/andy-universal-agent-rules/main/install.ps1 | iex
```

### Linux / macOS (Bash):

```bash
curl -fsSL https://raw.githubusercontent.com/andiupn/andy-universal-agent-rules/main/install.sh | bash
```

---

## 💖 Bu Projeyi Destekleyin (Bağışlar)

Bu şablon kodlama iş akışınızı hızlandırdıysa aşağıdakileri desteklemeyi düşünün:
- **Ko-fi:** [ko-fi.com/andiupn](https://ko-fi.com/andiupn)
- **Patreon:** [patreon.com/AndiUpn](https://patreon.com/AndiUpn)
- **Trakteer:** [trakteer.id/andi_upn/gift](https://trakteer.id/andi_upn/gift)
- **Saweria:** [saweria.co/andiupn](https://saweria.co/andiupn)

---

## 📄 Lisans

Bu proje **MIT Lisansı** kapsamında lisanslanmıştır. Daha fazla bilgi için [LİSANS](LICENSE) dosyasına bakın.