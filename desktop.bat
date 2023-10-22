@echo off
goto desktop

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
echo  officerdownOS v0.0.1
echo  Compiled 10/22/2023
pause
goto desktop