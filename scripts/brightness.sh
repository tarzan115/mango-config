#!/usr/bin/bash

# Change brightness level with `light`.
# You can call this script like this:
# brightness.sh [up|down]

function get_brightness {
	var=$(brightnessctl get)
	echo "${var##* }" | sed 's/[^0-9][^.]*//g'
}

function send_notification {
	brightness=$(get_brightness)
	# swayosd handles the on-screen display; dunstify kept for reference only.
}

case $1 in
up)
	swayosd-client --brightness +2
	# brightnessctl set +1%
	# send_notification
	;;
down)
	swayosd-client --brightness -2
	# brightnessctl set 1%-
	# send_notification
	;;
esac
