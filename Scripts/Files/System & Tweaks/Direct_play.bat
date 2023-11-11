@echo off
color c
dism /Online /enable-feature /FeatureName:”DirectPlay” /NoRestart
dism /online /Enable-Feature /FeatureName:DirectPlay /All