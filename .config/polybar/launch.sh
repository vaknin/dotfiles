#!/usr/bin/env bash

polybar-msg cmd quit

# Multi-head
if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload mybar &
  done
else
  polybar --reload mybar &
fi

echo "---" | tee -a /tmp/polybar1.log
echo "Bars launched..."
