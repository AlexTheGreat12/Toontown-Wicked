@echo off
cd ..

rem Read the contents of PPYTHON_PATH into %PPYTHON_PATH%:
set /P PPYTHON_PATH=<PPYTHON_PATH

rem Get the user input:
set /P ttwUsername="Username: "
set /P ttwPassword="Password: "
set /P TTW_GAMESERVER="Gameserver (DEFAULT: localhost): " || ^
set TTW_GAMESERVER=localhost

echo ===============================
echo Starting Toontown Wicked...
echo ppython: %PPYTHON_PATH%
echo Username: %ttwUsername%
echo Gameserver: %TTW_GAMESERVER%
echo ===============================

%PPYTHON_PATH% -m toontown.toonbase.ToontownStart
pause
