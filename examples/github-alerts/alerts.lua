-- Inject LaTeX preamble content
function Meta(meta)
  local latex_preamble = [[
\usepackage{tcolorbox}

\definecolor{note-border}{HTML}{0969da}
\definecolor{tip-border}{HTML}{1a7f37}
\definecolor{important-border}{HTML}{8250df}
\definecolor{warning-border}{HTML}{9a6700}
\definecolor{caution-border}{HTML}{cf222e}

\newtcolorbox{note-box}{colback=note-border!4!white,arc=0pt,outer arc=0pt,colframe=note-border,fonttitle=\bfseries,coltitle=note-border,attach title to upper,adjusted title={Note}}
\newtcolorbox{tip-box}{colback=tip-border!4!white,arc=0pt,outer arc=0pt,colframe=tip-border,fonttitle=\bfseries,coltitle=tip-border,attach title to upper,adjusted title={Tip}}
\newtcolorbox{important-box}{colback=important-border!4!white,arc=0pt,outer arc=0pt,colframe=important-border,fonttitle=\bfseries,coltitle=important-border,attach title to upper,adjusted title={Important}}
\newtcolorbox{warning-box}{colback=warning-border!4!white,arc=0pt,outer arc=0pt,colframe=warning-border,fonttitle=\bfseries,coltitle=warning-border,attach title to upper,adjusted title={Warning}}
\newtcolorbox{caution-box}{colback=caution-border!4!white,arc=0pt,outer arc=0pt,colframe=caution-border,fonttitle=\bfseries,coltitle=caution-border,attach title to upper,adjusted title={Caution}}
]]

  local raw = pandoc.RawBlock("latex", latex_preamble)

  -- Ensure header-includes exists and is a list
  if meta["header-includes"] == nil then
    meta["header-includes"] = pandoc.MetaList({ raw })
  else
    table.insert(meta["header-includes"], raw)
  end

  return meta
end


-- Handle admonition Divs
function Div(div)
  local kind = nil
  for _, cls in ipairs(div.classes or {}) do
    if cls == "note"
       or cls == "tip"
       or cls == "important"
       or cls == "warning"
       or cls == "caution" then
      kind = cls
      break
    end
  end

  if not kind then
    return nil
  end

  local title_inlines = nil
  local body_blocks = {}

  for _, block in ipairs(div.content) do
    if block.t == "Div"
       and block.classes
       and block.classes[1] == "title"
       and block.content[1]
       and block.content[1].t == "Para" then
      title_inlines = block.content[1].content
    elseif block.t ~= "Div" then
      table.insert(body_blocks, block)
    end
  end

  if not title_inlines or #body_blocks == 0 then
    return nil
  end

  local title_text = pandoc.utils.stringify(title_inlines)
  local env_name = string.lower(title_text) .. "-box"

  local result = {}

  table.insert(result,
    pandoc.RawBlock("latex", "\\begin{" .. env_name .. "}")
  )

  for _, blk in ipairs(body_blocks) do
    table.insert(result, blk)
  end

  table.insert(result,
    pandoc.RawBlock("latex", "\\end{" .. env_name .. "}")
  )

  return result
end
