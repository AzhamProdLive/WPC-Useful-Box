@echo off
color c
dism /Online /disable-feature /FeatureName:”DirectPlay” /NoRestart
dism /online /Disable-Feature /FeatureName:DirectPlay /All