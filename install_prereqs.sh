#!/bin/bash

make -j 4

FILE=yolov3.weights
if [ -f "$FILE" ]; then
    wait
else 
    wget https://pjreddie.com/media/files/yolov3.weights
fi


sudo apt install -y ffmpeg

# Install dummy display
sudo apt install -y xvfb
Xvfb :1 &
export DISPLAY=:1