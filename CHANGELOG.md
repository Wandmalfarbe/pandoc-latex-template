# Changelog

All notable changes to this project are documented in this file. On the [releases page](https://github.com/Wandmalfarbe/pandoc-latex-template/releases/) you can see all released versions of the Eisvogel template and download the latest version.

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

[1.2.2]: https://github.com/Wandmalfarbe/pandoc-latex-template/compare/v1.2.1...v1.2.2
[1.2.1]: https://github.com/Wandmalfarbe/pandoc-latex-template/compare/v1.2.0...v1.2.1
[1.2.0]: https://github.com/Wandmalfarbe/pandoc-latex-template/compare/1.1.0...v1.2.0
[1.1.0]: https://github.com/Wandmalfarbe/pandoc-latex-template/compare/v1.0.0...1.1.0
[1.0.0]: https://github.com/Wandmalfarbe/pandoc-latex-template/releases/tag/v1.0.0