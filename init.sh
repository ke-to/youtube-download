#!/bin/bash

rm -r input
rm -r output

mkdir input
mkdir output

brew -v &> /dev/null
if [ $? -ne 0 ] ; then
  echo 'Homebrewをインストールします。'
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  brew update
else
  echo 'Homebrew installed.'
fi

ffmpeg -h &> /dev/null
if [ $? -ne 0 ] ; then
  echo 'ffmpegをインストールします。'
  brew install ffmpeg
else
  echo 'ffmpeg installed.'
fi

youtube-dl -h &> /dev/null
if [ $? -ne 0 ] ; then
  echo 'youtube-dlをインストールします。'
  brew install youtube-dl
else
  echo 'youtube-dl installed.'
fi
