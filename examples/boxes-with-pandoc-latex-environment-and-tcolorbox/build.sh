pandoc "document.md" -o "document.pdf" --from markdown --template "../../template/eisvogel.latex" --filter pandoc-latex-environment --listings
