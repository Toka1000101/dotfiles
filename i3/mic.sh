#!/bin/bash

pactl set-source-mute @DEFAULT_SOURCE@ toggle

STATE=$(pactl get-source-mute @DEFAULT_SOURCE@)

if [[ $STATE == *"yes"* ]]; then
    echo 1 > /sys/class/leds/platform::micmute/brightness
else
    echo 0 > /sys/class/leds/platform::micmute/brightness
fi
