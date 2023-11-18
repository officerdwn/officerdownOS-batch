@echo off
if exist 1.log goto desktop
if not exist 1.log goto cred


:cred
cls
set /p username=<username.user
set /p password=<password.pass
echo                                          login
echo ----------------------------------------------------------------------------------------------
echo Welcome to officerdownOS, %username%! 
echo Please enter the password that you set up when you installed the Operating System!
set /p login=
if %login% == %password% goto desktop
echo That is incorrect! Try again!
pause
goto cred

:desktop 
(

echo hi

)>1.log
cls
echo                                       officerdownOS
echo ----------------------------------------------------------------------------------------------
echo                                   TYPE LOGOUT TO LOGOUT
echo    ---------------                  ---------------                  ----------------                   
echo.                                                                                     
echo.                                                                                                              
ECHO     PRODUCTIVITY!                           ?                             files
echo.                                                                                     
echo   -----------------                 ----------------                 -----------------                  
echo.                                                                                             
echo      Office Suite                        About                            files
echo.
set /p desktopOptions=
if %desktopOptions% == files goto files        
if %desktopOptions% ==  office goto officeto
if %desktopOptions% == about  goto about  
if %desktopOptions% == logout goto logout     
echo " This is not recognized. Try again!"  
pause
goto desktop

:officeto
call office.bat

:files
call files.bat

:about
cls
echo                                           About
echo ----------------------------------------------------------------------------------------------
echo  officerdownOS Normal v1.1
echo  Compiled 11/18/2023
pause
goto desktop

:logout
echo Logging out!
del 1.log
echo Do you want to shut down the pc? (Y/N)
set /p yorn=
if %yorn% == y goto y
if %yorn% == n goto n

:n 
goto cred

:y 
shutdown -s