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
echo    ---------------                  ---------------                        -----------------   
echo.                                                                                     
echo.                                                                                                              
ECHO       POW!                           PRODUCTIVITY!                                 ?         
echo                POP                                                                      
echo   -----------------                 ----------------                       ------------------ 
echo.                                                                                             
echo        games                         Office Suite                                About      
echo.
set /p desktopOptions=
if %desktopOptions% == "games" goto games        
if %desktopOptions% ==  "office" goto officeto
if %desktopOptions% == "about"  goto about       
echo " This is not recognized. Try again!"  
:officeto
call office.bat
pause
goto desktop

:games
cls
echo "Games is WIP"
pause
goto desktop


:about
cls
echo                                           About
echo ----------------------------------------------------------------------------------------------
echo  officerdownOS v0.0.2
echo  Compiled 10/23/2023
pause
goto desktop
