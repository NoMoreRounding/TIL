#!/bin/bash

CONFIG_PATH="./.config"
CONFIG_FILE="${CONFIG_PATH}/.conf"
GITHUB_ID=$(awk '/^GITHUB_ID/{print $3}' ${CONFIG_FILE})

TODAY=`date +"%y-%m-%d"`
DIR_PATH="./TIL/${GITHUB_ID}"
NEW_FILE="${GITHUB_ID}(${TODAY}).md"

if [ ! -d "./TIL" ]; then
    mkdir ./TIL
fi

if [ ! -d "${DIR_PATH}" ]; then
    mkdir "${DIR_PATH}"
    mkdir "${DIR_PATH}/images"
fi

if [ -e "${DIR_PATH}/${NEW_FILE}" ]; then
    echo "${NEW_FILE} already exists."
    exit 0
fi

cp .template/TIL_TEMPLATE.md "${DIR_PATH}/${NEW_FILE}"
