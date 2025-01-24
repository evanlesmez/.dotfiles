#!/bin/bash
set -euo pipefail
# for debugging
# set -x
dur=${1:-30m}

notify-send "$dur interval timer started at $(date +%H:%M:%S)"

while true; do
    sleep $dur
    notify-send -w "$dur interval done" "Write down what you did and how content you feel. Also drink some water"
done

