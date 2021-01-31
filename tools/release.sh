#!/bin/bash

rm -rf "dist"
mkdir "dist"

cp "eisvogel.tex" "eisvogel.latex"

# create .zip files
zip -r -X --exclude="*.DS_Store*" "dist/Eisvogel-${1}.zip" "examples" "eisvogel.latex" "icon.png" "LICENSE" "README.md" "CHANGELOG.md"
cp "dist/Eisvogel-${1}.zip" "dist/Eisvogel.zip"

# create .tar.gz files
tar --exclude="*.DS_Store*" --include="examples" --include="eisvogel.latex" --include="icon.png" --include="LICENSE" --include="README.md" --include="CHANGELOG.md" -zcvf "dist/Eisvogel-${1}.tar.gz" *
cp "dist/Eisvogel-${1}.tar.gz" "dist/Eisvogel.tar.gz"

rm "eisvogel.latex"