@echo off
cls
title DB Test
echo.
echo.
=====

:main
cls
echo.
echo.
echo How are you doing? Good or Bad?:
echo.
echo.
echo 1) Good
echo 2) Bad
echo.
echo.
set /p main1=Choice:
echo.
echo.
if not defined main1 (
echo You have to pick something
pause >nul
goto main
)
if %main1%==back (
go to main
)
if %main1%==1 goto good
if %main1%==2 goto bad
if %main1%==nul
echo Pin pon, that is wrong, try again! You have to pick a choice!
pause >nul
goto main
=====

:good
cls
echo.
echo.
echo That's great! On to good things then!
echo.
echo.
pause >nul
goto main
=====

:bad
cls
echo.
echo.
echo That sucks! Try to turn things around!
echo.
echo.
pause >nul
goto main
=====

