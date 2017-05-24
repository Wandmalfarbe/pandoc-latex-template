#!/bin/bash

pandoc "basic-example/basic-example.md"         -o "basic-example/basic-example.pdf"         --from markdown --template "../eisvogel.latex" --listings
pdftoppm -r 150 -png "basic-example/basic-example.pdf" > "basic-example/basic-example.png"

pandoc "custom-titlepage/custom-titlepage.md"   -o "custom-titlepage/custom-titlepage.pdf"   --from markdown --template "../eisvogel.latex" --listings
pdftoppm -r 150 -png "custom-titlepage/custom-titlepage.pdf" > "custom-titlepage/custom-titlepage.png"

pandoc "default-titlepage/default-titlepage.md" -o "default-titlepage/default-titlepage.pdf" --from markdown --template "../eisvogel.latex" --listings
pdftoppm -r 150 -png "default-titlepage/default-titlepage.pdf" > "default-titlepage/default-titlepage.png"

pandoc "listings/listings.md" -o "listings/listings.pdf" --from markdown --template "../eisvogel.latex" --listings
pdftoppm -r 150 -png "listings/listings.pdf" > "listings/listings.png"

pandoc "without-listings/without-listings.md" -o "without-listings/without-listings.pdf" --from markdown --template "../eisvogel.latex" --highlight-style kate
pdftoppm -r 150 -png "without-listings/without-listings.pdf" > "without-listings/without-listings.png"