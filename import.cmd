@echo on
set CMD_7ZIP="C:\Program Files\7-Zip\7z.exe"
set PROJECT_NAME=WorldClass


REM extract XML files
del /F /S /Q ".\xml\%PROJECT_NAME%\*.*"
%CMD_7ZIP% e -tzip ".\..\%PROJECT_NAME%.ev3"  -o".\xml\%PROJECT_NAME%"

REM copy/replace MINDSTORM project
copy /Y ".\..\%PROJECT_NAME%.ev3" ".\projects\%PROJECT_NAME%.ev3"