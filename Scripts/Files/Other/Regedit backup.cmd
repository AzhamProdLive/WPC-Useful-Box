@echo off
color c
cls
cd desktop
reg EXPORT "HKEY_CLASSES_ROOT" Root.reg
color b
reg EXPORT "HKEY_CURRENT_USER" User.reg
color 8
reg EXPORT "HKEY_LOCAL_MACHINE" Machine.reg
color d
reg EXPORT "HKEY_USERS" Users.reg
color e
reg EXPORT "HKEY_CURRENT_CONFIG" Config.reg 


@echo                    Made By epicZone <3
pause /t 3
