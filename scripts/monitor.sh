#!/usr/bin/bash

output="${MANGO_MONITOR_OUTPUT:-DP-1}"
enable=$(wlr-randr --json | jq --arg name "$output" '.[] | select(.name == $name) | .enabled')
if [ "$enable" = "true" ]; then
    wlr-randr --output "$output" --off
else
    wlr-randr --output "$output" --on
fi
