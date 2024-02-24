#!/usr/bin/env bash
REAL_ZSHRC_PATH=$(ls -l $HOME/.zshrc | awk '{print $11}')
ZSH_CONFIG_PATH=${REAL_ZSHRC_PATH%/*}

DIR_PATH="$ZSH_CONFIG_PATH/local"
FILE_SOURCE="$DIR_PATH/fzf.txt"

[ -e $FILE_SOURCE ]
FILE_EXISTS=$?

if [ $FILE_EXISTS != 0 ]; then
	touch $FILE_SOURCE
fi

echo $(pwd) >> $FILE_SOURCE
cp "$FILE_SOURCE" "$FILE_SOURCE".bak
cat $FILE_SOURCE.bak | sort | uniq > $FILE_SOURCE
