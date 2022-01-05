#!/bin/bash

CONFIG_PATH="./.config"
CONFIG_FILE="${CONFIG_PATH}/.conf"
GITHUB_ID=$(awk '/^GITHUB_ID/{print $3}' ${CONFIG_FILE})
PUSH_DESTINATION="til/${GITHUB_ID}"

DIR_PATH="./TIL/${GITHUB_ID}"

FILE_LIST=`git status ${DIR_PATH} | awk '/TIL/{print $1}'`

if [ "${FILE_LIST}" = "modified:" ]; then
	FILE_LIST=`git status ${DIR_PATH} | awk '/TIL/{print $2}'`
fi

if [ "${FILE_LIST}" ]; then
    echo "Choose a file you wanna commit :"
    select f in ${FILE_LIST}
    do
        echo "Commit ${f}"
        COMMIT_FILE=${f}
        COMMIT_MESSAGE=`basename ${f} .md`
        break
    done
else
    echo "No file exists."
fi

git add ${COMMIT_FILE}
git commit -m "${COMMIT_MESSAGE}"
git push origin ${PUSH_DESTINATION}
