export VISUAL=nvim
export EDITOR=nvim

export PATH=$PATH:$HOME/.local/bin:$HOME/.config/projects
export NODE_PATH=$NODE_PATH:$HOME/.npm/lib/node_modules

export PIPENV_VENV_IN_PROJECT=1

export XDG_CONFIG_HOME=$HOME/.config

# if [ $(cat /etc/hostname) = Contraxia ]; then
#     export LIBVA_DRIVER_NAME=vdpau
#     export VDPAU_DRIVER=nvidia
#
#     if [[ -z $DISPLAY && $(tty) == /dev/tty4 && $XDG_SESSION_TYPE == tty ]]; then
#       export QT_QPA_PLATFORM=wayland
#
#       export LIBVA_DRIVER_NAME=nvidia
#       export XDG_SESSION_TYPE=wayland
#       export GBM_BACKEND=nvidia-drm
#       export __GLX_VENDOR_LIBRARY_NAME=nvidia
#       export WLR_NO_HARDWARE_CURSORS=1
#       export WLR_RENDERER=vulkan
#
#       exec sway --unsupported-gpu
#     fi
#
#     if [[ -z $DISPLAY && $(tty) == /dev/tty3 && $XDG_SESSION_TYPE == tty ]]; then
#       exec Hyprland
#     fi
#
#     # if [[ -z $DISPLAY && $(tty) == /dev/tty2 && $XDG_SESSION_TYPE == tty ]]; then
#     #   QT_QPA_PLATFORM=wayland XDG_SESSION_TYPE=wayland exec dbus-run-session gnome-session
#     # fi
#
#     # if [[ -z $DISPLAY && $(tty) == /dev/tty1 ]]; then
#     #   XDG_SESSION_TYPE=x11 GDK_BACKEND=x11 exec startx
#     # fi
# fi

# if [ "$HOSTNAME" = nidavellir ]; then
#     export SSH_AUTH_SOCK=$XDG_RUNTIME_DIR/gcr/ssh
#
#     if [[ -z $DISPLAY && $(tty) == /dev/tty2 && $XDG_SESSION_TYPE == tty ]]; then
#       export QT_QPA_PLATFORM=wayland
#
#       export LIBVA_DRIVER_NAME=nvidia
#       export XDG_SESSION_TYPE=wayland
#       export XDG_SESSION_DESKTOP=sway
#       export GBM_BACKEND=nvidia-drm
#       export __GLX_VENDOR_LIBRARY_NAME=nvidia
#       export WLR_NO_HARDWARE_CURSORS=1
#       export WLR_RENDERER=vulkan
#
#       exec sway --unsupported-gpu --debug &> /home/jona/sway-debug.log
#     fi
#
#     if [[ -z $DISPLAY && $(tty) == /dev/tty3 && $XDG_SESSION_TYPE == tty ]]; then
#       export HYPR_ADDITIONAL_CONFIG=nidavellir-intel
#
#       exec Hyprland
#     fi
#
#     if [[ -z $DISPLAY && $(tty) == /dev/tty4 && $XDG_SESSION_TYPE == tty ]]; then
#       # Render everything on nvidia gpu, disable laptop screen
#       export WLR_DRM_DEVICES=/dev/dri/card1:/dev/dri/card0
#       export HYPR_ADDITIONAL_CONFIG=nidavellir-nvidia
#
#       exec Hyprland
#     fi
# fi
