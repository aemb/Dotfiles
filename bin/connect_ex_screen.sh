#!/bin/bash
intern=LVDS1
extern=VGA1

if xrandr | grep "$extern disconnected"; then
  xrandr --output "$extern" --off --output "$intern" --auto
else
  xrandr --output "$intern" --primary --auto --output "$extern" --right-of "$intern" --auto
  
fi
