@echo off
cls

:: ----------------------------------------------------------
:: ------------Enable live tile data collection-------------
:: ----------------------------------------------------------
echo --- Enable live tile data collection
reg del "HKCU\Software\Policies\Microsoft\MicrosoftEdge\Main" /v "PreventLiveTileDataCollection" /t REG_DWORD /d 1 /f
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: -------------------Enable MFU tracking-------------------
:: ----------------------------------------------------------
echo --- Enable MFU tracking
reg del "HKCU\Software\Policies\Microsoft\Windows\EdgeUI" /v "DisableMFUTracking" /t REG_DWORD /d 1 /f
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: -------------------Enable recent apps--------------------
:: ----------------------------------------------------------
echo --- Enable recent apps
reg del "HKCU\Software\Policies\Microsoft\Windows\EdgeUI" /v "DisableRecentApps" /t REG_DWORD /d 1 /f
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: ------------------Turn on backtracking-------------------
:: ----------------------------------------------------------
echo --- Turn on backtracking
reg del "HKCU\Software\Policies\Microsoft\Windows\EdgeUI" /v "TurnOffBackstack" /t REG_DWORD /d 1 /f
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: ------------Enable Search Suggestions in Edge------------
:: ----------------------------------------------------------
echo --- Enable Search Suggestions in Edge
reg del "HKLM\SOFTWARE\Policies\Microsoft\MicrosoftEdge\SearchScopes" /v "ShowSearchSuggestionsGlobal" /t REG_DWORD /d 0 /f
:: ----------------------------------------------------------


:: Enable Edge usage and crash-related data reporting (shows "Your browser is managed")
echo --- Enable Edge usage and crash-related data reporting (shows "Your browser is managed")
reg del "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "MetricsReportingEnabled" /t REG_DWORD /d 0 /f
:: ----------------------------------------------------------


:: Enable sending site information (shows "Your browser is managed")
echo --- Enable sending site information (shows "Your browser is managed")
reg del "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "SendSiteInfoToImproveServices" /t REG_DWORD /d 0 /f
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: Enable Automatic Installation of Microsoft Edge Chromium-
:: ----------------------------------------------------------
echo --- Enable Automatic Installation of Microsoft Edge Chromium
reg del "HKLM\SOFTWARE\Microsoft\EdgeUpdate" /v "DoNotUpdateToEdgeWithChromium" /t REG_DWORD /d 1 /f
:: ----------------------------------------------------------


pause
exit /b 0
