#!/bin/bash

echo "Welcome to Easy-TIL (ver 0.1)"
echo "For initial setting, please input your name and github nickname"
echo -n "Name : "
read NAME
echo -n "Github Nickname : "
read NICKNAME

chmod +x ./.config/*.sh

./.config/config.sh ${NAME} ${NICKNAME}
./.config/template.sh ${NAME} ${NICKNAME}

echo "Settings DONE!"
