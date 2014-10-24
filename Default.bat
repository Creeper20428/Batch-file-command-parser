@echo off
If "%1" == "" GOTO userInput
If not exist "%1" GOTO handleCommand
If exist "%1" GOTO file 

exit

:userInput

echo Command here:
SET /P CMD=Here:

:: exit

:handleCommand

IF "%CMD%" == "" SET CMD="%1"

IF "%CMD%" == "foo" echo Bar

exit /B

:file

type "%1"
