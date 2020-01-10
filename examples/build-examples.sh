#!/bin/bash
set -e
cp "../eisvogel.tex" "../eisvogel.latex"

echo "##"
echo "# Building examples"
echo "##"
echo ""

echo "- header-and-footer"
pandoc "header-and-footer/header-and-footer.md" -o "header-and-footer/header-and-footer.pdf" --from markdown --template "../eisvogel.latex" --listings --resource-path "./header-and-footer/"
pdftoppm -r 150 -png "header-and-footer/header-and-footer.pdf" > "header-and-footer/header-and-footer.png"

echo "- page-background"
cd "page-background"
pandoc "page-background.md" -o "page-background.pdf" --from markdown --template "../../eisvogel.latex" --listings
pdftoppm -r 150 -png "page-background.pdf" > "page-background.png"
cd ".."

echo "- titlepage-background"
cd "titlepage-background"
pandoc "titlepage-background.md" -o "titlepage-background.pdf" --from markdown --template "../../eisvogel.latex" --listings
pdftoppm -r 150 -png "titlepage-background.pdf" > "titlepage-background.png"
cd ".."

echo "- basic-example"
pandoc "basic-example/basic-example.md" -o "basic-example/basic-example.pdf" --from markdown --template "../eisvogel.latex" --listings
pdftoppm -r 150 -png "basic-example/basic-example.pdf" > "basic-example/basic-example.png"

echo "- beamer"
pandoc "beamer/beamer.md" -o "beamer/beamer.pdf" --from markdown --to beamer --template "../eisvogel.latex" --listings
pdftoppm -r 150 -png "beamer/beamer.pdf" > "beamer/beamer.png"

echo "- custom-titlepage"
cd "custom-titlepage"
pandoc "custom-titlepage.md" -o "custom-titlepage.pdf" --from markdown --template "../../eisvogel.latex" --listings
pdftoppm -r 150 -png "custom-titlepage.pdf" > "custom-titlepage.png"
cd ".."

echo "- default-titlepage"
pandoc "default-titlepage/default-titlepage.md" -o "default-titlepage/default-titlepage.pdf" --from markdown --template "../eisvogel.latex" --listings
pdftoppm -r 150 -png "default-titlepage/default-titlepage.pdf" > "default-titlepage/default-titlepage.png"

echo "- german"
# No lang option (-V lang=de) here because the language
# is set in the markdown file via the YAML metadata block.
pandoc "german/german.md" -o "german/german.pdf" --from markdown --template "../eisvogel.latex" --highlight-style kate
pdftoppm -r 150 -png "german/german.pdf" > "german/german.png"

# No lang option (-V lang=jp) here because Japanese unsupported in polyglossia.
# These commands are disabled because the CJK font isn't available on travis.
#pandoc "japanese/japanese.md" -o "japanese/japanese.pdf" --from markdown --template "../eisvogel.latex" --listings --pdf-engine=xelatex -V CJKmainfont="HiraginoSans-W4"
#pdftoppm -r 150 -png "japanese/japanese.pdf" > "japanese/japanese.png"

echo "- listings"
pandoc "listings/listings.md" -o "listings/listings.pdf" --from markdown --template "../eisvogel.latex" --listings
pdftoppm -r 150 -png "listings/listings.pdf" > "listings/listings.png"

echo "- without-listings"
pandoc "without-listings/without-listings.md" -o "without-listings/without-listings.pdf" --from markdown --template "../eisvogel.latex" --highlight-style kate
pdftoppm -r 150 -png "without-listings/without-listings.pdf" > "without-listings/without-listings.png"

echo "- green-titlepage"
pandoc "green-titlepage/green-titlepage.md" -o "green-titlepage/green-titlepage.pdf" --from markdown --template "../eisvogel.latex" --listings
pdftoppm -r 150 -png "green-titlepage/green-titlepage.pdf" > "green-titlepage/green-titlepage.png"

echo "- book"
# Additional options like `book: true` and `classoption: [oneside]` are set in the markdown file via the YAML metadata block.
pandoc "book/book.md" -o "book/book.pdf" --from markdown --template "../eisvogel.latex" --listings --top-level-division="chapter"
pdftoppm -r 150 -png "book/book.pdf" > "book/book.png"

echo "- boxes-with-pandoc-latex-environment-and-awesomebox"
pandoc "boxes-with-pandoc-latex-environment-and-awesomebox/boxes.md" -o "boxes-with-pandoc-latex-environment-and-awesomebox/boxes.pdf" --from markdown --template "../eisvogel.latex" --filter pandoc-latex-environment --listings
pdftoppm -r 150 -png "boxes-with-pandoc-latex-environment-and-awesomebox/boxes.pdf" > "boxes-with-pandoc-latex-environment-and-awesomebox/boxes.png"

# No lang option (-V lang=zh) here because Chinese is unsupported in polyglossia and babel.
# These commands are disabled because the CJK font isn't available on travis.
#pandoc "chinese/chinese.md" -o "chinese/chinese.pdf" --from markdown --template "../eisvogel.latex" --listings --pdf-engine=xelatex -V CJKmainfont="HiraginoSans-W4"
#pdftoppm -r 150 -png "chinese/chinese.pdf" > "chinese/chinese.png"

echo "- images-and-tables"
pandoc "images-and-tables/images-and-tables.md" -o "images-and-tables/images-and-tables.pdf" --from markdown --template "../eisvogel.latex" --listings --resource-path "./images-and-tables/"
pdftoppm -r 150 -png "images-and-tables/images-and-tables.pdf" > "images-and-tables/images-and-tables.png"

echo "- logo-titlepage"
# Important: Since the logo is a manually included image, the option "--resource-path" can't be used for specifying its location.
# The location of the logo has to be relative to where pandoc is executed, so we cd into the directory with the logo.
cd "logo-titlepage"
pandoc "logo-titlepage.md" -o "logo-titlepage.pdf" --from markdown --template "../../eisvogel.latex" --listings
pdftoppm -r 150 -png "logo-titlepage.pdf" > "logo-titlepage.png"
cd ".."

rm "../eisvogel.latex"