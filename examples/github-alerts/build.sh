pandoc "document.md" -o "document.pdf" --from gfm+alerts --template "../../dist/eisvogel.latex" --lua-filter alerts.lua
