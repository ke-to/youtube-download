#!/bin/bash

# list_id PLf8sGPPwWebWuw1-HPINvsrJ66X7_qeFM
URL='https://www.youtube.com/watch?v='
PLAYLIST='https://www.youtube.com/playlist?list='

youtube-dl --get-id  $PLAYLIST$1 | while read line
do
  youtube-dl -i --merge-output-format mp4 --audio-quality 0 --prefer-ffmpeg -x -o 'input/%(title)s.%(ext)s' $URL$line
done