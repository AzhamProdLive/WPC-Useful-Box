��
@echo off
cls
color a
net start NcbService
sc config NcbService start= auto
color b
net start ClipSVC
sc config ClipSVC start= auto
color c
net start InstallService
sc config InstallService start= auto
color d
net start LicenseManager
sc config LicenseManager start= auto
color e
net start PushToInstall
sc config PushToInstall start= auto
color f
net start AppXSvc
sc config AppXSvc start= auto
color 5
net start wlidsvc
sc config wlidsvc start= auto
sc config DoSvc start= demand
sc config StorSvc start= demand
sc config UsoSvc start= demand
sc config TokenBroker start= demand
cls 
@echo                                    DONE by epic
pause