@echo off
set CMD_7ZIP="C:\Program Files\7-Zip\7z.exe"
set PROJECT_NAME=WorldClass

IF EXIST ".\..\%PROJECT_NAME%.ev3" (
  copy /Y ".\..\%PROJECT_NAME%.ev3" ".\..\%PROJECT_NAME%.ev3.bak" >nul
  echo ERROR! ".\..\%PROJECT_NAME%.ev3" is already exist, delete or move it to other location before you proceed.
  goto exit
)

%CMD_7ZIP% a -tzip ".\..\%PROJECT_NAME%.ev3" ".\xml\%PROJECT_NAME%\*.*"

:exit
