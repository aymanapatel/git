@echo off

:: ====================================================================
:: Name        : install_hooks.bat
:: Description : Installs a commit-msg hook for git
:: Author      : Various
:: Notes       : Need to be executed as an administrator
:: Revision    : June 2020 - Initial version
:: ====================================================================

@echo %cd%

set LIB_DIR=submodules

:: Curent directory: <root>\githooks\python
:: Final directory:  <root>\.git\hooks
if exist ..\..\.git\hooks\commit-msg del /F ..\..\.git\hooks\commit-msg
:: mklink changes Crrect Dir to <root>\.\git\hooks
:: Final directory:  <root>\githooks\python
mklink ..\..\.git\hooks\commit-msg ..\..\githooks\python\commit-msg.py


:: Curent directory: <root>\githooks\python
:: Final directory:  <root>\.git\hooks
if exist ..\..\.git\hooks\%LIB_DIR% rmdir /S /Q ..\..\.git\hooks\%LIB_DIR%
mklink /D ..\..\.git\hooks\%LIB_DIR% ..\..\githooks\python\%LIB_DIR%