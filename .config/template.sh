#!/bin/bash

NAME=$1
NICKNAME=$2
TEMPLATE_DIR=".template"
TEMPLATE_FILE="${TEMPLATE_DIR}/TIL_TEMPLATE.md"

mkdir ${TEMPLATE_DIR}
touch ${TEMPLATE_FILE}
echo "![header](https://capsule-render.vercel.app/api?type=soft&color=084B8A&height=20&section=header)" >> ${TEMPLATE_FILE}
echo ""
echo "# Today I Learned" >> ${TEMPLATE_FILE}
echo "" >> ${TEMPLATE_FILE}
echo `echo NAME : ${NAME}` >> ${TEMPLATE_FILE}
echo "" >> ${TEMPLATE_FILE}
echo `echo GITHUB NICKNAME : ${NICKNAME}` >> ${TEMPLATE_FILE}
echo "" >> ${TEMPLATE_FILE}
echo "---" >> ${TEMPLATE_FILE}
echo "" >> ${TEMPLATE_FILE}
echo "### ※ Content" >> ${TEMPLATE_FILE}
echo "" >> ${TEMPLATE_FILE}
echo "Hello World!" >> ${TEMPLATE_FILE}
echo "" >> ${TEMPLATE_FILE}
echo "---" >> ${TEMPLATE_FILE}
echo "" >> ${TEMPLATE_FILE}
echo "### Retrospective" >> ${TEMPLATE_FILE}
echo "" >> ${TEMPLATE_FILE}
echo "Hello World!" >> ${TEMPLATE_FILE}
echo "" >> ${TEMPLATE_FILE}
echo "![footer](https://capsule-render.vercel.app/api?type=soft&color=084B8A&height=20&section=footer)" >> ${TEMPLATE_FILE}
