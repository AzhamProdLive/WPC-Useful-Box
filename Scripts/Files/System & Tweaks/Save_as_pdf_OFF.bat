@echo off
color a
@echo                                           By EpicZone

net stop spooler
dism /Online /Disable-Feature /FeatureName:"Printing-PrintToPDFServices-Features" /NoRestart
powershell Disable-WindowsOptionalFeature -online -FeatureName Printing-PrintToPDFServices-Features
net start spooler
cls
.@echo
.@echo
.@echo                    
@echo                                            Restart The PC

pause 