#!/bin/bash

# toggle mic mute
pactl set-source-mute @DEFAULT_SOURCE@ toggle

STATE=$(pactl get-source-mute @DEFAULT_SOURCE@)

if [[ $STATE == *"yes"* ]]; then
    # Use brightnessctl to set the LED
    brightnessctl --device='platform::micmute' set 1
else
    brightnessctl --device='platform::micmute' set 0
fi
