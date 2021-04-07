#!/usr/bin/env bash
set -euxo pipefail

Xvfb :45 -ac -screen 0 "${SCREEN_WIDTH}x${SCREEN_HEIGHT}"x24 -nolisten tcp &
export DISPLAY=:45

until xdpyinfo -display :45; do sleep 1; done

chromium \
	--window-size="$((SCREEN_WIDTH + 15)),$SCREEN_HEIGHT" \
	--window-position=0,0 \
	--no-sandbox \
	--incognito \
	--app=https://time.is/just/UTC &

sleep 3                                                                                                                                  # Let time.is load
xdotool mousemove $((SCREEN_WIDTH / 2 + 100)) $((SCREEN_HEIGHT - 50)) click 1 mousemove $((SCREEN_WIDTH + 100)) $((SCREEN_HEIGHT + 100)) # Accept cookies and hide mouse (+nomouse in ffmpeg does not work)
xdotool key U002E                                                                                                                        # Show tenths of second
xdotool key U002E                                                                                                                        # Show miliseconds

ffmpeg \
	-f x11grab \
	-framerate "$FPS" -video_size "${SCREEN_WIDTH}x${SCREEN_HEIGHT}" \
	-i $DISPLAY \
	-b:v "$BITRATE" -g "$FPS" \
	-f flv "$RTMP_DESTINATION"

wait
