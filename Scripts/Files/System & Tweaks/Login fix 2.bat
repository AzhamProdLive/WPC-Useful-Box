@echo off
color b
sc config wlidsvc start= manual
sc config VaultSvc start= manual
sc config iphlpsvc start= manual
sc config IpxlatCfgSvc start= manual
sc config SharedAccess start= manual
sc config IKEEXT start= manual
sc config TokenBroker start= manual
sc config AppReadiness start= manual
color a
net start AppReadiness
net start TokenBroker
net start IKEEXT
net start SharedAccess
net start IpxlatCfgSvc
net start iphlpsvc
net start VaultSvc
net start wlidsvc

pause
