; Script generated by the HM NIS Edit Script Wizard.

; HM NIS Edit Wizard helper defines
!define PRODUCT_NAME "DjVuLibre+DjView"
!define PRODUCT_VERSION "3.5.21+4.4"
!define PRODUCT_PUBLISHER "DjVuZone"
!define PRODUCT_WEB_SITE "http://djvu.sourceforge.net"
!define PRODUCT_DIR_REGKEY "Software\Microsoft\Windows\CurrentVersion\App Paths\djview.exe"
!define PRODUCT_UNINST_KEY "Software\Microsoft\Windows\CurrentVersion\Uninstall\${PRODUCT_NAME}"
!define PRODUCT_UNINST_ROOT_KEY "HKLM"

SetCompressor bzip2

; MUI 1.67 compatible ------
!include "MUI.nsh"

; MUI Settings
!define MUI_ABORTWARNING
!define MUI_ICON "${NSISDIR}\Contrib\Graphics\Icons\modern-install.ico"
!define MUI_UNICON "${NSISDIR}\Contrib\Graphics\Icons\modern-uninstall.ico"

; Welcome page
!insertmacro MUI_PAGE_WELCOME
; License page
!insertmacro MUI_PAGE_LICENSE "..\djvulibre-3.5\COPYING"
; Directory page
!insertmacro MUI_PAGE_DIRECTORY
; Instfiles page
!insertmacro MUI_PAGE_INSTFILES
; Finish page
!define MUI_FINISHPAGE_SHOWREADME "$INSTDIR\README.txt"
!insertmacro MUI_PAGE_FINISH

; Uninstaller pages
!insertmacro MUI_UNPAGE_INSTFILES

; Language files
!insertmacro MUI_LANGUAGE "English"

; Reserve files
!insertmacro MUI_RESERVEFILE_INSTALLOPTIONS

; MUI end ------

Name "${PRODUCT_NAME} ${PRODUCT_VERSION}"
OutFile "..\${PRODUCT_NAME}-${PRODUCT_VERSION}-Setup.exe"
InstallDir "$PROGRAMFILES\DjVuZone\DjVuLibre"
InstallDirRegKey HKLM "${PRODUCT_DIR_REGKEY}" ""
ShowInstDetails show
ShowUnInstDetails show

