@echo off &setlocal
mode con: cols=180 lines=70
color 1f
title DATABASE PROGRAM
=====

:prescreen
cls
echo Please Make a Selection Below :
echo.
echo.
echo 1) Login
echo 2) Create Account
echo.
echo.
set /p pre1=Choice: 
echo.
echo.
if not defined pre1 (
echo You Must Make a Selection!
pause >nul
goto prescreen
)
if %pre1%==1 goto login
if %pre1%==2 goto create
echo Invalid Choice, Please Try Again!
pause >nul
goto prescreen
=====

:create
cls
set user=
set pass=
echo Please Enter Desired Account Details Below :
echo.
echo.
set /p user=Desired Username: 
:pass1
echo.
echo.
set /p pass=Desired Password: 
echo.
echo.
if not defined user (
echo You Must Enter a Username!
pause >nul
goto create
)
if not defined pass (
echo You Must Enter a Password!
pause >nul
goto pass1
)
if %user%==back (
if %pass%==back (
goto prescreen
))
if not exist logins (
md logins
cd logins
) else (
cd logins
)
if exist %user% (
echo The Username You Provided Already Exists! Please Choose Another!
pause >nul
goto create
) else (
md %user%
cd %user%
)
echo user=%user%      --Edited By %user% on %date% %time%>> %user%.sav
echo pass=%pass%      --Edited By %user% on %date% %time%>> %user%.sav
echo Your Account Was Successfully Created!
cd..
cd..
pause >nul
goto prescreen
=====

:login
cls
echo Please Enter Your Login Information Below :
echo.
echo.
set /p user1=Username: 
:pass2
echo.
echo.
set /p pass1=Password: 
echo.
echo.
if not defined user1 (
echo You Must Enter a Username!
pause >nul
goto login
)
if not defined pass1 (
echo You Must Enter a Password!
pause >nul
goto pass2
)
if %user1%==back (
if %pass1%==back (
goto prescreen
))
if exist logins (
cd logins
) else (
echo Fatal Error, You Must First Create an Account!
pause >nul
goto create
)
if exist %user1% (
cd %user1%
for /f %%a in (%user1%.sav) do set %%a
) else (
echo User Does Not Exist! Please Create An Account!
pause >nul
goto create
)
echo.
echo.
if %user1%==%user% (
echo Username Verified!
) else (
echo Username Unable To Be Verified!
pause >nul
goto prescreen
)
if %pass1%==%pass% (
echo Password Verified!
) else (
echo Password Is Incorrect!
pause >nul
cd..
cd..
goto prescreen
)
echo You Are Now Logged In As %user1%!
pause >nul
cd..
cd..
goto main
=====

:main
cls
set cusfname=
set cusfname1=
set cuslname=
set cuslname1=
set add1=
set add2=
set add3=
set add4=
set add5=
set add6=
set tel=
set email=
echo You Are Now Logged In As --%user1%--
echo.
echo.
echo 1) Add Customer
echo 2) Remove Customer
echo 3) Edit Customer
echo 4) View Customer
echo 5) Logout
echo.
echo.
set ch1=
set /p ch1=Choice: 
echo.
echo.
if not defined ch1 (
echo You Must Enter Your Choice!
pause >nul
goto main
)
if %ch1%==1 goto add
if %ch1%==2 goto remove
if %ch1%==3 goto edit
if %ch1%==4 goto view
if %ch1%==5 goto logout
echo Incorrect Choice, Please Try Again!
pause >nul
goto main
=====

