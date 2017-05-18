# Eisvogel

[![Build Status](https://travis-ci.org/Wandmalfarbe/pandoc-latex-template.svg?branch=master)](https://travis-ci.org/Wandmalfarbe/pandoc-latex-template)
[![Download the preview PDF](https://img.shields.io/badge/download-example_PDF-green.svg)](example/example.pdf)

A clean **pandoc LaTeX template** to convert your markdown files to PDF or LaTeX. It is designed for lecture notes and exercises with a focus on computer science.

## Preview

[![A preview of a PDF rendered with the Eisvogel template.](examples/basic-example/basic-example.png)](examples/basic-example/basic-example.pdf)

## Installation

1. Install pandoc from <http://pandoc.org/>. You also need to install [LaTeX](https://en.wikibooks.org/wiki/LaTeX/Installation#Distributions).
2. Move the template `eisvogel.latex` to your pandoc templates folder. The location of the templates folder depends on your operating system:
	- Unix, Linux, macOS: `~/.pandoc/templates/`
	- Windows XP: `C:\Documents And Settings\USERNAME\Application Data\pandoc`
	- Windows Vista or later: `C:\Users\USERNAME\AppData\Roaming\pandoc`
	
	If there are no folders called `templates` or `pandoc` you need to create them and put the template `eisvogel.latex` inside.

## Usage

1. Open the terminal and navigate to the folder where your markdown file is located.
2. Execute the following command
    
    ```bash
    pandoc example.md -o example.pdf --from markdown --template eisvogel --listings
    ```
    
    where `example.md` is the markdown file you want to convert to PDF.

In order to have nice headers and footers you need to supply metadata to your document. You can do that with a [YAML metadata block](http://pandoc.org/MANUAL.html#extension-yaml_metadata_block) at the top of your markdown document (see the [example markdown file](examples/basic-example/basic-example.md)). Your markdown document may look like the following:

```markdown
---
title: "The Document Title"
author: [Example Author, Another Author]
date: 2017-02-20
tags: [Markdown, Example]
...

Here is the actual document text...
```

## Examples

### Numbered Sections

For PDFs with [numbered sections](http://pandoc.org/MANUAL.html#options-affecting-specific-writers) use the `--number-sections` or `-N` option.
	
```bash
pandoc example.md -o example.pdf --template eisvogel --number-sections
```

### Syntax Highlighting with Listings

You can get syntax highlighting of delimited code blocks by using the LaTeX package listings with the option `--listings`. This example will produce the same syntax highlighting as in the example PDF.
	
```bash
pandoc example.md -o example.pdf --template eisvogel --listings
```
### Syntax Highlighting Without Listings

The following examples show [syntax highlighting of delimited code blocks](http://pandoc.org/MANUAL.html#syntax-highlighting) without using listings. To see a list of all the supported highlight styles, type `pandoc --list-highlight-styles`.
	
```bash
pandoc example.md -o example.pdf --template eisvogel --highlight-style pygments
```

```bash
pandoc example.md -o example.pdf --template eisvogel --highlight-style kate
```

```bash
pandoc example.md -o example.pdf --template eisvogel --highlight-style espresso
```

```bash
pandoc example.md -o example.pdf --template eisvogel --highlight-style tango
```

### Standalone LaTeX Document

To produce a standalone LaTeX document for compiling with any LaTeX editor use `.tex` as an output file extension.
	
```bash
pandoc example.md -o example.tex --template eisvogel
```

### Changing the Document Language

The default language of this template is German. The `lang` variable identifies the main language of the document, using a code according to [BCP 47](https://tools.ietf.org/html/bcp47) (e.g. `en` or `en-GB`). For an incomplete list of the supported language code see [the documentation for the hyph-utf8 package (Section 2)](http://tug.ctan.org/language/hyph-utf8/doc/generic/hyph-utf8/hyphenation.pdf). The following example changes the language to British English:
	
```bash
pandoc example.md -o example.pdf --template eisvogel -V lang=en-GB
```
	
The following example changes the language to American English:
	
```bash
pandoc example.md -o example.pdf --template eisvogel -V lang=en-US
```