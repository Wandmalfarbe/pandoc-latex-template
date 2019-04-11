<img src="icon.png" align="right" height="110"/>

# Eisvogel

[![Build Status](https://travis-ci.org/Wandmalfarbe/pandoc-latex-template.svg?branch=master)](https://travis-ci.org/Wandmalfarbe/pandoc-latex-template)

A clean **pandoc LaTeX template** to convert your markdown files to PDF or LaTeX. It is designed for lecture notes and exercises with a focus on computer science. The template is compatible with pandoc 2.

## Preview

A custom title page      |  A basic example page
:-------------------------:|:-------------------------:
[![A custom title page](examples/custom-titlepage/custom-titlepage.png)](examples/custom-titlepage/custom-titlepage.pdf)  |  [![A basic example page](examples/basic-example/basic-example.png)](examples/basic-example/basic-example.pdf)

## Installation

1. Install pandoc from <http://pandoc.org/>. You also need to install [LaTeX](https://en.wikibooks.org/wiki/LaTeX/Installation#Distributions).
2. Download the latest version of the Eisvogel template from [the release page](https://github.com/Wandmalfarbe/pandoc-latex-template/releases/latest).
3. Extract the downloaded ZIP archive and open the folder.
4. Move the template `eisvogel.tex` to your pandoc templates folder and rename the file to `eisvogel.latex`. The location of the templates folder depends on your operating system:
	- Unix, Linux, macOS: `$XDG_DATA_HOME/pandoc/templates` or `~/.pandoc/templates/`
	- Windows XP: `C:\Documents And Settings\USERNAME\Application Data\pandoc\templates`
	- Windows Vista or later: `C:\Users\USERNAME\AppData\Roaming\pandoc\templates`
	
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
date: "2017-02-20"
keywords: [Markdown, Example]
...

Here is the actual document text...
```

### Custom Template Variables

This template defines some new variables to control the appearance of the resulting PDF document. The existing template variables from pandoc are all supported and their documentation can be found in [the pandoc manual](https://pandoc.org/MANUAL.html#variables-for-latex).

- `titlepage` (defaults to `false`)
    
    turns on the title page when `true`
- `titlepage-color`
    
    the background color of the title page. The color value must be given as an HTML hex color like `D8DE2C` without the leading number sign (`#`). When specifying the color in YAML, it is advisable to enclose it in quotes like so `titlepage-color: "D8DE2C"` to avoid the truncation of the color (e.g. `000000` becoming `0`).
- `titlepage-text-color` (defaults to `5F5F5F`)
    
    the text color of the title page
- `titlepage-rule-color` (defaults to `435488`)
    
    the color of the rule on the top of the title page
- `titlepage-rule-height` (defaults to `4`)
    
    the height of the rule on the top of the title page (in points)
- `caption-justification` (defaults to `raggedright`)
    
    justification setting for captions (uses the `justification` parameter of the [caption](https://ctan.org/pkg/caption?lang=en) package)
- `toc-own-page` (defaults to `false`)

    begin new page after table of contents, when `true`
- `listings-disable-line-numbers` (defaults to `false`)
    
    disables line numbers for all listings
- `listings-no-page-break` (defaults to `false`)
    
    avoid page break inside listings
- `disable-header-and-footer` (default to `false`)
	
	disables the header and footer completely on all pages
- `header-left` (defaults to the title)
	
	the text on the left side of the header
- `header-center`
	
	the text in the center of the header
- `header-right` (defaults to the date)
	
	the text on the right side of the header
- `footer-left` (defaults to the author)
	
	the text on the left side of the footer
- `footer-center`
	
	the text in the center of the footer
- `footer-right` (defaults to the page number)
	
	the text on the right side of the footer
- `book` (defaults to `false`)

	typeset as book
- `logo`
	
	path to an image that will be displayed on the title page. The path is always relative to where pandoc is executed. The option `--resource-path` has no effect.
- `logo-width` (defaults to `100`)
	
	the width of the logo (in points)

- `first-chapter` (defaults to `1`)
	
	if typesetting a book with chapter numbers, specifies the number that will be assigned to the first chapter

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

The default language of this template is American English. The `lang` variable identifies the main language of the document, using a code according to [BCP 47](https://tools.ietf.org/html/bcp47) (e.g. `en` or `en-GB`). For an incomplete list of the supported language codes see [the documentation for the hyph-utf8 package (Section 2)](http://mirrors.ctan.org/language/hyph-utf8/doc/generic/hyph-utf8/hyph-utf8.pdf). The following example changes the language to British English:
	
```bash
pandoc example.md -o example.pdf --template eisvogel -V lang=en-GB
```
	
The following example changes the language to German:
	
```bash
pandoc example.md -o example.pdf --template eisvogel -V lang=de
```

### Typesetting a Book

To typeset a book supply the template variable `-V book` from the command line or via `book: true` in the metadata.

To get the correct chapter headings you need to tell pandoc that it should convert first level headings (indicated by one `#` in markdown) to chapters with the command line option `--top-level-division=chapter`. Chapter numbers start at 1. If you need to change that, specify `first-chapter` in the template variables.

There will be one blank page before each chapter because the template is two-sided per default. So if you plan to publish your book as a PDF and don't need a blank page you should add the class option `onesided` which can be done by supplying a template variable `-V classoption=oneside`.

### Example Images

A green title page      |  Code blocks styled with listings
:-------------------------:|:-------------------------:
[![A green title page](examples/green-titlepage/green-titlepage.png)](examples/green-titlepage/green-titlepage.pdf)  |  [![Code blocks styled with listings](examples/listings/listings.png)](examples/listings/listings.pdf)

images and tables      |  Code blocks styled without listings
:-------------------------:|:-------------------------:
[![images and tables](examples/images-and-tables/images-and-tables.png)](examples/images-and-tables/images-and-tables.pdf)  |  [![Code blocks styled without listings](examples/without-listings/without-listings.png)](examples/without-listings/without-listings.pdf)

## Credits

- This template includes code for styling block quotations from [pandoc-letter](https://github.com/aaronwolen/pandoc-letter) by [Aaron Wolen](https://github.com/aaronwolen).

## License

This project is open source licensed under the BSD 3-Clause License. Please see the [LICENSE file](LICENSE) for more information.
