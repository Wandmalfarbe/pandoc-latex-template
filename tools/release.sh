#!/bin/bash

rm -rf "dist"
mkdir "dist"
zip -r -X --exclude="*.DS_Store*" "dist/Eisvogel-${1}.zip" "examples" "eisvogel.tex" "icon.png" "LICENSE" "README.md" "CHANGELOG.md"
tar --exclude="*.DS_Store*" --include="examples" --include="eisvogel.tex" --include="icon.png" --include="LICENSE" --include="README.md" --include="CHANGELOG.md" -zcvf "dist/Eisvogel-${1}.tar.gz" *