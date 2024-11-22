#! /bin/bash
set -euo pipefail
# for debugging
# set -x
dur=${1:-25m}

echo "$dur timer started at $(date +%H:%M:%S)"
sleep "$dur"
notify-send "Stand up"
mpg123 --scale 12500 ~/.scripts/assets/mw2-lvl.mp3
