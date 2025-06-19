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

# install LaTeX packages that are not included via the texlive.profile but are needed for some examples

tlmgr install adjustbox background bidi csquotes footmisc footnotebackref fvextra mdframed pagecolor sourcecodepro sourcesanspro titling upquote xurl hardwrap catchfile
# trial and error
tlmgr install letltxmacro zref everypage framed collectbox
# packages needed for the template
tlmgr install xecjk filehook unicode-math ucharcat pagecolor babel-german ly1 mweights sourcecodepro sourcesanspro mdframed needspace fvextra footmisc footnotebackref background
# packages only needed for some examples (that include packages via header-includes)
tlmgr install awesomebox fontawesome5
# packages only needed for some examples (example boxes-with-pandoc-latex-environment-and-tcolorbox)
tlmgr install tcolorbox pgf etoolbox environ trimspaces
# for the example `watermark`
tlmgr install draftwatermark
