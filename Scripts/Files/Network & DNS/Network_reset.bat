@echo off
color a
cls
@echo.
@echo                                              By Epiczone :3
ECHO 1.Reset Network
ECHO 2.Reininstall Drivers

@echo.
CHOICE /C 12 /M "Enter your choice:"

IF ERRORLEVEL 2 GOTO A
IF ERRORLEVEL 1 GOTO B

:A
ipconfig /release
ipconfig /flushdns
ipconfig /renew
netsh int ip reset
netsh winsock reset
netsh advfirewall reset
GOTO End

:B
netcfg -d
GOTO End