---
title: "Beamer: Theme Eisvogel"
author: [Pascal Wagler]
date: "2025-05-31"
subject: "Markdown"
keywords: [Markdown, Example, Beamer, Theme]
lang: "en"
toc: true
toc-title: "Table of Contents"
titlegraphic: "logo.pdf"
titlegraphicoptions: "width=1.5cm"
header-includes: |
    ```{=latex}
    % remove the continuation count for single frames
    \setbeamertemplate{frametitle continuation}[from second]
    ```
...

# Text

## Typography

- Regular
- *Italic*
- **Bold**
- _**Bold Italic**_
- `Monospace`
- *`Monospace Italic`*
- **`Monospace Bold`**
- _**`Monospace Bold Italic`**_
- [Small Caps]{.smallcaps}

## Lists (ordered)

1. De neque iura aquis
    1. Tamen condeturque saxa Pallorque num et ferarum promittis inveni lilia iuvencae adessent arbor
    2. Florente perque at condeturque saxa et ferarum promittis tendebat
        1. Armos nisi obortas refugit me
        2. Promittis inveni lilia iuvencae adessent
2. Frangitur gaudia mihi eo umor terrae quos
3. Recens diffudit ille tantum

## Lists (unordered)

- De neque iura aquis
    - Tamen condeturque saxa Pallorque num et ferarum promittis inveni lilia iuvencae adessent arbor
    - Florente perque at condeturque saxa et ferarum promittis tendebat
        - Armos nisi obortas refugit me
        - Promittis inveni lilia iuvencae adessent
- Frangitur gaudia mihi eo umor terrae quos
- Recens diffudit ille tantum

# Blocks

## Blocks (with heading syntax)

### Block

Diva virtus acrota destruitis vos iubet quo et classis excessere Scyrumve
spiro subitusque mente Pirithoi abstulit, lapides.

### Alert {.alert}

Diva virtus acrota destruitis vos iubet quo et classis excessere Scyrumve
spiro subitusque mente Pirithoi abstulit, lapides.

### Example {.example}

Diva virtus acrota destruitis vos iubet quo et classis excessere Scyrumve
spiro subitusque mente Pirithoi abstulit, lapides.

## Blocks (with fenced div Syntax)

::: {.block}
### Block

Diva virtus acrota destruitis vos iubet quo et classis excessere Scyrumve
spiro subitusque mente Pirithoi abstulit, lapides.
:::

::: {.alert}
### Alert

Diva virtus acrota destruitis vos iubet quo et classis excessere Scyrumve
spiro subitusque mente Pirithoi abstulit, lapides.
:::

::: {.example}
### Example

Diva virtus acrota destruitis vos iubet quo et classis excessere Scyrumve
spiro subitusque mente Pirithoi abstulit, lapides.
:::

## Code

```html
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>This is the title of the page.</title>
  </head>
  <body>
    <img src="./image.jpg" alt="This is an image.">
  </body>
</html>
```

## Tables

Table: Truncated Iris flower data set

|Flower         | Sepal Length | Sepal Width | Petal Length | Petal Width |
|---------------|-------------:|------------:|-------------:|------------:|
|Iris-setosa    |          5.1 |         3.5 |          1.4 |         0.2 |
|Iris-setosa    |          4.9 |           3 |          1.4 |         0.2 |
|Iris-versicolor|          4.9 |         2.4 |          3.3 |           1 |
|Iris-versicolor|          6.6 |         2.9 |          4.6 |         1.3 |
|Iris-virginica |          6.3 |         3.3 |            6 |         2.5 |
|Iris-virginica |          5.8 |         2.7 |          5.1 |         1.9 |

## Images

![Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming.](image.png)
