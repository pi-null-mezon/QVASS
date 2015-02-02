; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "adc2pc"
#define MyAppVersion "1.0.0.0b"
#define MyAppPublisher "pi-null-mezon"
#define MyAppURL "https://github.com/pi-null-mezon/QVASS"
#define MyAppExeName "adc2pc.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{4DEB5D29-3208-4748-A7F1-3EFAA774DD48}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\{#MyAppName}
DefaultGroupName={#MyAppName}
AllowNoIcons=yes
LicenseFile=C:\Programing\QVASS\LICENSE
InfoBeforeFile=C:\Programing\QVASS\README.md
OutputDir=C:\Programing\QVASS\Install
OutputBaseFilename=adc2pc_setup
SetupIconFile=C:\Programing\QPULSECAPTURE\Resources\Inno_setup_script\Setup.ico
Compression=lzma
SolidCompression=yes

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "C:\Programing\QVASS\Install\build-Sources-Desktop_Qt_5_2_1_MinGW_32bit-Release\release\adc2pc.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Programing\3rdParties\FFTW\fftw3-32\libfftw3-3.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Qt\5.2.1\mingw48_32\plugins\platforms\qminimal.dll"; DestDir: "{app}\platforms"; Flags: ignoreversion
Source: "C:\Qt\5.2.1\mingw48_32\plugins\platforms\qoffscreen.dll"; DestDir: "{app}\platforms"; Flags: ignoreversion
Source: "C:\Qt\5.2.1\mingw48_32\plugins\platforms\qwindows.dll"; DestDir: "{app}\platforms"; Flags: ignoreversion
Source: "C:\Qt\5.2.1\mingw48_32\bin\icuin51.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Qt\5.2.1\mingw48_32\bin\icudt51.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Qt\5.2.1\mingw48_32\bin\icuuc51.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Qt\5.2.1\mingw48_32\bin\Qt5Core.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Qt\5.2.1\mingw48_32\bin\Qt5Gui.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Qt\5.2.1\mingw48_32\bin\Qt5SerialPort.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Qt\5.2.1\mingw48_32\bin\Qt5Widgets.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Qt\5.2.1\mingw48_32\bin\libgcc_s_dw2-1.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Qt\5.2.1\mingw48_32\bin\libstdc++-6.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Qt\5.2.1\mingw48_32\bin\libwinpthread-1.dll"; DestDir: "{app}"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{group}\{cm:ProgramOnTheWeb,{#MyAppName}}"; Filename: "{#MyAppURL}"
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

