<div align="center">
  <img src="assets/Brahma_Lite_Logo.png" alt="Ultron" width="260" />

  <h1>Ultron</h1>

  <p><strong>Open-source Windows desktop AI assistant</strong></p>
  <p>Voice-first automation · contextual desktop intelligence · productivity workflows</p>

  <p>
    <a href="#overview"><img src="https://img.shields.io/badge/experience-open%20source-blue?style=for-the-badge" alt="Open Source" /></a>
    <a href="#getting-started"><img src="https://img.shields.io/badge/platform-Windows%2010%2F11-lightgrey?style=for-the-badge" alt="Windows" /></a>
    <a href="#features"><img src="https://img.shields.io/badge/tech-Gemini%20%2B%20OpenRouter-green?style=for-the-badge" alt="Gemini + OpenRouter" /></a>
  </p>

  <p>
    <a href="#quick-start"><img src="https://img.shields.io/badge/Quick%20Start-Install%20%26%20Run-success?style=flat-square" alt="Quick Start" /></a>
    <a href="#project-structure"><img src="https://img.shields.io/badge/Project%20Structure-Clean%20Architecture-lightgrey?style=flat-square" alt="Project Structure" /></a>
    <a href="#community"><img src="https://img.shields.io/badge/Community-Discord-purple?style=flat-square" alt="Community" /></a>
  </p>

  <p>
    <a href="https://github.com/GameTFM/ultron/archive/refs/heads/main.zip"><img src="https://img.shields.io/badge/Download_Ultron-Windows_Setup.exe-0078D4?style=for-the-badge&logo=windows&logoColor=white" alt="Download Ultron" /></a>
  </p>
</div>

---

## Overview

Ultron is a premium Windows desktop assistant that combines voice and text control with automated workflows, screen-aware intelligence, and rich content generation.

Designed for advanced desktop productivity, Ultron delivers:

- Voice-first command and desktop automation
- Application control, browser workflows, and file handling
- Contextual screen inspection and adaptive task execution
- Presentation, document, and report generation
- Remote control via Discord and mobile companion app

## Quick Highlights

See [ULTRON.md](ULTRON.md) for the full feature list, setup guide, and Windows installer instructions.

## Getting Started

### Prerequisites

- Windows 10 or Windows 11
- Python 3.11 or Python 3.12
- Git installed
- Gemini API key (get one free at https://aistudio.google.com/app/apikey)

### 1. Clone the repository

```powershell
git clone https://github.com/GameTFM/ultron.git
cd ultron
```

### 2. Create and activate a virtual environment

```powershell
python -m venv .venv
.\.venv\Scripts\Activate.ps1
```

### 3. Install dependencies

```powershell
pip install -r requirements.txt
playwright install
```

### 4. First-run setup wizard (collects Gemini key + screen permission + optional GitHub token)

```powershell
python -m core.setup_wizard
```

### 5. Launch Ultron

```powershell
python main.py
```

## Windows installer

- Build on Windows: `scripts\build_windows.bat` (needs Python + PyInstaller + Inno Setup 6)
- Or push tag `v1.0.0` and GitHub Actions builds `Ultron_Setup.exe` automatically.
- Direct download (source .zip, works right now): https://github.com/GameTFM/ultron/archive/refs/heads/main.zip
- Setup.exe download (works after your first release): https://github.com/GameTFM/ultron/releases/latest/download/Ultron_Setup.exe

## License

See `LICENSE` for details.
