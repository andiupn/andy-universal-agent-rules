# Andy 유니버설 에이전트 규칙 🛰️

<div align="center">
  <a href="README.md">English</a> | <a href="README.id.md">Bahasa Indonesia</a> | <a href="README.zh.md">简体中文</a> | <a href="README.hi.md">हिन्दी</a> | <a href="README.fr-ca.md">Français (CA)</a> | <a href="README.de.md">Deutsch</a> | <a href="README.fr.md">Français</a> | <a href="README.pt-br.md">Português (BR)</a> | <a href="README.vi.md">Tiếng Việt</a> | <a href="README.pl.md">Polski</a> | <a href="README.ja.md">日本語</a> | <strong>한국어</strong> | <a href="README.es.md">Español</a> | <a href="README.tr.md">Türkçe</a> | <a href="README.it.md">Italiano</a> | <a href="README.ru.md">Русский</a> | <a href="README.uk.md">Українська</a> | <a href="README.nl.md">Nederlands</a> | <a href="README.sv.md">Svenska</a> | <a href="README.ro.md">Română</a>
</div>

<br />

<div align="center">
  <h3><strong>가장 훌륭한 AI 모델이라도 올바른 지침이 없으면 쓸모가 없습니다.</strong></h3>
  <p><strong>표준 코딩 규칙, 오토놈 에이전트 지시문 및 메모리 큐레이션 스크립트를 모든 작업 공간에 1초 만에 삽입하는 가볍고 종속성이 없는 단일 라이너 설치 프로그램입니다.</strong></p>

  <p>AI 환각, 지저분한 코드 리팩토링, 편집 세션 전반에 걸친 컨텍스트 상실로 고통받지 마세요. Cursor, Gemini, Claude Code 및 Windsurf 작업 공간에 즉시 전원을 공급하세요.</p>
</div>

> 📦 **andiupn**([kuncimu.com](https://kuncimu.com))의 Gold Standard 템플릿 · [MIT 라이선스](LICENSE)에 따라 라이선스가 부여됨  
> ♥ 도움이 되셨다면 [커피 사주세요](https://ko-fi.com/andiupn) · 🚀 엄선된 작업 공간 사전 설정을 찾고 계십니까? [스타터 및 PRO 생태계](https://kuncimu.com)를 사용해 보세요.

__배지_0__
__배지_1__
__배지_2__
__배지_3__
__배지_4__
__배지_5__

---

## 💡 문제: 스마트 AI 모델이 잘못된 코드를 작성하는 이유
고급 AI 모델(GPT-4o, Claude 3.5 Sonnet, Gemini Pro 등)은 엄청난 추론 능력을 갖추고 있습니다. 그러나 엄격한 아키텍처 지침, 명확한 폴더 샌드박싱 및 통합 형식 지정 규칙이 없으면 구조화되지 않은 코드를 작성하고 기존 규칙을 무시하며 세션 전반에 걸쳐 동일한 실수를 반복합니다.

---

## ⚡ 솔루션: 최고의 AI 거버넌스

### 1. 📜 범용 크로스 에디터 규칙
모든 주요 AI 편집기(**Cursor, Windsurf, Claude Code, GitHub Copilot 및 Kiro**)와 호환되는 고성능 AI 지침(`AGENTS.md` 및 `.cursorrules`에 해당)을 주입합니다. 모든 것을 지배하는 하나의 규칙 세트입니다.

### 🧠 2. 독립형 메모리 큐레이터
로컬 프로젝트 지식 축적을 자동화하는 기본 Python stdlib 스크립트가 포함되어 있습니다. AI가 버그를 해결하거나 아키텍처 결정을 한 번 내리면 이를 `.agent/memory/`에 기록하고 절대 잊지 않습니다.

### ⚡ 제로 종속성 설치 프로그램
`npm install`, `pip install`이 아닙니다. 간단한 기본 컬/Powershell 원라이너를 통해 1초 만에 설치하고 표준 라이브러리 Python 스크립트만 다운로드하며 깔끔한 마크다운 워크플로를 수행합니다.

---

## 📂 시각적 디렉터리 지도

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

## 🚀 설치(1초)

### 윈도우(파워셸):

```powershell
iwr -useb https://raw.githubusercontent.com/andiupn/andy-universal-agent-rules/main/install.ps1 | iex
```

### 리눅스/macOS(배시):

```bash
curl -fsSL https://raw.githubusercontent.com/andiupn/andy-universal-agent-rules/main/install.sh | bash
```

---

## 💖 이 프로젝트를 후원하세요(기부)

이 템플릿으로 코딩 작업 흐름이 가속화된 경우 다음 지원을 고려해보세요.
- **Ko-fi:** [ko-fi.com/andiupn](https://ko-fi.com/andiupn)
- **Patreon:** [patreon.com/AndiUpn](https://patreon.com/AndiUpn)
- **트랙터:** [trakteer.id/andi_upn/gift](https://trakteer.id/andi_upn/gift)
- **사웨리아:** [saweria.co/andiupn](https://saweria.co/andiupn)

---

## 📄 라이선스

이 프로젝트는 **MIT 라이선스**에 따라 라이선스가 부여됩니다. 자세한 내용은 [LICENSE](LICENSE) 파일을 참조하세요.