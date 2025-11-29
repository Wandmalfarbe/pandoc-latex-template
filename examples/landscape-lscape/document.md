---
title: "Landscape with pandoc-latex-environment and lscape"
author: [Pascal Wagler]
date: "2025-11-29"
subject: "Markdown"
keywords: [Markdown, Example]
lang: "en"
colorlinks: true
header-includes:
- |
  ```{=latex}
  \usepackage{lscape}
  ```
pandoc-latex-environment:
  landscape: [landscape]
...

# Landscape with `pandoc-latex-environment` and `lscape`

This example illustrates how the [`pandoc-latex-environments`] filter can be used to generate a `landscape` environment (from the [`lscape`] package) for presenting page content in landscape format.

```markdown
::: landscape
This content will be in landscape format. It is usually used for large images or tables.

![Nam liber tempor cum soluta nobis mazim placerat facer.](image.png)
:::
```

::: landscape
This content will be in landscape format. It is usually used for large images or tables.

![Nam liber tempor cum soluta nobis mazim placerat facer.](image.png)
:::

[`pandoc-latex-environments`]: https://github.com/chdemko/pandoc-latex-environment/
[`lscape`]: https://ctan.org/pkg/lscape
