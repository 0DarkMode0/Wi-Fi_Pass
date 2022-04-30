@echo off
title -  Wifi Pass
color 0f
mode 90,25
cls

:winicio
cls
echo.
echo Para pegar a senha do wifi precisa estar logado nele.
echo.
echo Esqueceu o nome do Wifi? Digite "profiles"
echo.
echo.
echo Qual o nome do Wifi?
echo.
set/p wifi="> "
if %wifi% equ profiles goto profiles


cls
netsh wlan show profile name=%wifi% key=clear
pause>nul
goto winicio

:profiles
cls
netsh wlan show profile
echo Press ENTER
pause>nul
goto winicio