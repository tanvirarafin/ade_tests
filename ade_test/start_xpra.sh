#!/bin/bash
sudo cp /run/user/128/gdm/Xauthority ~/.Xauthority
xpra start --bind-tcp=0.0.0.0:9876 --html=on --start-child="gnome-terminal" --exit-with-children=no --daemon=yes --xvfb="/usr/bin/Xvfb +extension Composite -screen 0 1920x1080x24+32 -nolisten tcp -noreset" --file-transfer=on --pulseaudio=no --notifications=no --bell=no --clipboard :1

