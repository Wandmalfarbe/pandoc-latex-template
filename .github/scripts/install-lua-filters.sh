#!/bin/bash
set -e

echo "XDG_CONFIG_HOME $XDG_CONFIG_HOME"
BASE_DIR="${XDG_CONFIG_HOME:-$HOME/.local/share}"
echo "BASE_DIR $BASE_DIR"
PANDOC_DATA_DIR="$BASE_DIR/pandoc/filters"
echo "PANDOC_DATA_DIR $PANDOC_DATA_DIR"
mkdir -p "$PANDOC_DATA_DIR"

curl -fLo "$PANDOC_DATA_DIR/diagram.lua" "https://raw.githubusercontent.com/pandoc-ext/diagram/refs/heads/main/_extensions/diagram/diagram.lua"
