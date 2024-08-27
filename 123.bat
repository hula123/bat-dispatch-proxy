CLS
@echo off
if "%OS%"=="Windows_NT" setlocal enabledelayedexpansion
set ip=192.168
set myip=
for /f "tokens=16" %%i in ('ipconfig ^|find /i "IPv4"') do (
set var=%%i
echo !var!| findstr 192.168 > null && set "myip=!myip! !var!"
)
echo %myip%
Start "" "D:\go-dispatch-proxy.exe" %myip%
