#!/bin/bash
set -e

REMOTE="${REMOTE:-https://mirror.ctan.org/systems/texlive/tlnet}"
INSTALL="${INSTALL:-/tmp/install-texlive}"
PROFILE="${PROFILE:-resources/texlive.profile}"

echo "Installing TeX Live using profile: $PROFILE"

# Download and extract the installer
mkdir -p "$INSTALL"
curl -sSL "${REMOTE}/install-tl-unx.tar.gz" | tar -xzv -C "$INSTALL" --strip-components=1

# Run the installer with the profile
sudo "$INSTALL/install-tl" -no-gui -profile "$PROFILE"

# Determine TeX Live version and binary path
VERSION=$("$INSTALL/install-tl" --version | grep 'version' | grep -o '[0-9]\{4\}')
PLATFORM=$("$INSTALL/install-tl" --print-platform)
TEXLIVE_DIR="/usr/local/texlive/${VERSION}"
TEXBIN="${TEXLIVE_DIR}/bin/${PLATFORM}"

# Add to PATH
echo "$TEXBIN" >> "$GITHUB_PATH"
sudo chown -hR "$(whoami)" "$TEXLIVE_DIR"

# Basic tlmgr setup
sudo apt-get update -qq && sudo apt-get install xzdec -y
tlmgr init-usertree