:add
cls
echo You Are Now Logged In As --%user1%--
echo.
echo.
echo Please Enter The Required Information: 
echo.
echo.
:add1
if defined cusfname (
goto add2
)
set /p cusfname=Customer First Name: 
echo.
if not defined cuslname (
goto add2
)
goto add3
:add2
if defined cuslname (
goto add3
)
set /p cuslname=Customer Last Name: 
echo.
if not defined add1 (
goto add3
)
goto add4
:add3
if defined add1 (
goto add4
)
set /p add1=Address Number: 
echo.
if not defined add2 (
goto add4
)
goto add5
:add4
if defined add2 (
goto add5
)
set /p add2=Address (Street Name): 
echo.
if not defined add3 (
goto add5
)
goto add6
:add5
if defined add3 (
goto add6
)
set /p add3=Address (St blvd etc): 
echo.
if not defined add4 (
goto add6
)
goto add7
:add6
if defined add4 (
goto add7
)
set /p add4=Address (City): 
echo.
if not defined add5 (
goto add7
)
goto add8
:add7
if defined add5 (
goto add8
)
set /p add5=Address (State): 
echo.
if not defined add6 (
goto add8
)
goto add9
:add8
if defined add6 (
goto add9
)
set /p add6=Address (Zip): 
echo.
if not defined tel (
goto add9
)
goto add10
:add9
if defined tel (
goto add10
)
set /p tel=Customer Telephone: 
echo.
if not defined email (
goto add10
)
:add10
if defined email (
goto done
)
set /p email=Customer Email: 
echo.
echo.
echo.
:done
if not defined cusfname (
echo You Must Enter a First Name For The Customer!
pause >nul
goto add
)
if not defined cuslname (
echo You Must Enter a Last Name For The Customer!
pause >nul
goto add
)
if not defined add1 (
echo You Must Enter An Address Number For The Customer!
pause >nul
goto add
)
if not defined add2 (
echo You Must Enter a Street Name For The Customer!
pause >nul
goto add
)
if not defined add3 (
echo You Must Enter Type of Road For The Customer!
pause >nul
goto add
)
if not defined add4 (
echo You Must Enter a City For The Customer!
pause >nul
goto add
)
if not defined add5 (
echo You Must Enter a State For The Customer!
pause >nul
goto add
)
if not defined add6 (
echo You Must Enter a Zip Code For The Customer!
pause >nul
goto add
)
if not defined tel (
echo You Must Enter a Telephone Number For The Customer!
pause >nul
goto add
)
if not defined email (
echo You Must Enter an Email For The Customer!
pause >nul
goto add
)
if exist customers (
cd customers
) else (
md customers
cd customers
)
if exist %cusfname% (
cd %cusfname%
) else (
md %cusfname%
cd %cusfname%
)
if exist %cuslname%.sav (
echo Customer Already Exists!
pause >nul
goto main
)
echo cusfname=%cusfname%     --Edited By %user1% on %date% %time%-- >> %cuslname%.sav
echo cuslname=%cuslname%      --Edited By %user1% on %date% %time%-->> %cuslname%.sav
echo add1=%add1%      --Edited By %user1% on %date% %time%-->> %cuslname%.sav
echo add2=%add2%      --Edited By %user1% on %date% %time%-->> %cuslname%.sav
echo add3=%add3%      --Edited By %user1% on %date% %time%-->> %cuslname%.sav
echo add4=%add4%      --Edited By %user1% on %date% %time%-->> %cuslname%.sav
echo add5=%add5%      --Edited By %user1% on %date% %time%-->> %cuslname%.sav
echo add6=%add6%      --Edited By %user1% on %date% %time%-->> %cuslname%.sav
echo tel=%tel%      --Edited By %user1% on %date% %time%-->> %cuslname%.sav
echo email=%email%      --Edited By %user1% on %date% %time%-->> %cuslname%.sav
if exist %cuslname%.sav (
echo Customer Successfully Added!
pause >nul
cd..
cd..
goto main
) else (
echo Customer Could Not Be Added!
pause >nul
cd..
cd..
goto main
)
=====

:remove
cls
echo You Are Logged In As --%user1%--
echo.
echo.
echo Please Enter The Required Information!
echo.
echo.
if defined cusfname (
goto remove2
)
:remove1
set /p cusfname=Customer First Name: 
echo.
if not defined cuslname (
goto remove2
)
goto done1
:remove2
if defined cuslname (
goto done1
)
set /p cuslname=Customer Last Name: 
echo.
echo.
:done1
if not defined cusfname (
echo You Must Enter a First Name!
pause >nul
goto remove
)
if not defined cuslname (
echo You Must Enter a Last Name!
pause >nul
goto remove
)
if %cusfname%==back (
if %cuslname%==back (
goto main
))
if exist customers (
cd customers
) else (
echo There Are No Customers To Remove!
pause >nul
goto main
)
if exist %cusfname% (
cd %cusfname%
) else (
echo A Customer With That First Name Could Not Be Found!
pause >nul
cd..
goto main
)
if exist %cuslname%.sav (
del %cuslname%.sav
) else (
echo Customer Has Already Been Deleted!
pause >nul
cd..
cd..
goto main
)
if not exist %cuslname%.sav (
echo Customer Successfully Removed!
pause >nul
cd..
cd..
goto main
) else (
echo Customer Could Not Be Removed!
pause >nul
cd..
cd..
goto main
)
=====

