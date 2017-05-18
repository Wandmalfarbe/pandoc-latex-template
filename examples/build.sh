#!/bin/bash

pandoc "basic-example/basic-example.md"         -o "basic-example/basic-example.pdf"         --from markdown --template "../eisvogel.latex" --listings
pdftoppm -r 150 -png "basic-example/basic-example.pdf" > "basic-example/basic-example.png"

pandoc "custom-titlepage/custom-titlepage.md"   -o "custom-titlepage/custom-titlepage.pdf"   --from markdown --template "../eisvogel.latex" --listings
pdftoppm -r 150 -png "custom-titlepage/custom-titlepage.pdf" > "custom-titlepage/custom-titlepage.png"

pandoc "default-titlepage/default-titlepage.md" -o "default-titlepage/default-titlepage.pdf" --from markdown --template "../eisvogel.latex" --listings
pdftoppm -r 150 -png "default-titlepage/default-titlepage.pdf" > "default-titlepage/default-titlepage.png"