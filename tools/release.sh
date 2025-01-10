#!/bin/bash

distFolderName="dist"
archiveFolderName="Eisvogel-${1}"
archiveFolder="${distFolderName}/${archiveFolderName}"

rm -rf "${distFolderName}"
mkdir "${distFolderName}"
mkdir "${distFolderName}/${archiveFolderName}"

# create single template file for latex
cp "template-multi-file/eisvogel.latex" "${distFolderName}/eisvogel.latex"

# replace partials (latex)
sed -e '/\$fonts\.latex()\$/ {' -e 'r template-multi-file/fonts.latex' -e 'd' -e '}' -i '' "${distFolderName}/eisvogel.latex"
sed -e '/\$common\.latex()\$/ {' -e 'r template-multi-file/common.latex' -e 'd' -e '}' -i '' "${distFolderName}/eisvogel.latex"
sed -e '/\$eisvogel-added\.latex()\$/ {' -e 'r template-multi-file/eisvogel-added.latex' -e 'd' -e '}' -i '' "${distFolderName}/eisvogel.latex"
sed -e '/\$eisvogel-title-page\.latex()\$/ {' -e 'r template-multi-file/eisvogel-title-page.latex' -e 'd' -e '}' -i '' "${distFolderName}/eisvogel.latex"
sed -e '/\$after-header-includes\.latex()\$/ {' -e 'r template-multi-file/after-header-includes.latex' -e 'd' -e '}' -i '' "${distFolderName}/eisvogel.latex"
sed -e '/\$hypersetup\.latex()\$/ {' -e 'r template-multi-file/hypersetup.latex' -e 'd' -e '}' -i '' "${distFolderName}/eisvogel.latex"
sed -e '/\$passoptions\.latex()\$/ {' -e 'r template-multi-file/passoptions.latex' -e 'd' -e '}' -i '' "${distFolderName}/eisvogel.latex"

# create single template file for beamer
cp "template-multi-file/eisvogel.beamer" "${distFolderName}/eisvogel.beamer"

# replace partials (beamer)
sed -e '/\$fonts\.latex()\$/ {' -e 'r template-multi-file/fonts.latex' -e 'd' -e '}' -i '' "${distFolderName}/eisvogel.beamer"
sed -e '/\$common\.latex()\$/ {' -e 'r template-multi-file/common.latex' -e 'd' -e '}' -i '' "${distFolderName}/eisvogel.beamer"
# The beamer template has no eisvogel block $eisvogel-added.latex()$
# The beamer template has no eisvogel titlepage $eisvogel-titlepage.latex()$
sed -e '/\$after-header-includes\.latex()\$/ {' -e 'r template-multi-file/after-header-includes.latex' -e 'd' -e '}' -i '' "${distFolderName}/eisvogel.beamer"
sed -e '/\$hypersetup\.latex()\$/ {' -e 'r template-multi-file/hypersetup.latex' -e 'd' -e '}' -i '' "${distFolderName}/eisvogel.beamer"
sed -e '/\$passoptions\.latex()\$/ {' -e 'r template-multi-file/passoptions.latex' -e 'd' -e '}' -i '' "${distFolderName}/eisvogel.beamer"


# create folder for the release eisvogel (ZIP and tar.gz)
cp -r "examples" "${archiveFolder}/examples"
cp -r "template-multi-file" "${archiveFolder}/template-multi-file"
cp "dist/eisvogel.latex" "${archiveFolder}/eisvogel.latex"
cp "dist/eisvogel.beamer" "${archiveFolder}/eisvogel.beamer"
cp "icon.png" "${archiveFolder}/icon.png"
cp "LICENSE" "${archiveFolder}/LICENSE"
cp "README.md" "${archiveFolder}/README.md"
cp "CHANGELOG.md" "${archiveFolder}/CHANGELOG.md"


cd dist

# create .zip file
zip -r -X --exclude="*.DS_Store*" "Eisvogel-${1}.zip" "${archiveFolderName}"

# create .tar.gz file
tar --exclude="*.DS_Store*" -zcvf "Eisvogel-${1}.tar.gz" "Eisvogel-${1}"
