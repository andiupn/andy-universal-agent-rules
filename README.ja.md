#アンディユニバーサルエージェントルール 🛰️

<div align="center">
  <a href="README.md">English</a> | <a href="README.id.md">Bahasa Indonesia</a> | <a href="README.zh.md">简体中文</a> | <a href="README.hi.md">हिन्दी</a> | <a href="README.fr-ca.md">Français (CA)</a> | <a href="README.de.md">Deutsch</a> | <a href="README.fr.md">Français</a> | <a href="README.pt-br.md">Português (BR)</a> | <a href="README.vi.md">Tiếng Việt</a> | <a href="README.pl.md">Polski</a> | <strong>日本語</strong> | <a href="README.ko.md">한국어</a> | <a href="README.es.md">Español</a> | <a href="README.tr.md">Türkçe</a> | <a href="README.it.md">Italiano</a> | <a href="README.ru.md">Русский</a> | <a href="README.uk.md">Українська</a> | <a href="README.nl.md">Nederlands</a> | <a href="README.sv.md">Svenska</a> | <a href="README.ro.md">Română</a>
</div>

<br />

<div align="center">
  <h3><strong>どんなに優れた AI モデルも、適切な指示がなければ役に立ちません。</strong></h3>
  <p><strong>ゴールドスタンダードのコーディング ルール、otonom エージェント ディレクティブ、およびメモリ キュレーション スクリプトを 1 秒でワークスペースに挿入する、軽量で依存性のないワンライナー インストーラー。</strong></p>

  <p>AI の幻覚、厄介なコードのリファクタリング、エディター セッション間のコンテキストの喪失に悩まされるのはもう終わりです。 Cursor、Gemini、Claude Code、Windsurf のワークスペースを瞬時に強化します。</p>
</div>

> 📦 **andiupn** によるゴールド スタンダード テンプレート ([kuncimu.com](https://kuncimu.com)) · [MIT ライセンス](LICENSE) に基づいてライセンスされています  
> ☕ 役に立ったら、[コーヒーを買ってきてください](https://ko-fi.com/andiupn) · 🚀 厳選されたワークスペース プリセットをお探しですか? [Starter & PRO エコシステム] をお試しください(https://kuncimu.com)

__バッジ_0__
__バッジ_1__
__バッジ_2__
__バッジ_3__
__バッジ_4__
__バッジ_5__

---

## 💡 問題: スマート AI モデルが不適切なコードを記述する理由
高度な AI モデル (GPT-4o、Claude 3.5 Sonnet、Gemini Pro など) は、膨大な推論能力を備えています。しかし、厳格なアーキテクチャ ガイドライン、クリア フォルダー サンドボックス、および統一された書式設定ルールがなければ、構造化されていないコードが作成され、既存の規則が無視され、セッション間で同じ間違いが繰り返されます。

---

## ⚡ 解決策: ゴールドスタンダード AI ガバナンス

### 1. 📜 エディター間の共通ルール
すべての主要な AI エディター (**Cursor、Windsurf、Claude Code、GitHub Copilot、Kiro**) と互換性のある高性能 AI 命令 (`AGENTS.md` および `.cursorrules` と同等) を挿入します。すべてを支配する 1 つのルール。

### 🧠 2. スタンドアロンのメモリキュレーター
ローカル プロジェクトの知識の蓄積を自動化するネイティブ Python stdlib スクリプトが含まれています。 AI がバグを解決したり、アーキテクチャ上の決定を一度行うと、それを `.agent/memory/` に書き込み、決して忘れません。

### ⚡ 依存性ゼロのインストーラー
`npm install` も `pip install` もありません。シンプルなネイティブのカール/Powershell ワンライナーにより 1 秒でインストールされ、標準ライブラリの Python スクリプトとクリーンなマークダウン ワークフローのみがダウンロードされます。

---

## 📂 ビジュアルディレクトリマップ

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

## 🚀 インストール (1 秒)

### Windows (PowerShell):

```powershell
iwr -useb https://raw.githubusercontent.com/andiupn/andy-universal-agent-rules/main/install.ps1 | iex
```

### Linux / macOS (Bash):

```bash
curl -fsSL https://raw.githubusercontent.com/andiupn/andy-universal-agent-rules/main/install.sh | bash
```

---

## 💖 このプロジェクトをサポートする (寄付)

このテンプレートによりコーディング ワークフローが高速化された場合は、以下のサポートを検討してください。
- **Ko-fi:** [ko-fi.com/andiupn](https://ko-fi.com/andiupn)
- **Patreon:** [patreon.com/AndiUpn](https://patreon.com/AndiUpn)
- **Trakteer:** [trakteer.id/andi_upn/gift](https://trakteer.id/andi_upn/gift)
- **サウェリア:** [saweria.co/andiupn](https://saweria.co/andiupn)

---

## 📄 ライセンス

このプロジェクトは **MIT ライセンス** に基づいてライセンスされています。詳細については、[LICENSE](LICENSE) ファイルを参照してください。