:edit
cls
echo You Are Logged In As --%user1%--
echo.
echo.
echo Please Enter The Required Information!
echo.
echo.
if defined cusfname (
goto edit2
)
:edit1
set /p cusfname=Customer First Name: 
echo.
if not defined cuslname (
goto edit2
)
goto done3
:edit2
if defined cuslname (
goto done3
)
set /p cuslname=Customer Last Name: 
echo.
echo.
goto done3
:done3
if not defined cusfname (
echo You Must Enter a Customer First Name!
pause >nul
goto edit
)
if not defined cuslname (
echo You Must Enter a Customer Last Name!
pause >nul
goto edit
)
if %cusfname%==back (
if %cuslname%==back (
goto main
))
if exist customers (
cd customers
) else (
echo There Are No Customers To Edit!
pause >nul
goto main
)
if exist %cusfname% (
cd %cusfname%
) else (
echo No Customer With That First Name Could Be Found!
pause >nul
cd..
goto main
)
if exist %cuslname%.sav (
for /f %%a in (%cuslname%.sav) do set %%a
) else (
echo Customer Does Not Exist!
pause >nul
cd..
cd..
goto main
)
echo Customer Information Successfully Loaded!
pause >nul
goto edit22
:edit22
cls
echo You Are Logged In As --%user1%--
echo.
echo.
echo What Information Would You Like To Change For This Customer?
echo.
echo.
echo 1) First Name : %cusfname%
echo 2) Last Name : %cuslname%
echo 3) Address Number : %add1%
echo 4) Address Street Name : %add2%
echo 5) Address Type : %add3%
echo 6) Address City : %add4%
echo 7) Address State : %add5%
echo 8) Address Zip : %add6%
echo 9) Telephone Number : %tel%
echo 10) Email : %email%
echo.
echo.
set ch2=
set /p ch2=Choice: 
echo.
echo.
if not defined ch2 (
echo You Must Enter a Choice!
pause >nul
goto edit22
)
if %ch2%==back (
cd..
cd..
goto main
)
if %ch2%==1 goto editfname
if %ch2%==2 goto editlname
if %ch2%==3 goto editadd1
if %ch2%==4 goto editadd2
if %ch2%==5 goto editadd3
if %ch2%==6 goto editadd4
if %ch2%==7 goto editadd5
if %ch2%==8 goto editadd6
if %ch2%==9 goto edittel
if %ch2%==10 goto editemail
echo Invalid Choice, Please Try Again!
pause >nul
goto edit22
)
=====

:editfname
cls
echo You Are Logged In As --%user1%--
echo.
echo.
echo Please Enter The Change Information Below:
echo.
echo.
echo Current First Name : %cusfname%
echo.
echo.
echo What Would You Like To Change The Current First Name To?
echo.
echo.
set cusfname1=
set /p cusfname1=New Customer First Name: 
echo.
echo.
if not defined cusfname1 (
echo You Must Enter a New Customer First Name!
pause >nul
goto editfname
)
if %cusfname1%==back (
goto edit22
)
cd..
if exist %cusfname1% (
cd %cusfname1%
) else (
md %cusfname1%
cd %cusfname1%
)
echo cusfname=%cusfname1%      --Edited By %user1% on %date% %time%-->> %cuslname%.sav
echo cuslname=%cuslname% >> %cuslname%.sav
echo add1=%add1% >> %cuslname%.sav
echo add2=%add2% >> %cuslname%.sav
echo add3=%add3% >> %cuslname%.sav
echo add4=%add4% >> %cuslname%.sav
echo add5=%add5% >> %cuslname%.sav
echo add6=%add6% >> %cuslname%.sav
echo tel=%tel% >> %cuslname%.sav
echo email=%email% >> %cuslname%.sav
cd..
cd %cusfname%
del %cuslname%.sav
echo.
echo.
echo Customer First Name Successfully Changed To %cusfname1%!
pause >nul
cd..
cd..
goto main
=====

:editlname
cls
echo You Are Logged In As --%user1%--
echo.
echo.
echo Please Enter The Change Information Below: 
echo.
echo.
echo Current Last Name : %cuslname%
echo.
echo.
echo What Would You Like To Change The Current Last Name To?
echo.
echo.
set cuslname1=
set /p cuslname1=New Customer Last Name: 
echo.
echo.
if not defined cuslname1 (
echo You Must Enter a New Customer Last Name!
pause >nul
goto editlname
)
if %cuslname1%==back (
goto edit22
)
echo cuslname=%cuslname1%      --Edited By %user1% on %date% %time%-->> %cuslname%.sav
ren %cuslname%.sav %cuslname1%.sav
if exist %cuslname1%.sav (
echo Customer Last Name Successfully Changed To %cuslname1%!
pause >nul
cd..
cd..
goto main
) else (
echo Customer Last Name Unable To Be Changed At This TIme!
pause >nul
cd..
cd..
goto main
)
=====

