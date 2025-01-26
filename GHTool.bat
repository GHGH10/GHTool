
@echo off
title GHTool
call :banner

:menu
cls
color a
echo  ______     __  __     ______   ______     ______     __        
echo /\  ___\   /\ \_\ \   /\__  _\ /\  __ \   /\  __ \   /\ \       
echo \ \ \__ \  \ \  __ \  \/_/\ \/ \ \ \/\ \  \ \ \/\ \  \ \ \____  
echo  \ \_____\  \ \_\ \_\    \ \_\  \ \_____\  \ \_____\  \ \_____\ 
echo   \/_____/   \/_/\/_/     \/_/   \/_____/   \/_____/   \/_____/ 


              
echo 1) How To Use?
echo 2) Ping
echo 3) Telnet (You need to activate telnet on Control Panel)
echo 4) Curl
echo 5) IpConfig
echo 6) GetMac
echo 7) NsLookup
echo 8) HostName
echo 9) SystemInfo
echo 10) CMD
echo 11) IpConfig All
echo 12) WinVer
echo 13) NetStat
echo 14) Clean Drivers
echo 15) Powershell
echo 16) Tracert
echo 17) Performance Tracker
echo 18) IP Scanner
echo 0) Exit
echo ---------------------------
set /p choice=Choose an option: 

if "%choice%"=="1" goto How To Use
if "%choice%"=="2" goto Ping
if "%choice%"=="3" goto Telnet
if "%choice%"=="4" goto Curl
if "%choice%"=="5" goto IpConfig
if "%choice%"=="6" goto GetMac
if "%choice%"=="7" goto NsLookup
if "%choice%"=="8" goto Hostname
if "%choice%"=="9" goto SystemInfo
if "%choice%"=="0" goto Exit
if "%choice%"=="10" goto opencmd
if "%choice%"=="11" goto ipconfigall
if "%choice%"=="12" goto winver
if "%choice%"=="13" goto netstat
if "%choice%"=="14" goto cleanmgr
if "%choice%"=="15" goto pwrshell
if "%choice%"=="17" goto ptracker
if "%choice%"=="16" goto tct
if "%choice%"=="18" goto ipscan
goto menu

:How To Use
cls
color 7
echo ---------------------------
echo       How To Use
echo ---------------------------
echo To use a specific command, just type the number and press Enter.
echo Gokalp Hizmetleri
pause
goto menu

:ping
cls
color 7
echo ---------------------------
echo       Ping
echo ---------------------------
set /p target=Enter IP or Domain: 
ping %target%
pause
goto menu

:telnet
cls
color 7
echo ---------------------------
echo       Telnet
echo ---------------------------
echo Make sure Telnet is activated in Control Panel before using this command.
set /p target=Enter IP or Domain: 
telnet %target%
pause
goto menu

:curl
cls
color 7
echo ---------------------------
echo       Curl
echo ---------------------------
set /p url=Enter URL: 
curl %url%
pause
goto menu

:ipconfig
cls
color 7 
echo ---------------------------
echo       IpConfig
echo ---------------------------
ipconfig
pause
goto menu

:getmac
cls
color 7
echo ---------------------------
echo       GetMac
echo ---------------------------
getmac
pause
goto menu

:nslookup
cls
color 7
echo ---------------------------
echo       NsLookup
echo ---------------------------
set /p domain=Enter Domain: 
nslookup %domain%
pause
goto menu

:hostname
cls
color 7
echo ---------------------------
echo       HostName
echo ---------------------------
hostname
pause
goto menu

:systeminfo
cls
color 7
echo ---------------------------
echo       SystemInfo
echo ---------------------------
systeminfo
pause
goto menu

:opencmd
start cmd
exit

:ipconfigall
cls
color 7 
echo ---------------------------
echo       IpConfig All
echo ---------------------------
ipconfig /all
pause
goto menu

:winver
cls
color 7 
echo ---------------------------
echo       WinVer
echo ---------------------------
winver
goto menu

:netstat
cls
color 7 
echo ---------------------------
echo       NetStat
echo ---------------------------
netstat -a
pause
goto menu

:cleanmgr
start cleanmgr
goto menu

:pwrshell
start powershell
goto menu

:ptracker
cls
color 7 
echo ---------------------------
echo       Performance Tracker
echo ---------------------------
cd files
set programPath="%~dp0OpenHardwareMonitor.exe"
powershell -Command "Start-Process %programPath% -Verb RunAs"
goto menu

:tct
cls
color 7
echo ---------------------------
echo       Tracert
echo ---------------------------
set /p domain=Enter Domain: 
tracert %domain%
pause
goto menu

:ipscan
cls
color 7 
echo ---------------------------
echo       IP Scanner
echo ---------------------------
start AngryIPScannerPortable.exe
goto menu


:exit
exit

:banner
color a
echo  ______     __  __     ______   ______     ______     __        
echo /\  ___\   /\ \_\ \   /\__  _\ /\  __ \   /\  __ \   /\ \       
echo \ \ \__ \  \ \  __ \  \/_/\ \/ \ \ \/\ \  \ \ \/\ \  \ \ \____  
echo  \ \_____\  \ \_\ \_\    \ \_\  \ \_____\  \ \_____\  \ \_____\ 
echo   \/_____/   \/_/\/_/     \/_/   \/_____/   \/_____/   \/_____/                                                                 
pause

                                                             
                                                                
                                                                