Section "MainSection" SEC01
  SetOutPath "$INSTDIR"
  SetOverwrite try
  File "bzz.exe"
  File "c44.exe"
  File "cjb2.exe"
  File "cpaldjvu.exe"
  File "csepdjvu.exe"
  File "ddjvu.exe"
  File "djview.exe"
  CreateDirectory "$SMPROGRAMS\DjVuLibre"
  CreateShortCut "$SMPROGRAMS\DjVuLibre\DjView.lnk" "$INSTDIR\djview.exe"
  CreateShortCut "$DESKTOP\DjView.lnk" "$INSTDIR\djview.exe"
  File "djvm.exe"
  File "djvmcvt.exe"
  File "djvudump.exe"
  File "djvuextract.exe"
  File "djvumake.exe"
  File "djvups.exe"
  File "djvused.exe"
  File "djvuserve.exe"
  File "djvutoxml.exe"
  File "djvutxt.exe"
  File "djvuxmlparser.exe"
  SetOutPath "$INSTDIR\include"
  File "include\ddjvuapi.h"
  File "include\miniexp.h"
  SetOutPath "$INSTDIR\libdjvu"
  File "libdjvu\ddjvuapi.h"
  File "libdjvu\miniexp.h"
  SetOutPath "$INSTDIR"
  File "libdjvulibre.dll"
  File "libdjvulibre.lib"
  File "libjpeg.dll"
  File "libtiff.dll"
  File "libz.dll"
  SetOutPath "$INSTDIR\man"
  File "man\bzz.html"
  File "man\c44.html"
  File "man\cjb2.html"
  File "man\cpaldjvu.html"
  File "man\csepdjvu.html"
  File "man\ddjvu.html"
  File "man\djview4.html"
  File "man\djvm.html"
  File "man\djvmcvt.html"
  File "man\djvu.html"
  File "man\djvudump.html"
  File "man\djvuextract.html"
  File "man\djvumake.html"
  File "man\djvups.html"
  File "man\djvused.html"
  File "man\djvuserve.html"
  File "man\djvutxt.html"
  File "man\djvuxml.html"
  SetOutPath "$INSTDIR"
  File "Microsoft.VC90.CRT.manifest"
  File "msvcm90.dll"
  File "msvcp90.dll"
  File "msvcr90.dll"
  SetOutPath "$INSTDIR\plugins\accessible"
  File "plugins\accessible\qtaccessiblecompatwidgets4.dll"
  File "plugins\accessible\qtaccessiblecompatwidgetsd4.dll"
  File "plugins\accessible\qtaccessiblewidgets4.dll"
  File "plugins\accessible\qtaccessiblewidgetsd4.dll"
  SetOutPath "$INSTDIR\plugins\codecs"
  File "plugins\codecs\qcncodecs4.dll"
  File "plugins\codecs\qcncodecsd4.dll"
  File "plugins\codecs\qjpcodecs4.dll"
  File "plugins\codecs\qjpcodecsd4.dll"
  File "plugins\codecs\qkrcodecs4.dll"
  File "plugins\codecs\qkrcodecsd4.dll"
  File "plugins\codecs\qtwcodecs4.dll"
  File "plugins\codecs\qtwcodecsd4.dll"
  SetOutPath "$INSTDIR\plugins\imageformats"
  File "plugins\imageformats\qgif4.dll"
  File "plugins\imageformats\qgifd4.dll"
  File "plugins\imageformats\qico4.dll"
  File "plugins\imageformats\qicod4.dll"
  File "plugins\imageformats\qjpeg4.dll"
  File "plugins\imageformats\qjpegd4.dll"
  File "plugins\imageformats\qmng4.dll"
  File "plugins\imageformats\qmngd4.dll"
  File "plugins\imageformats\qsvg4.dll"
  File "plugins\imageformats\qsvgd4.dll"
  File "plugins\imageformats\qtiff4.dll"
  File "plugins\imageformats\qtiffd4.dll"
  SetOutPath "$INSTDIR"
  File "qt.conf"
  File "QtCore4.dll"
  File "QtGui4.dll"
  File "QtNetwork4.dll"
  File "README.txt"
  File "djvulibre.nsi"
  SetOutPath "$INSTDIR\share\djvu\djview4"
  File "share\djvu\djview4\djview_cs.qm"
  File "share\djvu\djview4\djview_de.qm"
  File "share\djvu\djview4\djview_fr.qm"
  File "share\djvu\djview4\djview_ru.qm"
  File "share\djvu\djview4\djview_uk.qm"
  File "share\djvu\djview4\qt_ar.qm"
  File "share\djvu\djview4\qt_de.qm"
  File "share\djvu\djview4\qt_es.qm"
  File "share\djvu\djview4\qt_fr.qm"
  File "share\djvu\djview4\qt_iw.qm"
  File "share\djvu\djview4\qt_ja_jp.qm"
  File "share\djvu\djview4\qt_pl.qm"
  File "share\djvu\djview4\qt_pt.qm"
  File "share\djvu\djview4\qt_ru.qm"
  File "share\djvu\djview4\qt_sk.qm"
  File "share\djvu\djview4\qt_sv.qm"
  File "share\djvu\djview4\qt_uk.qm"
  File "share\djvu\djview4\qt_zh_CN.qm"
  File "share\djvu\djview4\qt_zh_TW.qm"
  SetOutPath "$INSTDIR\share\djvu\osi\cs"
  File "share\djvu\osi\cs\messages.xml"
  SetOutPath "$INSTDIR\share\djvu\osi\de"
  File "share\djvu\osi\de\libdjvu++.xml"
  File "share\djvu\osi\de\messages.xml"
  SetOutPath "$INSTDIR\share\djvu\osi\en"
  File "share\djvu\osi\en\djvutools-reference.xml"
  File "share\djvu\osi\en\libdjvu++.xml"
  File "share\djvu\osi\en\messages.xml"
  File "share\djvu\osi\en\unixgui-shared.xml"
  File "share\djvu\osi\en\unixgui-viewer.xml"
  SetOutPath "$INSTDIR\share\djvu\osi\fr"
  File "share\djvu\osi\fr\libdjvu++.xml"
  File "share\djvu\osi\fr\messages.xml"
  SetOutPath "$INSTDIR\share\djvu\osi\ja"
  File "share\djvu\osi\ja\libdjvu++.xml"
  File "share\djvu\osi\ja\messages.xml"
  SetOutPath "$INSTDIR\share\djvu\osi"
  File "share\djvu\osi\languages.xml"
  SetOutPath "$INSTDIR\share\djvu\osi\zh"
  File "share\djvu\osi\zh\libdjvu++.xml"
  File "share\djvu\osi\zh\messages.xml"
  SetOutPath "$INSTDIR\share\djvu\pubtext"
  File "share\djvu\pubtext\DjVuMessages.dtd"
  File "share\djvu\pubtext\DjVuOCR.dtd"
  File "share\djvu\pubtext\DjVuXML-s.dtd"
