# No lang option (-V lang=jp) here because Japanese unsupported in polyglossia.
pandoc "document.md" -o "document.pdf" --from markdown --template "../../dist/eisvogel.latex" --syntax-highlighting idiomatic --pdf-engine "xelatex" -V CJKmainfont="HiraginoSans-W4"
