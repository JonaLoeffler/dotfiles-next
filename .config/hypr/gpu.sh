#!/usr/bin/env sh

if [ $WLR_DRM_DEVICES == "/dev/dri/card1:/dev/dri/card0" ]; then
    export WLR_DRM_DEVICES=/dev/dri/card0:/dev/dri/card1
    export HYPR_ADDITIONAL_CONFIG=nidavellir-intel

    echo "from dgpu to igpu"
else
    export WLR_DRM_DEVICES=/dev/dri/card1:/dev/dri/card0
    export HYPR_ADDITIONAL_CONFIG=nidavellir-nvidia

    echo "from igpu to dgpu"
fi

hyprctl reload
