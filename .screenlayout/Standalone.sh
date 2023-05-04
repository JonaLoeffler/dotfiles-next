#!/bin/sh
if [ "$HOSTNAME" = nidavellir ]; then
    if [ "$XDG_SESSION_DESKTOP" = i3 ]; then
        xrandr --output eDP-1 --mode 2560x1600 --pos 0x0 --rotate normal --output DP-1-0 --off --output DP-1-1 --off --output DP-1-2 --off --output DP-1-3 --off --output HDMI-1-0 --off --output DP-1-4 --off --output DP-1-5 --off
    elif [ "$XDG_SESSION_DESKTOP" = sway ]; then
        echo "Sway nidavellir"
        swaymsg 'output "LG Electronics LG Ultra HD 0x0000A534" dpms off';
        swaymsg 'output "AU Optronics 0x6A9F Unknown" scale 1.2'
    fi
elif [ "$HOSTNAME" = contraxia ]; then
    echo "TODO"
fi

