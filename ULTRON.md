# Ultron — Windows desktop AI assistant (based on Brahma Echo)

Say **"Ultron"** — it opens apps, manages files/folders, sends messages,
connects GitHub + Gmail/Calendar, sees your screen (only with permission),
and teaches security the ethical way. Runs on **Google Gemini API**.

## Features
- "Open Chrome / Spotify / Notepad" → launches apps
- "Create folder Projects" → creates it (with undo)
- "Message mom on WhatsApp ..." → WhatsApp/Telegram/Instagram automation
- "List my GitHub repos / clone X / create repo Y" → GitHub (creating asks 'say yes' first)
- "Check Gmail / add calendar event" → Gmail + Calendar + Drive
- "What do you see on my screen?" → Gemini vision (**asks permission first**)
- "Explain phishing / scan my pc / quiz me" → ethical Security Lab (refuses hacking/invasions)

## First run (Windows 10/11, Python 3.11/3.12)
```bat
git clone https://github.com/GameTFM/ultron.git
cd ultron
python -m venv .venv
.\.venv\Scripts\Activate.ps1
pip install -r requirements.txt
playwright install
python -m core.setup_wizard
```
The wizard asks for: (1) Gemini API key (https://aistudio.google.com/app/apikey),
(2) screen permission, (3) optional GitHub token.

## Windows installer
- On your PC: `scripts\build_windows.bat` → `dist-installer\Ultron_Setup.exe` (needs Inno Setup 6)
- Or push a tag `v1.0.0` → GitHub Actions builds `Ultron_Setup.exe` automatically on the Release.
- Files: `Ultron.spec` (PyInstaller), `installer/ultron.iss` (Inno Setup).

## Security policy
Ultron **cannot** hack, break into accounts/devices/networks, steal credentials, or write
malware — even "for education". It explains attacks defensively, checks your OWN pc
(localhost only), strength-checks passwords locally, and quizzes you on phishing.

## Upstream
Built on https://github.com/titechprabhasolutions/Brahma-Echo/tree/main — see its
LICENSE / TRADEMARK.md / SECURITY.md before publishing.
