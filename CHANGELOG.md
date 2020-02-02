# Changelog

All notable changes to this project are documented in this file. On the [releases page](https://github.com/Wandmalfarbe/pandoc-latex-template/releases/) you can see all released versions of the Eisvogel template and download the [latest version](https://github.com/Wandmalfarbe/pandoc-latex-template/releases/latest).

## [1.4.0] - 2020-02-02

- Added support for a page background (#138, evildead).
    - The variable `page-background` specifies the path to a background image for any page. The background image is scaled to cover the entire page.
    - The variable `page-background-opacity` specifies the background image opacity.
- Added an example on how to generate admonition boxes (#115). The example demonstrates the use of the filter `pandoc-latex-environments` to create custom admonition boxes with the `awesomebox` package.
- Added an example on how to compile Chinese documents (#140).
- Added a section on *required LaTeX packages* to the readme (#141). The section explains how to install the required packages with TeX Live and MiKtEX.
- Corrected the command `tlmgr` in `README.md` (#143).

## [1.3.1] - 2019-12-08

- Fixed wrong margins when not using the titlepage option (#135).

## [1.3.0] - 2019-10-26

- Clarified the location of the pandoc templates directory in the readme.
- Added missing `$endif$` that caused a compilation failure (#125, 0az).
- Merged changes from the pandoc default LaTeX template.
- Fixed a bug where specifying a font via `mainfont` when using pdfLaTeX would not apply the default font Source Sans Pro.
- Improve formatting of footnotes with the variables `footnotes-pretty` and `footnotes-disable-backlinks` (#107, salim-b).
- Added the variable `code-block-font-size` to change the font size for code blocks via the supplied LaTeX command (#123, #17).
- Improve Japanese dummy text (#86, JKPOKE)
- Added an example on how to change header and footer (#109).
- Added example backgrounds to the titlepage example.
- Added support for background images on the title page with the variable `titlepage-background` (#31, #41).
- Disabled striped tables per default. Enable them with the variable `table-use-row-colors: true` (#29).
- Updated listings definition for Java which is the default language when using listings. This means that more keywords such as `var` from Java 10 are highlighted.
- Added support for additional keyword colors when using `listings` for syntax highlighting. The support depends on the used language. Some languages like `motorola68k`, `x86masm`, `inform`, `llvm`, `lua`, `metapost`, `mupad`, `ocl`, `python`, `verrilog`, `basic`, `cil`, `fortran` and `hansl` will have additional colors for some keywords.
- Fixed: Long lines in code blocks (verbatim environment) wrap automatically (#2).

## [1.2.4] - 2019-06-16

- Fixed: The template now compiles with the output format `beamer` (#99). The styling for the generated slides is currently not customized.

## [1.2.3] - 2019-06-12

- Fixed: Code blocks were too close to the text above.
- Fixed: The default float placement of figures can be changed with the variable `float-placement-figure`.
- Changed: Merged changes from the pandoc default LaTeX template.
- Added: A changelog is available as `CHANGELOG.md`.
- Changed: Updated installation instructions in the README with new XDG support (#89, Andrew Zhou).

## [1.2.2] - 2019-04-09

- Merged changes from the pandoc default LaTeX template.
- Fixed: Support custom values for `secnumdepth` and `toc-depth` (#87, Juan Grigera).

## [1.2.1] - 2019-03-10

- Removed double inclusion of package `xcolor` and cleaned up some comments.
- Removed unused `\captionsetup[longtable]`.
- Moved listing colors to the listings block in the template.
- Changed the top and bottom spacing of listings.
- Merged changes from the pandoc default LaTeX template.
- Changed the release script to also create a `tar.gz` archive.

## [1.2.0] - 2019-03-03

- Fixed curly quotes in code listings under XeTeX engine (#79, Andrew Hodgkinson).
- Merged changes from the pandoc default LaTeX template `default.latex`.
- Updated the installation instructions in the README and moved the release script to the `tools` folder.

## [1.1.0] - 2019-02-17

- Defined a default pagestyle to make it easier to change the pagestyle on certain pages or define a custom one (#77).
- Add support for `first-chapter` variable in case it's desirable for a book not to begin with chapter 1 (#74, umanovskis).

## [1.0.0] - 2018-12-07

- First release of the template as a ZIP file with the examples.

[1.4.0]: https://github.com/Wandmalfarbe/pandoc-latex-template/compare/v1.3.1...v1.4.0
[1.3.1]: https://github.com/Wandmalfarbe/pandoc-latex-template/compare/v1.3.0...v1.3.1
[1.3.0]: https://github.com/Wandmalfarbe/pandoc-latex-template/compare/v1.2.4...v1.3.0
[1.2.4]: https://github.com/Wandmalfarbe/pandoc-latex-template/compare/v1.2.3...v1.2.4
[1.2.3]: https://github.com/Wandmalfarbe/pandoc-latex-template/compare/v1.2.2...v1.2.3
[1.2.2]: https://github.com/Wandmalfarbe/pandoc-latex-template/compare/v1.2.1...v1.2.2
[1.2.1]: https://github.com/Wandmalfarbe/pandoc-latex-template/compare/v1.2.0...v1.2.1
[1.2.0]: https://github.com/Wandmalfarbe/pandoc-latex-template/compare/1.1.0...v1.2.0
[1.1.0]: https://github.com/Wandmalfarbe/pandoc-latex-template/compare/v1.0.0...1.1.0
[1.0.0]: https://github.com/Wandmalfarbe/pandoc-latex-template/releases/tag/v1.0.0