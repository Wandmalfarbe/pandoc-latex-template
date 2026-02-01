#!/bin/bash
set -e

BASE_DIR="${XDG_CONFIG_HOME:-$HOME/.local/share}"
PANDOC_DATA_DIR="$BASE_DIR/pandoc/filters"
mkdir -p "$PANDOC_DATA_DIR"

curl -fLo "$PANDOC_DATA_DIR/diagram.lua" "https://raw.githubusercontent.com/pandoc-ext/diagram/refs/heads/main/_extensions/diagram/diagram.lua"
