@echo off
color 1f
title User Info
::###########################

:one
cls
set /p fname=What is your first name? 
set /p year=What year were you born? 
echo.
echo.
if exist %fname%%year%.sav (
for /f %%a in (%fname%%year%.sav) do set %%a
goto display
) else (
(echo ) >> %fname%%year%.sav
goto enterinfo
)

::###########################


:display
cls
echo Your first name: %fname%
echo Year you were born %year%
echo Your favorite color: %favcolor%
echo Your favorite season: %favseason%
echo Your age: %age%
echo Your eyecolor: %eyecolor%
echo Your favorite snack: %favsnack%
pause >nul


::###########################

:enterinfo
cls
set /p favcolor=What is your favorite color?
set /p favseason=What is your favorite season?
set /p age=How old are you?
set /p eyecolor=What is your eye color?
set /p favsnack=What is your favorite snack?
(echo favcolor=%favcolor%) >> %fname%%year%.sav
(echo favseason=%favseason%) >> %fname%%year%.save
(echo age=%age%) >> %fname%%year%.save
(echo eyecolor=%eyecolor%) >> %fname%%year%.save
(echo favsnack=%favsnack%) >> %fname%%year%.save
echo.
echo.
echo Your information has been saved!
pause >nul
exit




