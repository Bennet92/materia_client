@echo off
setlocal EnableDelayedExpansion

set LOGINSERVER=testlogin.materia-rpg.games
set GAMESERVER=testgame.materia-rpg.games
set APP=otclient_dx.exe

start  cloudflared-windows-amd64.exe access tcp --hostname %LOGINSERVER% --url tcp://localhost:7171 --log-level=debug
start  cloudflared-windows-amd64.exe access tcp --hostname %GAMESERVER% --url tcp://localhost:7172 --log-level=debug
start "" "%APP%"