SectionEnd

Section -AdditionalIcons
  SetOutPath $INSTDIR
  WriteIniStr "$INSTDIR\${PRODUCT_NAME}.url" "InternetShortcut" "URL" "${PRODUCT_WEB_SITE}"
  CreateShortCut "$SMPROGRAMS\DjVuLibre\Website.lnk" "$INSTDIR\${PRODUCT_NAME}.url"
  CreateShortCut "$SMPROGRAMS\DjVuLibre\Uninstall.lnk" "$INSTDIR\uninst.exe"
SectionEnd

Section -Post
  WriteUninstaller "$INSTDIR\uninst.exe"
  WriteRegStr HKLM "${PRODUCT_DIR_REGKEY}" "" "$INSTDIR\bzz.exe"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayName" "${PRODUCT_NAME}"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "UninstallString" "$INSTDIR\uninst.exe"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayIcon" "$INSTDIR\djview.exe"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayVersion" "${PRODUCT_VERSION}"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "URLInfoAbout" "${PRODUCT_WEB_SITE}"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "Publisher" "${PRODUCT_PUBLISHER}"
  
  WriteRegStr HKCR ".djvu" "" "DjVu.Document"
  WriteRegStr HKCR ".djv" "" "DjVu.Document"
  WriteRegStr HKCR "DjVu.Document" "" "DjVu Document"
  WriteRegStr HKCR "DjVu.Document\DefaultIcon" "" "$INSTDIR\djview.exe,1"
  WriteRegStr HKCR "DjVu.Document\shell\open\command" "" '"$INSTDIR\djview.exe" "%1"'

SectionEnd


Function un.onUninstSuccess
  HideWindow
  MessageBox MB_ICONINFORMATION|MB_OK "$(^Name) was successfully removed from your computer."
FunctionEnd

Function un.onInit
  MessageBox MB_ICONQUESTION|MB_YESNO|MB_DEFBUTTON2 "Are you sure you want to completely remove $(^Name) and all of its components?" IDYES +2
  Abort
FunctionEnd

