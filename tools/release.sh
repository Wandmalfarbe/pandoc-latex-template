#!/bin/bash

zip -r -X --exclude="*.DS_Store*" "Eisvogel-${1}.zip" "examples" "eisvogel.tex" "icon.png" "LICENSE" "README.md"