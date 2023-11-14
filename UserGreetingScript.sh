#!/bin/bash
# Greet the user based on the time of the day

current_hour=$(date +%H)

if [ $current_hour -lt 12 ]; then
    echo "Good morning, $(whoami)!"
elif [ $current_hour -lt 18 ]; then
    echo "Good afternoon, $(whoami)!"
else
    echo "Good evening, $(whoami)!"
fi