Section Uninstall
  Delete "$INSTDIR\${PRODUCT_NAME}.url"
  Delete "$INSTDIR\uninst.exe"
  Delete "$INSTDIR\share\djvu\pubtext\DjVuXML-s.dtd"
  Delete "$INSTDIR\share\djvu\pubtext\DjVuOCR.dtd"
  Delete "$INSTDIR\share\djvu\pubtext\DjVuMessages.dtd"
  Delete "$INSTDIR\share\djvu\osi\zh\messages.xml"
  Delete "$INSTDIR\share\djvu\osi\zh\libdjvu++.xml"
  Delete "$INSTDIR\share\djvu\osi\languages.xml"
  Delete "$INSTDIR\share\djvu\osi\ja\messages.xml"
  Delete "$INSTDIR\share\djvu\osi\ja\libdjvu++.xml"
  Delete "$INSTDIR\share\djvu\osi\fr\messages.xml"
  Delete "$INSTDIR\share\djvu\osi\fr\libdjvu++.xml"
  Delete "$INSTDIR\share\djvu\osi\en\unixgui-viewer.xml"
  Delete "$INSTDIR\share\djvu\osi\en\unixgui-shared.xml"
  Delete "$INSTDIR\share\djvu\osi\en\messages.xml"
  Delete "$INSTDIR\share\djvu\osi\en\libdjvu++.xml"
  Delete "$INSTDIR\share\djvu\osi\en\djvutools-reference.xml"
  Delete "$INSTDIR\share\djvu\osi\de\messages.xml"
  Delete "$INSTDIR\share\djvu\osi\de\libdjvu++.xml"
  Delete "$INSTDIR\share\djvu\osi\cs\messages.xml"
  Delete "$INSTDIR\share\djvu\djview4\qt_zh_TW.qm"
  Delete "$INSTDIR\share\djvu\djview4\qt_zh_CN.qm"
  Delete "$INSTDIR\share\djvu\djview4\qt_uk.qm"
  Delete "$INSTDIR\share\djvu\djview4\qt_sv.qm"
  Delete "$INSTDIR\share\djvu\djview4\qt_sk.qm"
  Delete "$INSTDIR\share\djvu\djview4\qt_ru.qm"
  Delete "$INSTDIR\share\djvu\djview4\qt_pt.qm"
  Delete "$INSTDIR\share\djvu\djview4\qt_pl.qm"
  Delete "$INSTDIR\share\djvu\djview4\qt_ja_jp.qm"
  Delete "$INSTDIR\share\djvu\djview4\qt_iw.qm"
  Delete "$INSTDIR\share\djvu\djview4\qt_fr.qm"
  Delete "$INSTDIR\share\djvu\djview4\qt_es.qm"
  Delete "$INSTDIR\share\djvu\djview4\qt_de.qm"
  Delete "$INSTDIR\share\djvu\djview4\qt_ar.qm"
  Delete "$INSTDIR\share\djvu\djview4\djview_uk.qm"
  Delete "$INSTDIR\share\djvu\djview4\djview_ru.qm"
  Delete "$INSTDIR\share\djvu\djview4\djview_fr.qm"
  Delete "$INSTDIR\share\djvu\djview4\djview_de.qm"
  Delete "$INSTDIR\share\djvu\djview4\djview_cs.qm"
  Delete "$INSTDIR\README.txt"
  Delete "$INSTDIR\djvulibre.nsi"
  Delete "$INSTDIR\QtNetwork4.dll"
  Delete "$INSTDIR\QtGui4.dll"
  Delete "$INSTDIR\QtCore4.dll"
  Delete "$INSTDIR\qt.conf"
  Delete "$INSTDIR\plugins\imageformats\qtiffd4.dll"
  Delete "$INSTDIR\plugins\imageformats\qtiff4.dll"
  Delete "$INSTDIR\plugins\imageformats\qsvgd4.dll"
  Delete "$INSTDIR\plugins\imageformats\qsvg4.dll"
  Delete "$INSTDIR\plugins\imageformats\qmngd4.dll"
  Delete "$INSTDIR\plugins\imageformats\qmng4.dll"
  Delete "$INSTDIR\plugins\imageformats\qjpegd4.dll"
  Delete "$INSTDIR\plugins\imageformats\qjpeg4.dll"
  Delete "$INSTDIR\plugins\imageformats\qicod4.dll"
  Delete "$INSTDIR\plugins\imageformats\qico4.dll"
  Delete "$INSTDIR\plugins\imageformats\qgifd4.dll"
  Delete "$INSTDIR\plugins\imageformats\qgif4.dll"
  Delete "$INSTDIR\plugins\codecs\qtwcodecsd4.dll"
  Delete "$INSTDIR\plugins\codecs\qtwcodecs4.dll"
  Delete "$INSTDIR\plugins\codecs\qkrcodecsd4.dll"
  Delete "$INSTDIR\plugins\codecs\qkrcodecs4.dll"
  Delete "$INSTDIR\plugins\codecs\qjpcodecsd4.dll"
  Delete "$INSTDIR\plugins\codecs\qjpcodecs4.dll"
  Delete "$INSTDIR\plugins\codecs\qcncodecsd4.dll"
  Delete "$INSTDIR\plugins\codecs\qcncodecs4.dll"
  Delete "$INSTDIR\plugins\accessible\qtaccessiblewidgetsd4.dll"
  Delete "$INSTDIR\plugins\accessible\qtaccessiblewidgets4.dll"
  Delete "$INSTDIR\plugins\accessible\qtaccessiblecompatwidgetsd4.dll"
  Delete "$INSTDIR\plugins\accessible\qtaccessiblecompatwidgets4.dll"
  Delete "$INSTDIR\msvcr90.dll"
  Delete "$INSTDIR\msvcp90.dll"
  Delete "$INSTDIR\msvcm90.dll"
  Delete "$INSTDIR\Microsoft.VC90.CRT.manifest"
  Delete "$INSTDIR\man\djvuxml.html"
  Delete "$INSTDIR\man\djvutxt.html"
  Delete "$INSTDIR\man\djvuserve.html"
  Delete "$INSTDIR\man\djvused.html"
  Delete "$INSTDIR\man\djvups.html"
  Delete "$INSTDIR\man\djvumake.html"
  Delete "$INSTDIR\man\djvuextract.html"
  Delete "$INSTDIR\man\djvudump.html"
  Delete "$INSTDIR\man\djvu.html"
  Delete "$INSTDIR\man\djvmcvt.html"
  Delete "$INSTDIR\man\djvm.html"
  Delete "$INSTDIR\man\djview4.html"
  Delete "$INSTDIR\man\ddjvu.html"
  Delete "$INSTDIR\man\csepdjvu.html"
  Delete "$INSTDIR\man\cpaldjvu.html"
  Delete "$INSTDIR\man\cjb2.html"
  Delete "$INSTDIR\man\c44.html"
  Delete "$INSTDIR\man\bzz.html"
  Delete "$INSTDIR\libz.dll"
  Delete "$INSTDIR\libtiff.dll"
  Delete "$INSTDIR\libjpeg.dll"
  Delete "$INSTDIR\libdjvulibre.lib"
  Delete "$INSTDIR\libdjvulibre.dll"
  Delete "$INSTDIR\libdjvu\miniexp.h"
  Delete "$INSTDIR\libdjvu\ddjvuapi.h"
  Delete "$INSTDIR\include\miniexp.h"
  Delete "$INSTDIR\include\ddjvuapi.h"
  Delete "$INSTDIR\djvuxmlparser.exe"
  Delete "$INSTDIR\djvutxt.exe"
  Delete "$INSTDIR\djvutoxml.exe"
  Delete "$INSTDIR\djvuserve.exe"
  Delete "$INSTDIR\djvused.exe"
  Delete "$INSTDIR\djvups.exe"
  Delete "$INSTDIR\djvumake.exe"
  Delete "$INSTDIR\djvuextract.exe"
  Delete "$INSTDIR\djvudump.exe"
  Delete "$INSTDIR\djvmcvt.exe"
  Delete "$INSTDIR\djvm.exe"
  Delete "$INSTDIR\djview.exe"
  Delete "$INSTDIR\ddjvu.exe"
  Delete "$INSTDIR\csepdjvu.exe"
  Delete "$INSTDIR\cpaldjvu.exe"
  Delete "$INSTDIR\cjb2.exe"
  Delete "$INSTDIR\c44.exe"
  Delete "$INSTDIR\bzz.exe"

  Delete "$SMPROGRAMS\DjVuLibre\Uninstall.lnk"
  Delete "$SMPROGRAMS\DjVuLibre\Website.lnk"
  Delete "$DESKTOP\DjView.lnk"
  Delete "$SMPROGRAMS\DjVuLibre\DjView.lnk"

  RMDir "$SMPROGRAMS\DjVuLibre"
  RMDir "$INSTDIR\share\djvu\pubtext"
  RMDir "$INSTDIR\share\djvu\osi\zh"
  RMDir "$INSTDIR\share\djvu\osi\ja"
  RMDir "$INSTDIR\share\djvu\osi\fr"
  RMDir "$INSTDIR\share\djvu\osi\en"
  RMDir "$INSTDIR\share\djvu\osi\de"
  RMDir "$INSTDIR\share\djvu\osi\cs"
  RMDir "$INSTDIR\share\djvu\osi"
  RMDir "$INSTDIR\share\djvu\djview4"
  RMDir "$INSTDIR\plugins\imageformats"
  RMDir "$INSTDIR\plugins\codecs"
  RMDir "$INSTDIR\plugins\accessible"
  RMDir "$INSTDIR\man"
  RMDir "$INSTDIR\libdjvu"
  RMDir "$INSTDIR\include"
  RMDir "$INSTDIR"

  DeleteRegKey ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}"
  DeleteRegKey HKLM "${PRODUCT_DIR_REGKEY}"
  SetAutoClose true
SectionEnd