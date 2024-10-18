@echo off
chcp 65001 >nul
setlocal enabledelayedexpansion

::
:loop
cls
for /L %%A in (1,1,20) do (
    cls
    call :frame %%A
    ping -n 1 -w 2000 127.0.0.1 >nul
)
goto loop

goto :eof

:frame
:: full letters (replace with yours

set "letters1=  █     █░▓█████  ██▓     ▄████▄   ▒█████   ███▄ ▄███▓▓█████"
set "letters2= ▓█░ █ ░█░▓█   ▀ ▓██▒    ▒██▀ ▀█  ▒██▒  ██▒▓██▒▀█▀ ██▒▓█   ▀"
set "letters3= ▒█░ █ ░█ ▒███   ▒██░    ▒▓█    ▄ ▒██░  ██▒▓██    ▓██░▒███"
set "letters4= ░█░ █ ░█ ▒▓█  ▄ ▒██░    ▒▓▓▄ ▄██▒▒██   ██░▒██    ▒██ ▒▓█  ▄"
set "letters5= ░░██▒██▓ ░▒████▒░██████▒▒ ▓███▀ ░░ ████▓▒░▒██▒   ░██▒░▒████▒"
set "letters6= ░ ▓░▒ ▒  ░░ ▒░ ░░ ▒░▓  ░░ ░▒ ▒  ░░ ▒░▒░▒░ ░ ▒░   ░  ░░░ ▒░ ░"
set "letters7=   ▒ ░ ░   ░ ░  ░░ ░ ▒  ░  ░  ▒     ░ ▒ ▒░ ░  ░      ░ ░ ░  ░"
set "letters8=   ░   ░     ░     ░ ░   ░        ░ ░ ░ ▒  ░      ░      ░"
set "letters9=     ░       ░  ░    ░  ░░ ░          ░ ░         ░      ░  ░"
set "letters10=                         ░"

:: text end

:: play dripping effect by changing characters in the lines 5, 6, 7, 8, 9
if %1 lss 5 (
    set "letters5=%letters5:▒= %"
) else if %1 lss 10 (
    set "letters6=%letters6:░= %"
) else if %1 lss 15 (
    set "letters7=%letters7:▒= %"
) else if %1 lss 20 (
    set "letters8=%letters8:░= %"
) else if %1 lss 25 (
    set "letters9=%letters9:▓= %"
)

:: display the letters with the "dripping" effect
echo.
echo !letters1!
echo !letters2!
echo !letters3!
echo !letters4!
if defined letters5 echo !letters5!
if defined letters6 echo !letters6!
if defined letters7 echo !letters7!
if defined letters8 echo !letters8!
if defined letters9 echo !letters9!
echo !letters10!
goto :eof
