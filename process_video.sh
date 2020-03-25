#!/bin/bash

out_file=${$1%.*}
mp4_out=$out_file
out_file+="out.avi"
mp4_out+="out.mp4"

# Run darknet on videofile
./darknet detector demo cfg/coco.data cfg/yolov3.cfg yolov3.weights "$1" -out_filename $out_file

# Convert avi video file to mp4
ffmpeg -i $out_file $mp4_out
rm $out_file