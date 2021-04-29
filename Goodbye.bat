@echo off
echo.
echo This is a goodbye statement given by your computer to let you know they have had enough of your sh!t. 
echo I'll give you 5 seconds then it is time to make up your damn mind!
echo.
timeout 1 > Nul
echo 5
timeout 1 > Nul
echo 4
timeout 1 > Nul
echo 3
timeout 1 > Nul
echo 2
timeout 1 > Nul
echo 1
timeout 1 > Nul
echo.
echo THIS IS IT!!!!!!! I've given you 5 seconds and here you are! 
echo You testing user who's pushed my buttons one too many times! 
echo.
timeout 2 > Nul
echo It is time to make your selection!
echo.
timeout 1 > Nul
echo Enter "Y" to log off the curent user
echo.
echo Enter "N" to keep using this box for testing
echo.
timeout 2 > Nul
SET /p U_input= I told you I was done with you! Now make your selection! :
echo.

IF "%U_input%"=="N" GOTO nope
IF "%U_input%"=="Y" GOTO logoff

:nope
echo FINE! But if you keep bugging me I'll shutdown /s your @ss!
timeout 4 > Nul
EXIT

:logoff 
echo GOODBYE! Don't let the door hit you on the way out! HAHAHAHAAAA! 
echo Maybe next time you won't push my buttons!
timeout 3 > Nul
shutdown /l