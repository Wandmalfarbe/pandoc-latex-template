---
title: "Landscape with pandoc-latex-environment and pdflscape"
author: [Pascal Wagler]
date: "2025-11-29"
subject: "Markdown"
keywords: [Markdown, Example]
lang: "en"
colorlinks: true
header-includes:
- |
  ```{=latex}
  \usepackage{pdflscape}
  ```
pandoc-latex-environment:
  landscape: [landscape]
...

# Landscape with `pandoc-latex-environment` and `pdflscape`

This example illustrates how the [`pandoc-latex-environments`] filter can be used to generate a `landscape` environment (from the [`pdflscape`] package) for presenting a whole page in landscape format while the rest of the document will be in portrait format.

```markdown
::: landscape
This page will be in landscape format. It is usually used for large images or tables.

![Nam liber tempor cum soluta nobis mazim placerat facer.](image.png)
:::
```

::: landscape
This page will be in landscape format. It is usually used for large images or tables.

![Nam liber tempor cum soluta nobis mazim placerat facer.](image.png)
:::

[`pandoc-latex-environments`]: https://github.com/chdemko/pandoc-latex-environment/
[`pdflscape`]: https://ctan.org/pkg/lscape
