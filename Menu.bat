@echo off

:: USTAWIANIE USTAWIEŃ

chcp 65001 >null

:: WERSJA 1

set Version=0.0.1

:: WEREFIKACJA WERSI (WERSJA 2)

@echo off
setlocal enabledelayedexpansion

:: Lokalna wersja
set LOCAL_VERSION=0.0.2

:: Pobranie najnowszej wersji z GitHub
for /f "delims=" %%i in ('powershell -Command "(Invoke-WebRequest -Uri 'https://api.github.com/repos/USER/REPO/releases/latest' -UseBasicParsing | ConvertFrom-Json).tag_name"') do set REMOTE_VERSION=%%i

:: Usunięcie prefiksu 'v' jeśli istnieje
set REMOTE_VERSION=%REMOTE_VERSION:v=%

echo Lokalna wersja: %LOCAL_VERSION%
echo Najnowsza wersja: %REMOTE_VERSION%

:: Rozdzielenie wersji na części
for /f "tokens=1-3 delims=." %%a in ("%LOCAL_VERSION%") do (
    set L1=%%a
    set L2=%%b
    set L3=%%c
)

for /f "tokens=1-3 delims=." %%a in ("%REMOTE_VERSION%") do (
    set R1=%%a
    set R2=%%b
    set R3=%%c
)

:: Porównanie wersji
if %L1% LSS %R1% (
    echo Jest nowa wersja!
    goto koniec
) else if %L1% GTR %R1% (
    echo Masz najnowsza wersje
    goto koniec
)

if %L2% LSS %R2% (
    echo Jest nowa wersja!
    goto koniec
) else if %L2% GTR %R2% (
    echo Masz najnowsza wersje
    goto koniec
)

if %L3% LSS %R3% (
    echo Jest nowa wersja!
) else (
    echo Masz najnowsza wersje
)

:koniec


:: LOADING 1

echo ?

timeout /t 5 /nobreak >null


echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
title Grechu Install
echo %Version%

:: MENU

timeout /t 3 /nobreak >null
cls

echo.                                                                                                                              
echo	 [96m▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄    ▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄ ▄▄▄   ▄▄▄ ▄▄▄  ▄▄▄     ▄▄▄▄▄ ▄▄▄    ▄▄▄  ▄▄▄▄▄▄▄ ▄▄▄▄▄▄▄▄▄   ▄▄▄▄   ▄▄▄      ▄▄▄        
echo	[96m███▀▀▀▀▀  ███▀▀███▄ ███▀▀▀▀▀ ███▀▀▀▀▀ ███   ███ ███  ███      ███  ████▄  ███ █████▀▀▀ ▀▀▀███▀▀▀ ▄██▀▀██▄ ███      ███        
echo	[96m███       ███▄▄███▀ ███▄▄    ███      █████████ ███  ███      ███  ███▀██▄███  ▀████▄     ███    ███  ███ ███      ███        
echo	[96m███  ███▀ ███▀▀██▄  ███      ███      ███▀▀▀███ ███▄▄███      ███  ███  ▀████    ▀████    ███    ███▀▀███ ███      ███        
echo	[96m▀██████▀  ███  ▀███ ▀███████ ▀███████ ███   ███ ▀██████▀     ▄███▄ ███    ███ ███████▀    ███    ███  ███ ████████ ████████   
echo.                                                                                                                              
echo.
echo.                                                                                                                             
echo.                                                                                                                              
echo.
echo. 
echo.                                                                                                                              
echo.
echo. 
echo.                                                                                                                              
echo.
echo. 
echo    1. Odinstall Przeglądarki
echo    2. Install Przeglądarki



pause