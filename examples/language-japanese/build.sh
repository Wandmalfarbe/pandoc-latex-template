# No lang option (-V lang=jp) here because Japanese unsupported in polyglossia.
pandoc "document.md" -o "document.pdf" --from markdown --template "../../dist/eisvogel.latex" --listings --pdf-engine "xelatex" -V CJKmainfont="HiraginoSans-W4"
