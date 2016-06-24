; Script generated by the HM NIS Edit Script Wizard.

; HM NIS Edit Wizard helper defines
!define PRODUCT_NAME "Hulen"
!define PRODUCT_VERSION "1.0"
!define PRODUCT_PUBLISHER "HulenGames"
;!define PRODUCT_DIR_REGKEY "Software\Microsoft\Windows\CurrentVersion\App Paths\DXSDK_Jun10.exe"
!define PRODUCT_UNINST_KEY "Software\Microsoft\Windows\CurrentVersion\Uninstall\${PRODUCT_NAME}"
!define PRODUCT_UNINST_ROOT_KEY "HKLM"

# For logical structures
!include LogicLib.nsh

# For know if the machine is 64 or 32 bits
!include x64.nsh

; MUI 1.67 compatible ------
!include "MUI.nsh"

; MUI Settings
!define MUI_ABORTWARNING
!define MUI_ICON "HulenBackground.ico"
!define MUI_UNICON "${NSISDIR}\Contrib\Graphics\Icons\modern-uninstall.ico"

; Language Selection Dialog Settings
!define MUI_LANGDLL_REGISTRY_ROOT "${PRODUCT_UNINST_ROOT_KEY}"
!define MUI_LANGDLL_REGISTRY_KEY "${PRODUCT_UNINST_KEY}"
!define MUI_LANGDLL_REGISTRY_VALUENAME "NSIS:Language"

; Welcome page
!insertmacro MUI_PAGE_WELCOME
; License page
!insertmacro MUI_PAGE_LICENSE "Licency.txt"
; Directory page
!insertmacro MUI_PAGE_DIRECTORY
; Instfiles page
!insertmacro MUI_PAGE_INSTFILES
; Finish page
!define MUI_FINISHPAGE_RUN "$INSTDIR\Exes\Galeon.exe"
!insertmacro MUI_PAGE_FINISH

; Uninstaller pages
!insertmacro MUI_UNPAGE_INSTFILES

; Language files
!insertmacro MUI_LANGUAGE "English"
!insertmacro MUI_LANGUAGE "Spanish"

; MUI end ------

;---------------------
; Run lnk as admin
;---------------------

!include LogicLib.nsh
 
!ifndef IPersistFile
!define IPersistFile {0000010b-0000-0000-c000-000000000046}
!endif
!ifndef CLSID_ShellLink
!define CLSID_ShellLink {00021401-0000-0000-C000-000000000046}
!define IID_IShellLinkA {000214EE-0000-0000-C000-000000000046}
!define IID_IShellLinkW {000214F9-0000-0000-C000-000000000046}
!define IShellLinkDataList {45e2b4ae-b1c3-11d0-b92f-00a0c90312e1}
  !ifdef NSIS_UNICODE
  !define IID_IShellLink ${IID_IShellLinkW}
  !else
  !define IID_IShellLink ${IID_IShellLinkA}
  !endif
!endif
 
 
 
Function ShellLinkSetRunAs
System::Store S
pop $9
System::Call "ole32::CoCreateInstance(g'${CLSID_ShellLink}',i0,i1,g'${IID_IShellLink}',*i.r1)i.r0"
${If} $0 = 0
  System::Call "$1->0(g'${IPersistFile}',*i.r2)i.r0" ;QI
  ${If} $0 = 0
    System::Call "$2->5(w '$9',i 0)i.r0" ;Load
    ${If} $0 = 0
      System::Call "$1->0(g'${IShellLinkDataList}',*i.r3)i.r0" ;QI
      ${If} $0 = 0
        System::Call "$3->6(*i.r4)i.r0" ;GetFlags
        ${If} $0 = 0
          System::Call "$3->7(i $4|0x2000)i.r0" ;SetFlags ;SLDF_RUNAS_USER
          ${If} $0 = 0
            System::Call "$2->6(w '$9',i1)i.r0" ;Save
          ${EndIf}
        ${EndIf}
        System::Call "$3->2()" ;Release
      ${EndIf}
    System::Call "$2->2()" ;Release
    ${EndIf}
  ${EndIf}
  System::Call "$1->2()" ;Release
${EndIf}
push $0
System::Store L
FunctionEnd

;---------------------
; End Run lnk as admin
;---------------------



Name "${PRODUCT_NAME} ${PRODUCT_VERSION}"
OutFile "Installer.exe"
InstallDir "$PROGRAMFILES\Hulen"
;InstallDirRegKey HKLM "${PRODUCT_DIR_REGKEY}" ""
ShowInstDetails show
ShowUnInstDetails show

