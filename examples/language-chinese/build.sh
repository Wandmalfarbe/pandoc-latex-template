# No lang option (-V lang=zh) here because Chinese is unsupported in polyglossia and babel.
pandoc "document.md" -o "document.pdf" --from markdown --template "../../dist/eisvogel.latex" --syntax-highlighting idiomatic --pdf-engine "xelatex" -V CJKmainfont="HiraginoSans-W4"
