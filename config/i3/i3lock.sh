#!/bin/bash
i3lock -i ~/.config/dotfiles/i3/gae.png
# i3lock sets keyboard to defaults, so this line is to set it back to original binding
setxkbmap -layout us,ge -option caps:swapescape
