#!/bin/sh
if [ "$HOSTNAME" = nidavellir ]; then
    swaymsg 'output * bg /usr/share/backgrounds/gnome/adwaita-d.webp fill'
elif [ "$HOSTNAME" = contraxia ]; then
    swaymsg 'output * bg /home/jona/Downloads/arch.png fill'
fi

