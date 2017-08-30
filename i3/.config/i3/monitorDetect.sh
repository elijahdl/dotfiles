#!/bin/sh

# Only set up second monitor if monitor is... set up

xrandr | grep 'DP-1 connected' && exec xrandr --output HDMI-1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output DP-1 --mode 1600x900 --pos 1920x180 --rotate normal --output DVI-D-1 --off

