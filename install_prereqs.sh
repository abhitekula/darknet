#!/bin/bash

sudo apt install -y opencv ffmpeg

git clone git@github.com:abhitekula/darknet.git
cd darknet
make