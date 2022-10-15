#!/bin/bash
step="0.05"
player="spotify"


current_vol=$(playerctl --player="$player" volume)
case $1 in
    "--up")
        newvol=$(echo "$current_vol" "$step" | awk '{print $1 + $2}')
        ;;
    "--down")
        if [[ $(echo "$current_vol < $step" | bc -l) -eq 1 ]];
        then
            newvol="0"
        else
            newvol=$(echo "$current_vol" "$step" | awk '{print $1 - $2}')
        fi
        ;;
esac
playerctl --player=spotify volume "$newvol"
