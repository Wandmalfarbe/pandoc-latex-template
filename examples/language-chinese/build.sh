# No lang option (-V lang=zh) here because Chinese is unsupported in polyglossia and babel.
pandoc "document.md" -o "document.pdf" --from markdown --template "../../dist/eisvogel.latex" --listings --pdf-engine "xelatex" -V CJKmainfont="HiraginoSans-W4"
