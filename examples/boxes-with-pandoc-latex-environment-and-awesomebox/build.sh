pandoc "document.md" -o "document.pdf" --from markdown --template "../../dist/eisvogel.latex" --filter pandoc-latex-environment --listings
