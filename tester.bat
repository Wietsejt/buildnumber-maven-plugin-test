@echo off
set loop=0
:loop
echo %loop%
call mvn buildnumber:create
set /a loop=%loop%+1 
if "%loop%"=="1000" goto next
goto loop

:next
echo Done