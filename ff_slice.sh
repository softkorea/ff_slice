#!/bin/sh
ffmpeg -i $1 target.mp3   
ffmpeg -i target.mp3 -f segment -segment_time 3600 -c copy $1_out%03d.mp3
