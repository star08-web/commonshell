echo off
echo [debug] startingWPE
wpeinit
title wpeshell31
color 3
echo premere un tasto per avviare la sessione
pause >nul 
cls
:start
echo [debug] [session:1] [usr:nt_service\trustedinstaller]
echo application list
echo 1. diskpart                    2. windows command line (cmd.exe)
echo 3. explorer++                  4. GimageX
echo 5. browser                     6. Regedit
choice /c 123456 /n /m "SELEZIONA DA ELENCO: "
cls
echo.
if %errorlevel%==1 goto 1
if %errorlevel%==2 goto 2
if %errorlevel%==3 goto 3
if %errorlevel%==4 goto 4
if %errorlevel%==5 goto 5
if %errorlevel%==6 goto 6
rem ################################
:1
echo starting diskpart
diskpart
goto start
rem ################################
:2
echo starting cmd
start
goto start
rem ###############################
:3 
echo starting explorer++
start \windows\explorer++.exe
goto start
rem ###############################
:4 
echo starting gimagex
start \appfolder\gimagex\deploy-tool.exe
goto start
rem ###############################
:5
echo starting browser
start \appfolder\browser\mypal.exe
goto start
rem ###############################
:6
echo starting regedit
regedit
goto start
rem ###############################


