#!/usr/bin/env bash
REAL_ZSHRC_PATH=$(ls -l $HOME/.zshrc | awk '{print $11}')
ZSH_CONFIG_PATH=${REAL_ZSHRC_PATH%/*}

FILE_SOURCE="$ZSH_CONFIG_PATH/local/fzf.txt"

[ -e $FILE_SOURCE ]
FILE_EXISTS=$?

if [ $FILE_EXISTS != 0 ]; then
	touch $FILE_SOURCE
fi

CHOOSEN_DIR=$(cat $FILE_SOURCE | fzf)

cd "$CHOOSEN_DIR"
