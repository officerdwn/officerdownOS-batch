@echo off
goto cred

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
cls
echo                                       officerdownOS
echo ----------------------------------------------------------------------------------------------
echo.
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
if %desktopOptions% ==  "office goto officeto
if %desktopOptions% == about  goto about       
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
echo  officerdownOS v0.0.3
echo  Compiled 11/05/2023
pause
goto desktop
