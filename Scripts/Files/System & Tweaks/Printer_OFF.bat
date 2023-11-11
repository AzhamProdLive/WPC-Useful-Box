@echo off
@echo                 By EPICzone
timeout /t 5

SC CONFIG Spooler Start= Disable
net stop Spooler