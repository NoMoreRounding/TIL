#!/bin/bash

NAME=$1
GITHUB_ID=$2
CONFIG_PATH="./.config"
CONFIG_FILE="${CONFIG_PATH}/.conf"

git checkout -b til/${GITHUB_ID}

echo `echo [TIL configuration]` > ${CONFIG_FILE}
echo `echo NAME = ${NAME}` >> ${CONFIG_FILE}
echo `echo GITHUB_ID = ${GITHUB_ID}` >> ${CONFIG_FILE}
chmod +x ${CONFIG_FILE}
