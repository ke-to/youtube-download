#!/bin/bash

for f in input/*.opus
do 
  f2=${f##*/}
  ffmpeg -i $f -ab 128 output/${f2/.opus/}.mp3
done

for f in input/*.m4a
do 
  f2=${f##*/}
  ffmpeg -i $f -ab 128 output/${f2/.m4a/}.mp3
done
