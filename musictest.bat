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
echo 3) Song To Make you Feel Better
echo 4) Gimme Gimme Powa!
echo 5) Tally Ho Mates!
echo 6) Clean it up!
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
if %main1%==3 goto song
if %main1%==4 goto chimichanga matrix
if %main1%==5 goto grapevine project set engage
if %main1%==6 goto cleanup
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
echo 
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

:song
echo Please select a song to play
echo.
echo.
echo 1) Bleach
echo 2) Naruto
echo.
echo.
set /p ch1=Choice:
if not defined ch1 (
echo you must make a selection!
pause >nul
goto main
)
if %ch1%==1 (
goto 1
)
if %ch1%==2 (
goto 2
)
pause >nul
goto song
=====

:1
cls
echo.
start C:\Users\Adil\Music\A\Bleach\"Battle Ignition.mp3"
goto main
=====

:2
cls
start C:\Users\Adil\Music\A\Naruto\"Wind.mp3"
goto main
=====

:chimichanga
cls
echo.
echo You have entered the chimichange matrix, enjoy the duplex
pause >nul
goto main
=====


:grapevine
cls
echo.
echo By age 50 I'm expectinging a dozen size conglomerate, mmk?
pause >nul
goto main
=====

:cleanup
cls
echo.
echo List out files to clean
dir C:\windows\temp /p /b
pause >nul
goto main
=====
