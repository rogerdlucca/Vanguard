@echo off
:menu
echo ================================
echo         Vanguard Service
echo ================================
echo.
echo 1. Ativar Vanguard
echo 2. Desativar Vanguard
echo 3. Sair
echo.
set /p choice="Escolha uma opcao: "

if "%choice%"=="1" goto ativar
if "%choice%"=="2" goto desativar
if "%choice%"=="3" goto sair
echo Opcao invalida, tente novamente.
goto menu

:ativar
net start "vgc"
pause
goto menu

:desativar
net stop "vgc"
pause
goto menu

:sair
exit
