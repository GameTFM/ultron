; Ultron Windows installer (Inno Setup 6)
; Build on Windows after PyInstaller: iscc installer\ultron.iss
#define MyAppName "Ultron"
#define MyAppVersion "1.0.0"
#define MyAppPublisher "Ultron"
#define MyAppExeName "Ultron.exe"

[Setup]
AppId={{8F3A2B1C-ULTr-4ON0-A111-000000000001}}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppPublisher={#MyAppPublisher}
DefaultDirName={autopf}\Ultron
DefaultGroupName=Ultron
OutputDir=..\dist-installer
OutputBaseFilename=Ultron_Setup
Compression=lzma
SolidCompression=yes
PrivilegesRequired=lowest
ArchitecturesInstallIn64BitMode=x64
WizardStyle=modern

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "..\dist\Ultron\Ultron.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\dist\Ultron\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\Ultron"; Filename: "{app}\{#MyAppExeName}"
Name: "{group}\Ultron Setup Wizard"; Filename: "{app}\{#MyAppExeName}"; Parameters: "--setup"
Name: "{autodesktop}\Ultron"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Parameters: "--setup"; Description: "Run first-time setup (Google key + screen permission)"; Flags: nowait postinstall skipifsilent
Filename: "{app}\{#MyAppExeName}"; Description: "Launch Ultron"; Flags: nowait postinstall skipifsilent unchecked
