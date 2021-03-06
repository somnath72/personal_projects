; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "WordCount"
#define MyAppVersion "1.0"
#define MyAppPublisher "Somnath Banerjee"
#define MyAppURL "http://www.example.com/"
#define MyAppExeName "wordcount.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{223766CD-44C0-4B45-8527-B5D9A4F78DBF}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\{#MyAppName}
DisableProgramGroupPage=yes
;OutputBaseFilename=setup
Compression=lzma
SolidCompression=yes

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "C:\D_Drive\Nijer\00 Personal Projects\PersonalProjects\Python_WordCount\build\build\exe.win-amd64-3.6\wordcount.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\D_Drive\Nijer\00 Personal Projects\PersonalProjects\Python_WordCount\build\build\exe.win-amd64-3.6\DirToSearch.txt"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\D_Drive\Nijer\00 Personal Projects\PersonalProjects\Python_WordCount\build\build\exe.win-amd64-3.6\python36.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\D_Drive\Nijer\00 Personal Projects\PersonalProjects\Python_WordCount\build\build\exe.win-amd64-3.6\wordcount.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\D_Drive\Nijer\00 Personal Projects\PersonalProjects\Python_WordCount\build\build\exe.win-amd64-3.6\WordsToSearch.txt"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\D_Drive\Nijer\00 Personal Projects\PersonalProjects\Python_WordCount\build\build\exe.win-amd64-3.6\lib\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{commonprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

