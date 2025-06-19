#!/bin/bash
set -e

echo "Installing custom fonts..."

FONTDIR="/usr/local/share/fonts/eisvogel-examples-fonts"
sudo mkdir -p "$FONTDIR"
sudo cp resources/fonts/**/*.ttf "$FONTDIR"
sudo chmod -R --reference=/usr/share/fonts/truetype "$FONTDIR"
sudo fc-cache -fv
