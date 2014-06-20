#!/bin/bash
sudo cvt 1920 1080 60
sudo xrandr --newmode "1920x1080_60.00" 173.00 1920 2048 2248 2576 1080 1083 10$
sudo xrandr -q
for screen in $(sudo xrandr -q| grep " connected" | cut -d " " -f 1); do
sudo xrandr --addmode $screen 1920x1080_60.00
done
