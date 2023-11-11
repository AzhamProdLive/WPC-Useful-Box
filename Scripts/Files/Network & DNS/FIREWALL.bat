@ECHO OFF
CLS
@ECHO                                               By Epiczone :3
ECHO.
ECHO 1.Firewall ON
ECHO 2.Firewall OFF
ECHO 3.EXIT
ECHO.

CHOICE /C 123 /M "Enter your choice:"

:: Note - list ERRORLEVELS in decreasing order
IF ERRORLEVEL 3 GOTO EXIT
IF ERRORLEVEL 2 GOTO Firewall OFF
IF ERRORLEVEL 1 GOTO Firewall ON

:Firewall ON
netsh advfirewall set allprofiles state on
GOTO End

:Firewall OFF
netsh advfirewall set allprofiles state off
GOTO End

:EXIT
ECHO Close All (exit)
GOTO End

:End