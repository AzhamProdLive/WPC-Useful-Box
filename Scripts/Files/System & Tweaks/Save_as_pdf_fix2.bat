@echo off
color a
@echo                                           By EpicZone

net stop spooler
dism /Online /Enable-Feature /FeatureName:"Printing-PrintToPDFServices-Features" /NoRestart
powershell Enable-WindowsOptionalFeature -online -FeatureName Printing-PrintToPDFServices-Features
net start spooler
cls
.@echo
.@echo
.@echo                    
@echo                                            Restart The PC

pause 