:editadd1
cls
echo You Are Logged In As --%user1%--
echo.
echo.
echo Please Enter The Change Information Below:
echo.
echo.
echo Current Address Number : %add1%
echo.
echo.
echo What Would You Like To Change The Current Address Number To?
echo.
echo.
set add11=
set /p add11=New Customer Address Number: 
echo.
echo.
if not defined add11 (
echo You Must Enter a New Customer Address Number!
pause >nul
goto editadd1
)
if %add11%==back (
goto edit22
)
echo add1=%add11%      --Edited By %user1% on %date% %time%-->> %cuslname%.sav
for /f %%a in (%cuslname%.sav) do set %%a
if %add1%==%add11% (
echo Customer Address Number Successfully Changed!
pause >nul
cd..
cd..
goto main
) else (
echo Customer Address Number Unable To Be Changed!
pause >nul
cd..
cd..
goto main
)
=====

:editadd1
cls
echo You Are Logged In As --%user1%--
echo.
echo.
echo Please Enter The Change Information Below:
echo.
echo.
echo Current Street Name : %add2%
echo.
echo.
echo What Would You Like To Change The Current Street Name To?
echo.
echo.
set add22=
set /p add22=New Customer Street Name: 
echo.
echo.
if not defined add22 (
echo You Must Enter a New Customer Street Name!
pause >nul
goto editadd2
)
if %add22%==back (
goto edit22
)
echo add2=%add22%      --Edited By %user1% on %date% %time%-->> %cuslname%.sav
for /f %%a in (%cuslname%.sav) do set %%a
if %add2%==%add22% (
echo Customer Street Name Successfully Changed!
pause >nul
cd..
cd..
goto main
) else (
echo Customer Street Name Unable To Be Changed!
pause >nul
cd..
cd..
goto main
)
=====

:editadd3
cls
echo You Are Logged In As --%user1%--
echo.
echo.
echo Please Enter The Change Information Below:
echo.
echo.
echo Current Address Type: %add3%
echo.
echo.
echo What Would You Like To Change The Current Address Type To?
echo.
echo.
set add33=
set /p add33=New Customer Address Type: 
echo.
echo.
if not defined add33 (
echo You Must Enter a New Customer Address Type!
pause >nul
goto editadd3
)
if %add33%==back (
goto edit22
)
echo add3=%add33%      --Edited By %user1% on %date% %time%-->> %cuslname%.sav
for /f %%a in (%cuslname%.sav) do set %%a
if %add3%==%add33% (
echo Customer Address Type Successfully Changed!
pause >nul
cd..
cd..
goto main
) else (
echo Customer Address Type Unable To Be Changed!
pause >nul
cd..
cd..
goto main
)
=====

:editadd4
cls
echo You Are Logged In As --%user1%--
echo.
echo.
echo Please Enter The Change Information Below:
echo.
echo.
echo Current City : %add4%
echo.
echo.
echo What Would You Like To Change The Current City To?
echo.
echo.
set add44=
set /p add44=New Customer City: 
echo.
echo.
if not defined add44 (
echo You Must Enter a New Customer City!
pause >nul
goto editadd4
)
if %add44%==back (
goto edit22
)
echo add4=%add44%      --Edited By %user1% on %date% %time%-->> %cuslname%.sav
for /f %%a in (%cuslname%.sav) do set %%a
if %add4%==%add44% (
echo Customer City Successfully Changed!
pause >nul
cd..
cd..
goto main
) else (
echo Customer City Unable To Be Changed!
pause >nul
cd..
cd..
goto main
)
=====

:editadd5
cls
echo You Are Logged In As --%user1%--
echo.
echo.
echo Please Enter The Change Information Below:
echo.
echo.
echo Current State : %add5%
echo.
echo.
echo What Would You Like To Change The Current State To?
echo.
echo.
set add55=
set /p add55=New Customer State: 
echo.
echo.
if not defined add55 (
echo You Must Enter a New Customer State!
pause >nul
goto editadd5
)
if %add55%==back (
goto edit22
)
echo add5=%add55%      --Edited By %user1% on %date% %time%-->> %cuslname%.sav
for /f %%a in (%cuslname%.sav) do set %%a
if %add5%==%add55% (
echo Customer State Successfully Changed!
pause >nul
cd..
cd..
goto main
) else (
echo Customer State Unable To Be Changed!
pause >nul
cd..
cd..
goto main
)
=====

