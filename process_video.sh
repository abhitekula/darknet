#!/bin/bash

out_filename="$1 "
./darknet detector demo cfg/coco.data cfg/yolov3.cfg yolov3.weights "$1" -out_filename "$1.avi"