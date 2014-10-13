@echo off
set CMD_7ZIP=C:\Program Files\7-Zip\7z.exe
set PROJECT_NAME=WorldClass

IF NOT EXIST "%CMD_7ZIP%" (
  echo ERROR! 7-Zip application was not found. Please, install it to "C:\Program Files\7-Zip" folder
  goto exit
)

IF NOT EXIST ".\..\%PROJECT_NAME%.ev3" (
  echo ERROR! Project file ".\..\%PROJECT_NAME%.ev3" was not found
  goto exit
)

REM extract XML files
del /F /S /Q ".\xml\%PROJECT_NAME%\*.*"
"%CMD_7ZIP%" e -tzip ".\..\%PROJECT_NAME%.ev3"  -o".\xml\%PROJECT_NAME%"

REM copy/replace MINDSTORM project
copy /Y ".\..\%PROJECT_NAME%.ev3" ".\projects\%PROJECT_NAME%.ev3"

:exit
