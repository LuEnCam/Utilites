@echo off
setlocal enableDelayedExpansion
echo.
echo ****************************************
echo *****ALPHABETIC DIRECTORY GENERATOR*****
echo ****************************************
echo.

set /p filepath= Please set the filepath [empty = current path] : 

if "%filepath%"=="" (
	set filepath=%CD%\
) else (
	echo %filepath%
)
echo.
set /p answer= Do you want to generate the directories in %filepath% ? [Y]/[N] : 

if NOT "%answer%"=="Y" (
	GOTO :END
)

set arrayAlpha[0]="1-9"
set arrayAlpha[1]="A"
set arrayAlpha[2]="B"
set arrayAlpha[3]="C"
set arrayAlpha[4]="D"
set arrayAlpha[5]="E"
set arrayAlpha[6]="F"
set arrayAlpha[7]="G"
set arrayAlpha[8]="H"
set arrayAlpha[9]="I"
set arrayAlpha[10]="J"
set arrayAlpha[11]="K"
set arrayAlpha[12]="L"
set arrayAlpha[13]="M"
set arrayAlpha[14]="N"
set arrayAlpha[15]="O"
set arrayAlpha[16]="P"
set arrayAlpha[17]="Q"
set arrayAlpha[18]="R"
set arrayAlpha[19]="S"
set arrayAlpha[20]="T"
set arrayAlpha[21]="U"
set arrayAlpha[22]="V"
set arrayAlpha[23]="W"
set arrayAlpha[24]="X"
set arrayAlpha[25]="Y"
set arrayAlpha[26]="Z"

set "x=0"

:ALPHABETICLOOP
if defined arrayAlpha[%x%] (
	set letter=!arrayAlpha[%x%]!
	echo %filepath%%letter%
	md %filepath%%letter%
	set /a "x+=1"
	GOTO :ALPHABETICLOOP
)

:END
pause