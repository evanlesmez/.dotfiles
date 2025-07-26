#! /bin/bash
set -euo pipefail
# for debugging
# set -x
dur=${1:-25m}

echo "$dur timer started at $(date +%H:%M:%S)"
notify-send "$dur timer started at $(date +%H:%M:%S)"
sleep "$dur"
mpv --no-terminal ~/.scripts/assets/mw2-lvl.mp3
notify-send -w "Stand up"
