pandoc "document.md" -o "document.pdf" --verbose --from gfm+alerts+yaml_metadata_block --template "../../dist/eisvogel.latex" --lua-filter alerts.lua
