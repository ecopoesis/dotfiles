#!/bin/bash 

DIR="$( cd "$( dirname "$0" )" && pwd )"
SRC_DIRS="$(find ${HOME}/Library/Preferences/IntelliJ* -type d -d 0)"

mkdir -p ${DIR}/jetbrains

for SRC_DIR in ${SRC_DIRS}; do
    BASE="$(basename ${SRC_DIR})"
    mv ${SRC_DIR} ${DIR}/jetbrains/${BASE}
    ln -s ${DIR}/jetbrains/${BASE} ${SRC_DIR}
done
