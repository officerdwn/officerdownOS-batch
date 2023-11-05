@echo off 
cls

:files
cls
echo                                        File Manager
echo ----------------------------------------------------------------------------------------------
echo 1. Copy contents from USB drive
echo 2. Directory
echo 3. goto desktop
set /p enter=
if %enter% == 1 goto copy
if %enter% == 2 goto dir
if %enter% == 3 goto back
pause
goto files

:back 
call desktop.bat


:copy
cls
echo                                        File Manager
echo ----------------------------------------------------------------------------------------------
echo What is the drive letter of your drive? (e.g., D:\)
set /p usb=

:: Validate the user input here, check for the presence of : and \ in the input
:: This validation can help ensure the input is in the expected format.

echo Dirring %usb%!
dir "%usb%:\"
echo Is this correct? %usb% (Y/N)
set /p ans=
if /i "%ans%" == "y" goto continue
if /i "%ans%" == "n" goto copy

:continue
cls
echo                                        File Manager
echo ----------------------------------------------------------------------------------------------
echo Copying from %usb%\ to %~dp0\Storage\
xcopy "%usb%:\" "%~dp0\Storage" /s /e /h /i /c /y /A-:SH
echo Copied! Returning to home!
pause
goto files



:dir
cls
echo                                        File Manager
echo ----------------------------------------------------------------------------------------------
echo Dirring!
dir Storage
echo Do you want to run something? (Y/N)
set /p ans2=
if %ans2% == y goto run
if %ans2% == n goto nah

:run
cd Storage
cls
echo                                        File Manager
echo ----------------------------------------------------------------------------------------------
echo What do you want to run? (name of batch file)
echo WARNING! NEEDS a call desktop.bat IN IT OR ELSE YOU CANT GO BACK HERE!
set /p file=
call %file%.bat

:nah
goto files
