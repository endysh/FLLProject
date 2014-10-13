@echo off
set CMD_7ZIP="C:\Program Files\7-Zip\7z.exe"
set PROJECT_NAME=WorldClass

move /Y ".\..\%PROJECT_NAME%.ev3" ".\..\%PROJECT_NAME%.ev3.bak"
%CMD_7ZIP% a -tzip ".\..\%PROJECT_NAME%.ev3" ".\xml\%PROJECT_NAME%\*.*"