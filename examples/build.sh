#!/bin/bash
set -e
cp "../eisvogel.tex" "../eisvogel.latex"

echo "##"
echo "# Building examples"
echo "##"
echo ""

echo "- basic-example"
pandoc "basic-example/basic-example.md"         -o "basic-example/basic-example.pdf"         --from markdown --template "../eisvogel.latex" --listings
pdftoppm -r 150 -png "basic-example/basic-example.pdf" > "basic-example/basic-example.png"

echo "- custom-titlepage"
pandoc "custom-titlepage/custom-titlepage.md"   -o "custom-titlepage/custom-titlepage.pdf"   --from markdown --template "../eisvogel.latex" -V "logo=custom-titlepage/logo-inverted.pdf" --listings
pdftoppm -r 150 -png "custom-titlepage/custom-titlepage.pdf" > "custom-titlepage/custom-titlepage.png"

echo "- default-titlepage"
pandoc "default-titlepage/default-titlepage.md" -o "default-titlepage/default-titlepage.pdf" --from markdown --template "../eisvogel.latex" --listings
pdftoppm -r 150 -png "default-titlepage/default-titlepage.pdf" > "default-titlepage/default-titlepage.png"

echo "- german"
# No lang option (-V lang=de) here because the language
# is set in the markdown file via the YAML metadata block.
pandoc "german/german.md" -o "german/german.pdf" --from markdown --template "../eisvogel.latex" --highlight-style kate
pdftoppm -r 150 -png "german/german.pdf" > "german/german.png"

# No lang option (-V lang=jp) here because it's
# unspported in XeLaTeX (in polyglossia).
# These commands are disabled because the CJK font isn't available on travis.
#pandoc "japanese/japanese.md" -o "japanese/japanese.pdf" --from markdown --template "../eisvogel.latex" --listings --pdf-engine=xelatex -V lang=en-us -V CJKmainfont="HiraginoSans-W4"
#pdftoppm -r 150 -png "japanese/japanese.pdf" > "japanese/japanese.png"

echo "- listings"
pandoc "listings/listings.md" -o "listings/listings.pdf" --from markdown --template "../eisvogel.latex" --listings
pdftoppm -r 150 -png "listings/listings.pdf" > "listings/listings.png"

echo "- without-listings"
pandoc "without-listings/without-listings.md" -o "without-listings/without-listings.pdf" --from markdown --template "../eisvogel.latex" --highlight-style kate
pdftoppm -r 150 -png "without-listings/without-listings.pdf" > "without-listings/without-listings.png"

echo "- green-titlepage"
pandoc "green-titlepage/green-titlepage.md"   -o "green-titlepage/green-titlepage.pdf"   --from markdown --template "../eisvogel.latex" --listings
pdftoppm -r 150 -png "green-titlepage/green-titlepage.pdf" > "green-titlepage/green-titlepage.png"

echo "- book"
# Additional options like `book: true` and `classoption: [oneside]` are set in the markdown file via the YAML metadata block.
pandoc "book/book.md" -o "book/book.pdf" --from markdown --template "../eisvogel.latex" --listings --top-level-division="chapter" 
pdftoppm -r 150 -png "book/book.pdf" > "book/book.png"

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