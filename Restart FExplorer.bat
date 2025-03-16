@echo off
rem [ SETTINGS ]==========================================================
set AppName=Restart FExplorer
::set AppAuthor=Kristian Cenow
::set AppVersion=v1.0
::set AppWeb=https://kcenow.com
set AppRestoreFExplorer=1
rem ======================================================================

rem [ REGISTER ]==========================================================
title %AppName%
rem ======================================================================

rem [ FUNCTION ]==========================================================
taskkill /f /im explorer.exe
start explorer.exe
IF "%AppRestoreFExplorer%" EQU "1" (
	IF "%~dp0" NEQ "C:\Users\%USERNAME%\Desktop\" ( start . )
)
rem ======================================================================