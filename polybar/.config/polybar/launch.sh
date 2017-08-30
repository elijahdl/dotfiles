#!/usr/bin/env sh

# Terminate already running instances of polybar
killall -q polybar

# Wait until the process have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

# Launch bar1 and bar2
MONITOR=HDMI-1 polybar bottom &
MONITOR=DP-1 polybar bottom &
#polybar bar2 &

echo "Bars launched..."
