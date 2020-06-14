---
title: "Boxes with pandoc-latex-environment and tcolorbox"
author: [Author]
date: "2020-01-01"
subject: "Markdown"
keywords: [Markdown, Example]
lang: "en"
colorlinks: true
header-includes:
- |
  ```{=latex}
  \usepackage{tcolorbox}

  \newtcolorbox{info-box}{colback=cyan!5!white,arc=0pt,outer arc=0pt,colframe=cyan!60!black}
  \newtcolorbox{warning-box}{colback=orange!5!white,arc=0pt,outer arc=0pt,colframe=orange!80!black}
  \newtcolorbox{error-box}{colback=red!5!white,arc=0pt,outer arc=0pt,colframe=red!75!black}
  ```
pandoc-latex-environment:
  tcolorbox: [box]
  info-box: [info]
  warning-box: [warning]
  error-box: [error]
...

# Boxes with `pandoc-latex-environment` and `tcolorbox`

This example demonstrates the use of the filter [`pandoc-latex-environments`]
to create custom boxes with the [`tcolorbox`] package.
*pandoc-latex-environment* is a pandoc filter for adding LaTeX environement on
specific HTML div tags. For a list of all available options visit the
[`tcolorbox` documentation](https://ctan.org/pkg/tcolorbox).

## Simple Box

::: box
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam aliquet libero
quis lectus elementum fermentum.
:::

## Markdown inside the Box

Markdown formatting inside the environment is supported.

::: box
Lorem ipsum **dolor** sit amet, `consectetur adipiscing` elit.

```
if(args.length < 2) {
	System.out.println("Lorem ipsum dolor sit amet");
}
```

*Nam aliquet libero
quis lectus elementum fermentum.*
:::

## Custom Box

One can define custom boxes in the LaTeX preamble with the variable
`header-includes` at the top of this document.

::: info
**Info**: This is a custom box that may be used to show info messages in your
document.
:::

::: warning
**Warning**: This is a custom box that may be used to show warning messages in
your document.
:::

::: error
**Error**: This is a custom box that may be used to show error messages in your
document.
:::

[`pandoc-latex-environments`]: https://github.com/chdemko/pandoc-latex-environment/
[`tcolorbox`]: https://ctan.org/pkg/tcolorbox