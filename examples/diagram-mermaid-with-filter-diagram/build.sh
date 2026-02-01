pandoc --verbose "document.md" -o "document.pdf" --from markdown --template "../../dist/eisvogel.latex" --lua-filter diagram.lua
