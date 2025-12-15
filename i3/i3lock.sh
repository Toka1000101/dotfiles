#!/bin/bash
TMPBG=/tmp/blurred_screen.png
RES=$(xrandr | grep 'current' | sed -E 's/.*current\s([0-9]+)\sx\s([0-9]+).*/\1x\2/')
 
ffmpeg -f x11grab -video_size $RES -y -i $DISPLAY -filter_complex "boxblur=5:1" -vframes 1 $TMPBG -loglevel quiet
i3lock -i $TMPBG
rm $TMPBG
# i3lock sets keyboard to defaults, so this line is to set it back to original binding
setxkbmap -layout us,ge -option caps:swapescape
