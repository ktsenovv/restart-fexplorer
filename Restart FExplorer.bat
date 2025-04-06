@echo off
rem [ SETTINGS ]==========================================================
set AppName=Restart FExplorer
::set AppAuthor=Kristian Cenov
::set AppVersion=v2025.04.06
::set AppWeb=kcenow.com
set AppRestoreFExplorer=1
rem ======================================================================

rem [ REGISTER ]==========================================================
title %AppName%
rem ======================================================================

rem [ MAIN ]==============================================================
:: Force kill File Explorer
taskkill /f /im explorer.exe

:: Start File Explorer
start explorer.exe
if "%AppRestoreFExplorer%" EQU "1" (
	if "%~dp0" NEQ "C:\Users\%USERNAME%\Desktop\" (start .)
)

:: Force exit
exit
rem ======================================================================