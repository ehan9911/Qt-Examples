; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "MyApp"
#define MyAppVersion "1.2.9"
#define MyAppPublisher "Youth Co.,Ld."
#define MyAppURL "https://github.com/RealChuan"
#define MyAppExeName "MyApp.exe"
#define MyAppAssocName MyAppName + ""
#define MyAppAssocExt ".myp"
#define MyAppAssocKey StringChange(MyAppAssocName, " ", "") + MyAppAssocExt
#define MyAppUninstallName "Uninstall"

[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{2B7CC760-21EC-4184-890E-2E1766C6CE04}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={autopf}\{#MyAppName}
ChangesAssociations=yes
DisableProgramGroupPage=yes
; Uncomment the following line to run in non administrative install mode (install for current user only.)
;PrivilegesRequired=lowest
OutputDir=C:myapp\releases
OutputBaseFilename=MyApp_Installation_Package
SetupIconFile=C:\myapp\app.ico
Compression=lzma
SolidCompression=yes
WizardStyle=modern
MinVersion=6.1.7600
DefaultGroupName={#MyAppName}
UninstallDisplayIcon=C:\myapp\app.ico
Uninstallable=yes
UninstallDisplayName={#MyAppName}
VersionInfoCompany={#MyAppPublisher}
VersionInfoCopyright={#MyAppPublisher}
VersionInfoDescription={#MyAppName}
VersionInfoOriginalFileName={#MyAppName}
VersionInfoProductTextVersion={#MyAppVersion}
VersionInfoProductVersion={#MyAppVersion}
VersionInfoTextVersion={#MyAppVersion}
SignTool = sha256
SignedUninstaller = yes

[Languages]
Name: "Chinese"; MessagesFile: "compiler:Languages\Chinese.isl"
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: checkablealone

[Files]
Source: "..\packet\{#MyAppExeName}"; DestDir: "{app}"; Flags: ignoreversion signonce
; NOTE: Don't use "Flags: ignoreversion" on any shared system files
Source: "..\packet\api-ms-win-core-console-l1-1-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\packet\api-ms-win-core-console-l1-2-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\packet\api-ms-win-core-datetime-l1-1-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\packet\api-ms-win-core-debug-l1-1-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\packet\api-ms-win-core-errorhandling-l1-1-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\packet\api-ms-win-core-file-l1-1-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\packet\api-ms-win-core-file-l1-2-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\packet\api-ms-win-core-file-l2-1-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\packet\api-ms-win-core-handle-l1-1-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\packet\api-ms-win-core-heap-l1-1-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\packet\api-ms-win-core-interlocked-l1-1-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\packet\api-ms-win-core-libraryloader-l1-1-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\packet\api-ms-win-core-localization-l1-2-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\packet\api-ms-win-core-memory-l1-1-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\packet\api-ms-win-core-namedpipe-l1-1-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\packet\api-ms-win-core-processenvironment-l1-1-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\packet\api-ms-win-core-processthreads-l1-1-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\packet\api-ms-win-core-processthreads-l1-1-1.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\packet\api-ms-win-core-profile-l1-1-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\packet\api-ms-win-core-rtlsupport-l1-1-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\packet\api-ms-win-core-string-l1-1-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\packet\api-ms-win-core-synch-l1-1-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\packet\api-ms-win-core-synch-l1-2-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\packet\api-ms-win-core-sysinfo-l1-1-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\packet\api-ms-win-core-timezone-l1-1-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\packet\api-ms-win-core-util-l1-1-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\packet\API-MS-Win-core-xstate-l2-1-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\packet\api-ms-win-crt-conio-l1-1-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\packet\api-ms-win-crt-convert-l1-1-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\packet\api-ms-win-crt-environment-l1-1-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\packet\api-ms-win-crt-filesystem-l1-1-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\packet\api-ms-win-crt-heap-l1-1-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\packet\api-ms-win-crt-locale-l1-1-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\packet\api-ms-win-crt-math-l1-1-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\packet\api-ms-win-crt-multibyte-l1-1-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\packet\api-ms-win-crt-private-l1-1-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\packet\api-ms-win-crt-process-l1-1-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\packet\api-ms-win-crt-runtime-l1-1-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\packet\api-ms-win-crt-stdio-l1-1-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\packet\api-ms-win-crt-string-l1-1-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\packet\api-ms-win-crt-time-l1-1-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\packet\api-ms-win-crt-utility-l1-1-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\packet\concrt140.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\packet\D3Dcompiler_47.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\packet\msvcp140.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\packet\msvcp140_1.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\packet\msvcr100.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\packet\opengl32sw.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\packet\postproc-55.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\packet\Qt6Core.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\packet\Qt6Gui.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\packet\Qt6Network.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\packet\Qt6OpenGL.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\packet\Qt6Positioning.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\packet\Qt6PrintSupport.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\packet\Qt6Qml.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\packet\Qt6QmlModels.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\packet\Qt6Quick.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\packet\Qt6QuickWidgets.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\packet\Qt6SerialPort.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\packet\Qt6Sql.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\packet\Qt6Svg.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\packet\Qt6WebChannel.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\packet\Qt6WebEngineCore.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\packet\Qt6WebEngineWidgets.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\packet\Qt6Widgets.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\packet\Qt6Xml.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\packet\QtWebEngineProcess.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\packet\ucrtbase.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\packet\vcruntime140.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\packet\MyApp.pdb"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\packet\bearer\qgenericbearer.dll"; DestDir: "{app}\bearer"; Flags: ignoreversion
Source: "..\packet\iconengines\qsvgicon.dll"; DestDir: "{app}\iconengines"; Flags: ignoreversion
Source: "..\packet\imageformats\qapng.dll"; DestDir: "{app}\imageformats"; Flags: ignoreversion
Source: "..\packet\imageformats\qgif.dll"; DestDir: "{app}\imageformats"; Flags: ignoreversion
Source: "..\packet\imageformats\qheif.dll"; DestDir: "{app}\imageformats"; Flags: ignoreversion
Source: "..\packet\imageformats\qicns.dll"; DestDir: "{app}\imageformats"; Flags: ignoreversion
Source: "..\packet\imageformats\qico.dll"; DestDir: "{app}\imageformats"; Flags: ignoreversion
Source: "..\packet\imageformats\qjpeg.dll"; DestDir: "{app}\imageformats"; Flags: ignoreversion
Source: "..\packet\imageformats\qsvg.dll"; DestDir: "{app}\imageformats"; Flags: ignoreversion
Source: "..\packet\imageformats\qtga.dll"; DestDir: "{app}\imageformats"; Flags: ignoreversion
Source: "..\packet\imageformats\qtiff.dll"; DestDir: "{app}\imageformats"; Flags: ignoreversion
Source: "..\packet\imageformats\qwbmp.dll"; DestDir: "{app}\imageformats"; Flags: ignoreversion
Source: "..\packet\imageformats\qwebp.dll"; DestDir: "{app}\imageformats"; Flags: ignoreversion
Source: "..\packet\platforms\qwindows.dll"; DestDir: "{app}\platforms"; Flags: ignoreversion
Source: "..\packet\position\qtposition_positionpoll.dll"; DestDir: "{app}\position"; Flags: ignoreversion
Source: "..\packet\position\qtposition_serialnmea.dll"; DestDir: "{app}\position"; Flags: ignoreversion
Source: "..\packet\position\qtposition_winrt.dll"; DestDir: "{app}\position"; Flags: ignoreversion
Source: "..\packet\printsupport\windowsprintersupport.dll"; DestDir: "{app}\printsupport"; Flags: ignoreversion
Source: "..\packet\styles\qwindowsvistastyle.dll"; DestDir: "{app}\styles"; Flags: ignoreversion
Source: "..\packet\resources\icudtl.dat"; DestDir: "{app}\resources"; Flags: ignoreversion
Source: "..\packet\resources\qtwebengine_devtools_resources.pak"; DestDir: "{app}\resources"; Flags: ignoreversion
Source: "..\packet\resources\qtwebengine_resources.pak"; DestDir: "{app}\resources"; Flags: ignoreversion
Source: "..\packet\resources\qtwebengine_resources_100p.pak"; DestDir: "{app}\resources"; Flags: ignoreversion
Source: "..\packet\resources\qtwebengine_resources_200p.pak"; DestDir: "{app}\resources"; Flags: ignoreversion
Source: "..\packet\sqldrivers\qsqlite.dll"; DestDir: "{app}\sqldrivers"; Flags: ignoreversion
Source: "..\packet\sqldrivers\qsqlodbc.dll"; DestDir: "{app}\sqldrivers"; Flags: ignoreversion
Source: "..\packet\sqldrivers\qsqlpsql.dll"; DestDir: "{app}\sqldrivers"; Flags: ignoreversion
Source: "..\packet\translations\language.zh_cn.qm"; DestDir: "{app}\translations"; Flags: ignoreversion
Source: "..\packet\translations\language.zh_en.qm"; DestDir: "{app}\translations"; Flags: ignoreversion
Source: "..\packet\translations\language.zh_tw.qm"; DestDir: "{app}\translations"; Flags: ignoreversion
Source: "..\packet\translations\qt_en.qm"; DestDir: "{app}\translations"; Flags: ignoreversion
Source: "..\packet\translations\qt_zh_CN.qm"; DestDir: "{app}\translations"; Flags: ignoreversion
Source: "..\packet\translations\qt_zh_TW.qm"; DestDir: "{app}\translations"; Flags: ignoreversion
Source: "..\packet\translations\qtwebengine_locales\en-US.pak"; DestDir: "{app}\translations\qtwebengine_locales"; Flags: ignoreversion

[Registry]
Root: "HKA"; Subkey: "Software\Classes\{#MyAppAssocExt}\OpenWithProgids"; ValueType: string; ValueName: "{#MyAppAssocKey}"; Flags: uninsdeletevalue
Root: "HKA"; Subkey: "Software\Classes\{#MyAppAssocKey}"; ValueType: string; ValueData: "{#MyAppAssocName}"; Flags: uninsdeletekey
Root: "HKA"; Subkey: "Software\Classes\{#MyAppAssocKey}\DefaultIcon"; ValueType: string; ValueData: "{app}\{#MyAppExeName},0"
Root: "HKA"; Subkey: "Software\Classes\{#MyAppAssocKey}\shell\open\command"; ValueType: string; ValueData: """{app}\{#MyAppExeName}"" ""%1"""
Root: "HKA"; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes"; ValueType: string; ValueName: ".myp"

Root: "HKCU"; Subkey: "SOFTWARE\Classes\CLSID\{{2B7CC760-21EC-4184-890E-2E1766C6CE04}"; ValueType: string; ValueData: "{#MyAppName}"; Flags: uninsdeletekey
Root: "HKCU"; Subkey: "SOFTWARE\Classes\CLSID\{{2B7CC760-21EC-4184-890E-2E1766C6CE04}\DefaultIcon"; ValueType: string; ValueData: """{app}\{#MyAppExeName}"""; Flags: uninsdeletekey
Root: "HKCU"; Subkey: "SOFTWARE\Classes\CLSID\{{2B7CC760-21EC-4184-890E-2E1766C6CE04}\shell\Open\Command"; ValueType: string; ValueData: """{app}\{#MyAppExeName}"" ""%1"""; Flags: uninsdeletekey
Root: "HKCU"; Subkey: "SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{{2B7CC760-21EC-4184-890E-2E1766C6CE04}"; ValueType: string; ValueData: "{#MyAppName}"; Flags: uninsdeletekey

Root: "HKCU"; Subkey: "SOFTWARE\Microsoft\Windows\CurrentVersion\Run"; ValueType: string; ValueName: "{#MyAppName}"; ValueData: """{app}\{#MyAppExeName}"""; Flags: uninsdeletevalue

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{autodesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon
Name: "{group}\{#MyAppUninstallName}"; Filename: "{uninstallexe}"

[Run]
Filename: "{sys}\netsh.exe"; Parameters: "advfirewall firewall delete rule name=""MyApp"" program=""{app}\{#MyAppExeName}"" "; Flags: runhidden;
Filename: "{sys}\netsh.exe"; Parameters: "advfirewall firewall add rule name=""MyApp"" program=""{app}\{#MyAppExeName}"" dir=in action=allow enable=yes"; Flags: runhidden;
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

[UninstallDelete]
Type: filesandordirs; Name: "{localappdata}\MyApp"
Type: filesandordirs; Name: "{localappdata}\Youth Co.,Ld\MyApp"

[Code]
procedure ExitProcess(exitCode:integer);
  external 'ExitProcess@kernel32.dll stdcall';

// �Զ��庯�����ж������Ƿ����У�����Ϊ��Ҫ�жϵ�������exe����
function KDetectSoft(strExeName: String): Boolean;
// ��������
var ErrorCode: Integer;
var bRes: Boolean;
var strFileContent: AnsiString;
var strTmpPath: String;  // ��ʱĿ¼
var strTmpFile: String;  // ��ʱ�ļ�����������������ݽ��
var strCmdFind: String;  // ������������
var strCmdKill: String;  // ��ֹ��������
begin
  strTmpPath := GetTempDir();
  strTmpFile := Format('%sfindSoftRes.txt', [strTmpPath]);
  strCmdFind := Format('/c tasklist /nh|find /c /i "%s" > "%s"', [strExeName, strTmpFile]);
  strCmdKill := Format('/c taskkill /f /t /im %s', [strExeName]);
  bRes := ShellExec('open', ExpandConstant('{cmd}'), strCmdFind, '', SW_HIDE, ewWaitUntilTerminated, ErrorCode);
  if bRes then begin
      bRes := LoadStringFromFile(strTmpFile, strFileContent);
      strFileContent := Trim(strFileContent);
      if bRes then begin
         if StrToInt(strFileContent) > 0 then begin
            ShellExec('open', ExpandConstant('{cmd}'), strCmdKill, '', SW_HIDE, ewNoWait, ErrorCode);;
            Result:= true;
         end else begin
            Result:= true;
            Exit;
         end;
      end;
  end;
  Result :=true;
end;

// ��ʼҳ��һ��ʱ�ж������Ƿ�����
function NextButtonClick(CurPageID: Integer): Boolean;
begin
  if 1=CurPageID then begin
      Result := KDetectSoft('MyApp.exe');
      Exit;
  end; 
  Result:= true;
end;

// ж��ʱ�ر�����
function InitializeUninstall(): Boolean;
begin
  Result := KDetectSoft('MyApp.exe');
end;
