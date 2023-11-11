@ECHO OFF
CLS
@ECHO                                               By Epiczone :3
ECHO.
ECHO 1.DoH ON
ECHO 2.DoH OFF
ECHO 3.EXIT
ECHO.

CHOICE /C 123 /M "Enter your choice:"

:: Note - list ERRORLEVELS in decreasing order
IF ERRORLEVEL 3 GOTO EXIT
IF ERRORLEVEL 2 GOTO DoH OFF
IF ERRORLEVEL 1 GOTO DoH ON

:DoH ON
reg add "HKLM\System\CurrentControlSet\Services\Dnscache\InterfaceSpecificParameters\%%G\DohInterfaceSettings\Doh\%IPv4PrimaryDNS%" /v "DohFlags" /t REG_QWORD /d "1" /f 1>NUL
reg add "HKLM\System\CurrentControlSet\Services\Dnscache\InterfaceSpecificParameters\%%G\DohInterfaceSettings\Doh\%IPv4SecondaryDNS%" /v "DohFlags" /t REG_QWORD /d "1" /f 1>NUL
 
GOTO End

:DoH OFF
reg add "HKLM\System\CurrentControlSet\Services\Dnscache\InterfaceSpecificParameters\%%G\DohInterfaceSettings\Doh\%IPv4PrimaryDNS%" /v "DohFlags" /t REG_QWORD /d "0" /f 1>NUL
reg add "HKLM\System\CurrentControlSet\Services\Dnscache\InterfaceSpecificParameters\%%G\DohInterfaceSettings\Doh\%IPv4SecondaryDNS%" /v "DohFlags" /t REG_QWORD /d "0" /f 1>NUL

GOTO End

:EXIT
ECHO Close All (exit)
GOTO End

:End