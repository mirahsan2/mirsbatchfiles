@echo off
title Our First Batch Game
color 1f
::#########################

:one
cls
echo What is 2 plus 2?
echo.
echo.
echo 1) 7
echo 2) 4
echo 3) 12
echo 4) 2
echo.
echo.
set /p ch1=Choice:
echo.
echo.
if not defined ch1 (
goto one
)
if %ch1%==1 goto no
if %ch1%==2 goto yes
if %ch1%==3 goto no
if %ch1%==4 goto no
echo Invalid Choice, Please Try Again!
pause >nul
goto one


::######################################

:no
cls
echo Sorry, That Answer is Incorrect
echo.
echo.
echo The correct answer was choice 2, which is 4
echo.
echo.
pause >nul
goto two


::####################################

:yes
cls
echo You are correct! Good job!
pause >nul
goto two

::#######################################

:two
cls
echo What is 100 divded by 2?
echo.
echo.
echo 1) 25
echo 2) 15
echo 3) 50
echo 4) 75
echo.
echo.
set /p ch2=Choice:
echo.
echo.
if not defined ch2 (
goto two
)
if %ch2%==1 goto no2
if %ch2%==2 goto no 2
if %ch2%==3 goto yes2
if %ch2%==4 got no2
echo Invalid Choice, Please Try Again!
pause >nul
goto two
::############################

:no2
cls
echo Sorry, That Answer is Incorrect
echo.
echo.
echo The correct answer was choice 3, which is 50
echo.
echo.
pause >nul
goto two
::#################################

:yes2
cls
echo You are correct! Good job!
pause >nul
goto two

:load
cls
for /f %%a in (!fname!!lname!.save)do set %%a
goto main

:save
cls
(echo corn=!)>> !fname!!lname!.sav











