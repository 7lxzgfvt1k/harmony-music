[Setup]
AppId=B9F6E402-0CAE-4045-BDE6-14BD6C39C4EA
AppVersion=1.12.2+27
AppName=Harmony Music
AppPublisher=anandnet
AppPublisherURL=https://github.com/7lxzgfvt1k/harmony-music
AppSupportURL=https://github.com/7lxzgfvt1k/harmony-music
AppUpdatesURL=https://github.com/7lxzgfvt1k/harmony-music
DefaultDirName={autopf}\harmonymusic
DisableProgramGroupPage=yes
OutputDir=.
OutputBaseFilename=harmonymusic-1.12.2
Compression=lzma
SolidCompression=yes
SetupIconFile=..\..\windows\runner\resources\app_icon.ico
WizardStyle=modern
PrivilegesRequired=lowest
LicenseFile=..\..\windows\LICENSE
ArchitecturesAllowed=x64compatible
ArchitecturesInstallIn64BitMode=x64compatible

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "..\..\build\windows\x64\runner\Release\harmonymusic.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\..\build\windows\x64\runner\Release\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{autoprograms}\Harmony Music"; Filename: "{app}\harmonymusic.exe"
Name: "{autodesktop}\Harmony Music"; Filename: "{app}\harmonymusic.exe"; Tasks: desktopicon

[Run]
Filename: "{app}\harmonymusic.exe"; Description: "{cm:LaunchProgram,{#StringChange('Harmony Music', '&', '&&')}}"; Flags: nowait postinstall skipifsilent
