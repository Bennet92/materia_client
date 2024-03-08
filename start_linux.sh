#/bin/bash

export LOGINSERVER=login.materia-rpg.games
export GAMESERVER=game.materia-rpg.games
export APP=otclient_linux

./cloudflared-linux-amd64  access tcp --hostname $LOGINSERVER --url tcp://localhost:7171 --log-level=debug &
./cloudflared-linux-amd64  access tcp --hostname $GAMESERVER --url tcp://localhost:7172 --log-level=debug &
./$APP &