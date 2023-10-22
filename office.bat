@echo off

:main
cls
echo                            Levathon Office Suite
echo ------------------------------------------------------------------------------
echo 1. Calculator
echo 2. Notepad
echo 3. Exit to Desktop
echo Levathon office v1.0
set /p officeops=
if %officeops% == 1 goto calc
if %officeops% == 2 goto notepad
if %officeops% == 3 desktop.bat

:calc
cls
@echo off
title calculator
:main
echo.
echo ---------------------------
echo.
echo WELCOME user to
echo.
echo Cal'C Ver 0.2
echo Modified for officerdownOS
echo.
echo ---------------------------
echo.
echo /////////////////////////////////////
echo Your previous Calulated number was %sum%
echo ////////////////////////////////////
echo.
echo Enter the specified alphabet to continue..
echo.
echo a)Addition
echo.
echo b)Subtraction
echo.
echo c)Divison
echo.
echo d)Multipication
echo.
echo e)Square, Cube or any power (by Prof.Pickle)
echo.
set /p do=Value.
if %do%== a goto add
if %do%== A goto add
if %do%== b goto sub
if %do%== B goto sub
if %do%== c goto div
if %do%== C goto div
if %do%== d goto mul
if %do%== D goto mul
if %do%== e goto power1
if %do%== E goto power1
echo.
cls
echo Invalid value = %do%
echo.
pause
cls
goto main

:add
cls
echo ADDITON
echo.
set /p no1="num1. "
echo       +
set /p no2="num2. "
set /a sum=no1+no2
echo ------------
echo %sum%
echo.
pause
cls
goto main


:sub
cls
echo SUBTACTION
echo.
set /p no1="num1. "
echo       -
set /p no2="num2. "
set /a sum=no1-no2
echo ------------
echo %sum%
echo.
pause
cls
goto main


:div
cls
echo DIVISON
echo.
set /p no1="num1. "
echo       /
set /p no2="num2. "
set /a sum=no1/no2
echo ------------
echo %sum%
echo.
pause
cls
goto main


:mul
cls
echo MULTIPLICATION
echo.
set /p no1="num1. "
echo       *
set /p no2="num2. "
set /a sum=no1*no2
echo ------------
echo %sum%
echo.
pause
cls
goto main

:power1
cls
echo Square, Cube or any power (by Prof.Pickle)
echo.
echo Select the number
set /p num=
cls
echo Select the power
set /p pow=
set /a pow=%pow%+1
set ans=%num%
cls
:power2
set /a pow=%pow%-1
if %pow% LSS 1 goto next
set /a ans=%ans%*%num%
goto power2
:next
echo Your answer is %ans%
echo.


:notepad
cls
echo                                  Levathon Suite Notepad
echo -----------------------------------------------------------------------------------
echo 1. Load Note
echo 2. Write Note
echo 3. Exit to Main view of office
set /p noteoptions=
if %noteoptions% == 1 goto Load
if %noteoptions% == 2 goto Write
if %noteoptions% == 3 goto main

:load
cls 
echo                                  Levathon Suite Notepad
echo -----------------------------------------------------------------------------------
echo What was the name of your Note? 
set /p notename=
if not exist %notename%.levnote goto error1
if exist %notename%.levnote goto continue

:error1
cls
echo                                  Levathon Suite Notepad
echo -----------------------------------------------------------------------------------
echo ERROR! NOTE NOT FOUND! PRESS ANY KEY TO GO BACK TO MENU!
pause
goto main

:continue
cls
echo                                  Levathon Suite Notepad
echo -----------------------------------------------------------------------------------
set /p note=<%notename%.levnote
echo %note%
echo Note Displayed! Press ANY KEY to go back to home page!
pause
goto notepad

:write 
cls
echo                                  Levathon Suite Notepad
echo -----------------------------------------------------------------------------------
echo Write Document here!
set /p note=
echo Do you want to save? Y/N
set /p ans=
if %ans% == y goto save 
if %ans% == n goto write

:save
cls
echo                                  Levathon Suite Notepad
echo -----------------------------------------------------------------------------------
echo What do you want the note name to be?
set /p ans1=
(

echo %note%

)>%ans1%.levnote

echo Saved! Going to main!
pause
goto notepad