:editadd6
cls
echo You Are Logged In As --%user1%--
echo.
echo.
echo Please Enter The Change Information Below:
echo.
echo.
echo Current Zip Code : %add6%
echo.
echo.
echo What Would You Like To Change The Current Zip Code To?
echo.
echo.
set add66=
set /p add66=New Customer Zip Code: 
echo.
echo.
if not defined add66 (
echo You Must Enter a New Customer Zip Code!
pause >nul
goto editadd6
)
if %add66%==back (
goto edit22
)
echo add6=%add66%       --Edited By %user1% on %date% %time%-->> %cuslname%.sav
for /f %%a in (%cuslname%.sav) do set %%a
if %add6%==%add66% (
echo Customer Zip Code Successfully Changed!
pause >nul
cd..
cd..
goto main
) else (
echo Customer Zip Code Unable To Be Changed!
pause >nul
cd..
cd..
goto main
)
=====

:edittel
cls
echo You Are Logged In As --%user1%--
echo.
echo.
echo Please Enter The Change Information Below:
echo.
echo.
echo Current Telephone Number : %tel%
echo.
echo.
echo What Would You Like To Change The Current Telephone Number To?
echo.
echo.
set tel1=
set /p tel1=New Customer Telephone Number: 
echo.
echo.
if not defined tel1 (
echo You Must Enter a New Customer Telephone Number!
pause >nul
goto edittel
)
if %tel1%==back (
goto edit22
)
echo tel=%tel1%      --Edited By %user1% on %date% %time%-->> %cuslname%.sav
for /f %%a in (%cuslname%.sav) do set %%a
if %tel%==%tel1% (
echo Customer Telephone Number Successfully Changed!
pause >nul
cd..
cd..
goto main
) else (
echo Customer Telephone Number Unable To Be Changed!
pause >nul
cd..
cd..
goto main
)
=====

:editemail
cls
echo You Are Logged In As --%user1%--
echo.
echo.
echo Please Enter The Change Information Below:
echo.
echo.
echo Current Email : %email%
echo.
echo.
echo What Would You Like To Change The Current Email To?
echo.
echo.
set email1=
set /p email1=New Customer Email: 
echo.
echo.
if not defined email1 (
echo You Must Enter a New Customer Email!
pause >nul
goto editemail
)
if %email1%==back (
goto edit22
)
echo email=%email1%      --Edited By %user1% on %date% %time%-->> %cuslname%.sav
for /f %%a in (%cuslname%.sav) do set %%a
if %email%==%email1% (
echo Customer Email Successfully Changed!
pause >nul
cd..
cd..
goto main
) else (
echo Customer Email Unable To Be Changed!
pause >nul
cd..
cd..
goto main
)
=====

:view
cls
echo You Are Logged In As --%user1%--
echo.
echo.
echo Please Enter The Required Information Below:
echo.
echo.
if defined cusfname1 (
goto view2
)
:view1
set /p cusfname1=Customer First Name: 
echo.
if not defined cuslname1 (
goto view2
)
goto done2
:view2
if defined cuslname1 (
goto done2
)
set /p cuslname1=Customer Last Name: 
echo.
echo.
:done2
if not defined cusfname1 (
echo You Must Enter a Customer First Name!
pause >nul
goto view
)
if not defined cuslname1 (
echo You Must Enter a Customer Last Name!
pause >nul
goto view
)
if exist customers (
cd customers
) else (
echo No Customers Exist!
pause >nul
goto main
)
if exist %cusfname1% (
cd %cusfname1%
) else (
echo No Customer With That Name Could Be Found!
pause >nul
cd..
goto main
)
if exist %cuslname1%.sav (
for /f %%a in (%cuslname1%.sav) do set %%a
) else (
echo No Customer With That Name Could Be Found!
pause >nul
cd..
cd..
goto main
)
echo Customer Information Found!
pause >nul
goto view2
:view2
cls
echo You Are Logged In As --%user1%--
echo.
echo.
echo Current Customer Information on File :
echo.
echo.
echo First Name : %cusfname%
echo Last Name : %cuslname%
echo Address Number : %add1%
echo Address Street Name : %add2%
echo Address Type : %add3%
echo Address City : %add4%
echo Address State : %add5%
echo Address Zip : %add6%
echo Telephone Number : %tel%
echo Email : %email%
echo.
echo.
pause >nul
cd..
cd..
goto main
=====

:logout
cls
echo You Are Now Logged Out of The System!
pause >nul
goto prescreen
=====