#!/bin/bash

# check for wine
# bash script made in 10s - dwifte
# ill probably make a ui for this to make it easier :smile:
if [ -f "/usr/bin/wine64" ]; then
   echo "Wine Found."
else
   echo "Wine not found.\nPlease install it using your package manager."
   exit 404
fi

# uses wine to launch Kade Engine.exe
WINEPREFIX=~/.KadeEngine wine "Kade Engine.exe"
