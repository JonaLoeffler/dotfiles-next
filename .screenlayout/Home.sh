#!/bin/sh
if [ "$HOSTNAME" = nidavellir ]; then
    if [ "$XDG_SESSION_DESKTOP" = i3 ]; then
        xrandr --output eDP-1 --mode 2560x1600 --pos 5280x667 --rotate normal --output DP-1-0.1.5 --mode 2560x1440 --pos 0x0 --rotate left --output DP-1-0.1.6 --primary --mode 3840x2160 --pos 1440x309 --rotate normal --output DP-1-0 --off --output DP-1-1 --off --output DP-1-2 --off --output DP-1-3 --off --output HDMI-1-0 --off --output DP-1-4 --off --output DP-1-5 --off
    elif [ "$XDG_SESSION_DESKTOP" = sway ] || [ "$XDG_SESSION_DESKTOP" = sway-nvidia ]; then
        echo "Sway nidavellir"
        # sway output eDP-1
        # sway output "LG Electronics LG Ultra HD 0x0000A534" scale 1.5
        # sway output "AU Optronics 0x6A9F Unknown" scale 1.2
        swaymsg 'output "LG Electronics LG Ultra HD 0x0000A534" mode 3840x2160@59.997Hz power on';
        swaymsg 'output "LG Electronics LG Ultra HD 0x0000A534" scale 1.5';
        swaymsg 'output "AU Optronics 0x6A9F Unknown" scale 1.4'
        echo "sway nidavellir done"
    fi
elif [ $(cat /etc/hostname) = Contraxia ]; then
    if [ "$XDG_SESSION_DESKTOP" = i3 ]; then
        echo "i3 contraxia"
        xrandr --output HDMI-0 --off --output DP-0 --mode 2560x1440 --pos 3840x0 --rotate right --output DP-1 --off --output HDMI-1 --off --output DP-2 --primary --mode 3840x2160 --pos 0x310 --rotate normal --output DP-3 --off
    elif [ "$XDG_SESSION_DESKTOP" = sway ]; then
        echo "Sway nidavellir"
        swaymsg 'output "LG Electronics LG Ultra HD 0x0000A534" power on';
        swaymsg 'output "LG Electronics LG Ultra HD 0x0000A534" scale 1.5';
        swaymsg 'output "AU Optronics 0x6A9F Unknown" scale 1.2'
    fi
fi

