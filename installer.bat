@echo off
cls
title Pygame Installer
color 0a
type resources\pygame.acf
echo pygame installer
type resources\ver.acf
echo.

set arg1=%1
shift

if "%arg1%"=="install" goto install
if "%arg1%"=="uninstall" goto uninstall
if "%arg1%"=="update" goto update
if "%arg1%"=="reinstall" goto reinstall
if "%arg1%"=="help" goto help
goto error

:install
set /p TAB="Would you like to install pygame? (y/n)>"
if "%TAB%"=="y" goto yesin
if NOT "%TAB%"=="y" goto no
exit

:uninstall
set /p TAB="Would you like to uninstall pygame? (y/n)>"
if "%TAB%"=="y" goto yesun
if NOT "%TAB%"=="y" goto no

:update
set /p TAB="Would you like to update pygame? (y/n)>"
if "%TAB%"=="y" goto yesup
if NOT "%TAB%"=="y" goto no

:reinstall
set /p TAB="Would you like to reinstall pygame? (y/n)>"
if "%TAB%"=="y" goto yesre
if NOT "%TAB%"=="y" goto no

:help
README.md
exit

:yesin
echo Executing pip command...
pip install pygame
pause
exit

:yesun
echo Executing pip command...
pip uninstall pygame
pause
exit

:yesup
echo Executing pip command...
pip install pygame --upgrade
pause
exit

:yesre
echo Executing pip command...
pip install --force-reinstall --no-cache-dir pygame
pause
exit


:no
echo.
echo Exiting...
TIMEOUT /T 5
exit

:error
echo no arguments given
set /p TAB="Would you like to install, uninstall, update or reinstall pygame? (in/un/up/re/help)>"
if "%TAB%"=="in" goto install
if "%TAB%"=="un" goto uninstall
if "%TAB%"=="up" goto update
if "%TAB%"=="re" goto reinstall
if "%TAB%"=="help" goto help
echo.
pause