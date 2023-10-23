@echo off

:setup
cls
echo                                 Account Setup Environment
echo ----------------------------------------------------------------------------------------------
echo Welcome to the officerdownOS Account Setup Environment! (ASE)
echo You will be making your account, as the system was not able to detect one.
echo To continue,
pause
goto start

:start
cls
echo                                 Account Setup Environment
echo ----------------------------------------------------------------------------------------------
echo To continue, enter a username!
set /p username=
(

echo %username%

)>username.user
pause
goto pass

:pass
cls
echo                                 Account Setup Environment
echo ----------------------------------------------------------------------------------------------
echo Now enter a password!
set /p password=
(

echo %password%

)>password.pass
pause
goto end

:end 
cls
echo                                 Account Setup Environment
echo ----------------------------------------------------------------------------------------------
echo Everything has already been saved! Going to desktop!
pause
desktop.bat