Function .onInit
  !insertmacro MUI_LANGDLL_DISPLAY
FunctionEnd

Section "Hulen" SEC01

  # Read predetermined value of Hulen
  ReadRegStr $0 HKLM "SOFTWARE\Hulen" ""
  # Install Hulen normally
  ${If} ${ERRORS}

    SetOutPath "$INSTDIR"
    SetOverwrite try
    File /r "Prerequisites"

    ${If} ${RunningX64}
        # 64 bit code
        ExecWait "$INSTDIR\Prerequisites\vcredist_x64.exe"
        SetOutPath "C:\Windows\SysWOW64"
        File "C:\Windows\System32\msvcp120.dll"
        File "C:\Windows\System32\msvcr120.dll"
    ${Else}
        # 32 bit code
        ExecWait "$INSTDIR\Prerequisites\vcredist_x86.exe"
    ${EndIf}

    ExecWait "$INSTDIR\Prerequisites\DXSDK_Jun10.exe"

    SetOutPath $INSTDIR\Exes
    File /nonfatal /a /r "..\Exes\"

    SetOutPath $INSTDIR\Src
    File /nonfatal /a /r "..\Src\"

    CreateDirectory $INSTDIR\dependencies
    SetOutPath $INSTDIR\dependencies\include
    File /nonfatal /a /r "..\dependencies\include\"

    # Write in the register
    # I see that write into the following path "HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Hulen"
    WriteRegStr HKLM "SOFTWARE\Hulen" "" "$INSTDIR"

  # if Hulen has been installed... 
  ${Else}
    ${If} $0 == ""
      MESSAGEBOX MB_OK "Hulen exists, but has no value"
    ${Else}
      MessageBox MB_OK "You have already installed Hulen. Please uninstall first with $INSTDIR\uninst.exe"
    ${Endif}
  ${Endif}
SectionEnd

Section -AdditionalIcons
  SetOutPath "$INSTDIR\Exes\"
  CreateShortCut "$SMPROGRAMS\Hulen\Uninstall.lnk" "$INSTDIR\uninst.exe"
  CreateShortcut "$DESKTOP\Hulen.lnk" "$INSTDIR\Exes\Galeon.exe"
  push "$DESKTOP\Hulen.lnk"
  call ShellLinkSetRunAs ;admin rights
  pop $0
  DetailPrint HR=$0
  CreateShortcut "$SMPROGRAMS\Hulen\Hulen.lnk" "$INSTDIR\Exes\Galeon.exe"
  push "$SMPROGRAMS\Hulen\Hulen.lnk"
  call ShellLinkSetRunAs ;admin rights
  pop $0
  DetailPrint HR=$0
SectionEnd

Section -Post
  WriteUninstaller "$INSTDIR\uninst.exe"
  ;WriteRegStr HKLM "${PRODUCT_DIR_REGKEY}" "" "$INSTDIR\Prerequisites\DXSDK_Jun10.exe"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayName" "$(^Name)"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "UninstallString" "$INSTDIR\uninst.exe"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayIcon" "$INSTDIR\Prerequisites\DXSDK_Jun10.exe"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayVersion" "${PRODUCT_VERSION}"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "Publisher" "${PRODUCT_PUBLISHER}"
SectionEnd


Function un.onUninstSuccess
  HideWindow
  MessageBox MB_ICONINFORMATION|MB_OK "La desinstalaci�n de $(^Name) finaliz� satisfactoriamente."
FunctionEnd

Function un.onInit
!insertmacro MUI_UNGETLANGUAGE
  MessageBox MB_ICONQUESTION|MB_YESNO|MB_DEFBUTTON2 "�Est� completamente seguro que desea desinstalar $(^Name) junto con todos sus componentes?" IDYES +2
  Abort
FunctionEnd

Section Uninstall
  Delete "$INSTDIR\uninst.exe"

  Delete "$SMPROGRAMS\Hulen\Uninstall.lnk"
  Delete "$DESKTOP\Hulen.lnk"
  Delete "$SMPROGRAMS\Hulen\Hulen.lnk"

  RMDir "$SMPROGRAMS\Hulen"

  # Delete files
  RMDir /r /REBOOTOK $INSTDIR
  
  # Delete register key
  DeleteRegKey HKLM "SOFTWARE\Hulen"

  DeleteRegKey ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}"
  ;DeleteRegKey HKLM "${PRODUCT_DIR_REGKEY}"
  SetAutoClose true
SectionEnd