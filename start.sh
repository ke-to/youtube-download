#!/bin/bash

setopt KSH_ARRAYS BASH_REMATCH

echo $1

if [[ $1 =~ [?\&]list=([^\&]*) ]]
then
	echo "---------"
	echo "${BASH_REMATCH[1]}"
	echo "---------"
	f=${BASH_REMATCH[1]}
else
	echo "マッチしてないよ！！！！！！"
fi

zsh init.sh
zsh youtube_playlist_download.sh $f
zsh mp3_translator.sh