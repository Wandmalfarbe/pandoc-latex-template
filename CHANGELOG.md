# Changelog

All notable changes to this project are documented in this file. On the [releases page](https://github.com/Wandmalfarbe/pandoc-latex-template/releases/) you can see all released versions of the Eisvogel template and download the [latest version](https://github.com/Wandmalfarbe/pandoc-latex-template/releases/latest).

## [3.3.0] - 2025-11-22

- feat: merge changes from the pandoc default LaTeX template from version 3.8.2.1 ([8baa07f](https://github.com/jgm/pandoc-templates/commit/8baa07f0ebb69cd2df10302e4f1f056a828ecb59)).
    - This resolves an incompatibility between Eisvogel and pandoc >= 3.8.2.1 because of the introduction of `\newcounter{none}` in [jgm/pandoc#11201](https://github.com/jgm/pandoc/issues/11201)

## [3.2.1] - 2025-09-20

- docs: add three examples for changing the document font
  - `font-emoji-noto-color-emoji`: renders emojis with *Noto Color Emoji*
  - `font-emoji-openmoji`: renders emojis with *OpenMoji*
  - `font-unicode-font-fallback`: renders missing glyphs with various *Noto* fonts
- ci: install *luatex* for rendering examples with `--pdf-engine lualatex`
- ci: allow (optional) example document creation with Java
- fix: apply consistent heading colors. Previously, only the first-level heading color (`\section`) was changed to `#282828` (RGB `40, 40, 40`). Now all the headings (`\chapter`, `\part`, `\subsubsection`, etc.) are changed, even when using `book: true`.

## [3.2.0] - 2025-04-26

- feat: merge changes from the pandoc default LaTeX template from version 3.6.4 ([f365e85](https://github.com/jgm/pandoc-templates/commit/f365e85b94e4d2b2e901900ff1ad48d3c514a327)).
- feat: Allow watermarking the pages with a specific text (#397, danielleberre)
- docs: fix `hyph-utf8` link README.md (#423, danielburgmann)

## [3.1.0] - 2025-01-18

- feat: Merge changes from the pandoc default LaTeX template from version 3.6 ([f1c01b0](https://github.com/jgm/pandoc-templates/commit/f1c01b0ee3562f54bfe7730939e7ec0a48769953)).
- feat: Merge changes from the pandoc default LaTeX template from version 3.6.1 ([b033aa1](https://github.com/jgm/pandoc-templates/commit/b033aa1ff304a87b15866517938fc87a20077a16)).
- docs: add example `twoside` for a two-sided document (#412)
- docs: add example `columns` for a two column document (#411)
- docs: remove unneeded package `ulem` from the section *Required LaTeX Packages* in the README and from ci
- docs: fix typos and convert links to HTTPS (#400, deining)
- chore: update copyright year in LICENSE
- ci: bump GitHub action workflows to avoid deprecation warnings (#401, deining)
- fix: correct link to commit 2a6268d in CHANGELOG.md

## [3.0.0] - 2025-01-11

**This release contains breaking changes.**

- Merge changes from the pandoc default LaTeX template from version 3.5 ([1cbd2d1](https://github.com/jgm/pandoc-templates/commit/1cbd2d185efa262c35bd0c0c37f9692905231bf9)).

  Since commit [2a6268d](https://github.com/jgm/pandoc/commit/2a6268de67b883cd814358111d764d330f100d9b) the default pandoc template has been split into
  multiple files (partials). The default LaTeX template has also been split into `default.latex` and `default.beamer`.
  
  For easy integration of upstream changes, the Eisvogel template has also been split and resides in the
  folder `template-multi-file`
  
  - `template-multi-file/eisvogel.latex` corresponds to `default.latex`
  - `template-multi-file/eisvogel.beamer` corresponds to `default.beamer`
  
  Upon release of the Eisvogel template, standalone (one-file) versions are created for LaTeX and Beamer. Refer to the readme section [Eisvogel versions](https://github.com/Wandmalfarbe/pandoc-latex-template?tab=readme-ov-file#eisvogel-versions) for more information.

- The released compressed archives (`.zip` and `.tar.gz`) always contain a root folder that is named after the template
  and the version number e.g. `Eisvogel-3.0.0`.

- The single file version of the template (`eisvogel.tex`) is no longer part of this repository

## [2.5.0] - 2024-10-03

- Merge changes from the pandoc default LaTeX template from version 3.4 ([7e8aafa](https://github.com/jgm/pandoc-templates/commit/7e8aafa049700a849b41c53cf1afeb17324040c7)).

## [2.4.2] - 2023-11-25

- Merge changes from the pandoc default LaTeX template from version 3.1.9 ([f7d8b62](https://github.com/jgm/pandoc-templates/commit/f7d8b629330074a4400d1f2795b101d14491c968)).
- Merge changes from the pandoc default LaTeX template from version 3.1.8 ([2d42e04](https://github.com/jgm/pandoc-templates/commit/2d42e04cbd65dd36c4469156b00f636e7f31623e)) (#364, David Mehren).
- Add fix for `table-use-row-colors` which previously stopped working (#301, Chris Fenner).

## [2.4.1] - 2023-09-06

- Merge changes from the pandoc default LaTeX template from version 3.1.7 (as of 2023-08-31, [8a5b381](https://github.com/jgm/pandoc-templates/blob/8a5b381c156c974b485197208c6dc86fce94b5c3/default.latex)).

## [2.4.0] - 2023-04-17

- Merge changes from the pandoc default LaTeX template (as of 2023-03-29, [a5159c2](https://github.com/jgm/pandoc/blob/a5159c2c505cd9a87856877b3287aa0b88e4e0ba/data/templates/default.latex)).
- Fix placement of float figures (tables, images, etc.). Float figures should now appear
  exactly where they are included. The option `float-placement-figure` is also restored.
- Remove Travis CI build
- Fix wrong font sizes on the title page. The problem went away on its own, likely because
  of an updated LaTeX package.

## [2.3.0] - 2023-03-13

The Eisvogel template is now available in the Docker image [pandoc/extra](https://hub.docker.com/r/pandoc/extra)!
For more Information refer to the [documentation in the Readme](https://github.com/Wandmalfarbe/pandoc-latex-template#docker-image) or
the [documentation on docker hub](https://hub.docker.com/r/pandoc/extra).

- Merge changes from the pandoc default LaTeX template (as of 2023-03-10, [9b04036](https://github.com/jgm/pandoc/blob/9b04036f6b0745c6ce0cb027683e94b648da3a9c/data/templates/default.latex)).
  - Add `CJKsansfont` and `CJKmonofont` for XeLaTeX. `CJKsansfont` and `CJKmonofont` will be set
    for XeLaTeX only if `CJKmainfont` is also provided (#328, Yudong Jin).
- Add documentation in the README on how to use the `pandoc/extra` docker image (#319, damien clochard).
- Fix wrong literate of characters `è` and `È` in listings. The character `è` was wrongly
  converted to `é` and `È` to `É` (#324, damien clochard).

## [2.2.0] - 2023-01-22

- Merge changes from the pandoc default LaTeX template (as of 2023-01-13, [909ced5](https://github.com/jgm/pandoc/blob/909ced5153e2c7cefd5018c39f83231824940fb8/data/templates/default.latex)).
  - This change adds support for pandoc 3.

## [2.1.0] - 2022-12-04

- Merge changes from the pandoc default LaTeX template (as of 2022-11-19, [144bf90ab9](https://github.com/jgm/pandoc/blob/144bf90ab92b517dd721baf80f121f86187ccd61/data/templates/default.latex)).
- Restructure the examples. Any example folder now contains at least the following files:
  - `document.md`: the Markdown document to convert to a PDF
  - `document.pdf`: the resulting PDF document
  - `build.sh`: a shell script to convert the document `document.md` with pandoc. This script might call pandoc with additional arguments (e.g. filters or template variables).
  - `preview.png`: a PNG image of the resulting PDF document intended as a quick preview
- Use the Koma-Script package `scrlayer-scrpage` for the headers and footers instead of the package `fancyhdr` (#174, khaveesh).
  - Fix a header and footer bug when using `oneside` introduced by the migration to `scrlayer-scrpage` (#248, ret2src).
  - Restore pagestyle `plain` for chapters (#275). Headers and footers are removed from chapter pages, as it has been before the migration to `scrlayer-scrpage`.
- Correct the examples and documentation (#239, mprobson), (#261, supcik).
- Exclude title page from page count (#230, shmalebx9).
- Make code-block-font-size not affect inline listings (#229, LudvigHz).
- Rename the Eisvogel template variable `logo` to `titlepage-logo`.
  - `logo` is already used by beamer, and one might want to use both
  formats (beamer and latex) without the logo appearing as a
  background image on beamer slides.
- Add an example for a table of contents (#283).

## [2.0.0] - 2021-01-31

**This release contains breaking changes.**

- Merged changes from the pandoc default LaTeX template.
- Fix broken travis build by modifying the `--resource-path`

    When specifying the resource path via `--resource-path` the template will be searched there since pandoc 2.9.2.1.
    To fix the broken travis build (`Could not find data file templates/eisvogel.latex`) the current working directory `.` is included in the resource path for pandoc to find the template again.

    For more information visit the pandoc issue <https://github.com/jgm/pandoc/issues/6618>.
- Rename template to `eisvogel.latex` after release (#182). There is no need for renaming the template file after the download.

    This is a breaking change because there will be no file `eisvogel.latex` in the released artifacts anymore.

- Option `logo-width` has no hard coded unit `pt` anymore (#221).

    The width of the logo can be specified with various units e.g. `pt`, `in`, `mm`.

    This is a breaking change because a previously specified `logo-width` without a unit needs a unit now. If there is no unit LaTeX will emit an error `Illegal unit of measure (pt inserted)` and no document will be created.

    The default value for `logo-width` has also changed from `100pt` to `35mm`.

## [1.6.1] - 2020-11-26

- Merged changes from the pandoc default LaTeX template (https://github.com/jgm/pandoc/blob/master/data/templates/default.latex).
    - This merge should fix a compilation error when using tables because of the missing `calc` package.

## [1.6.0] - 2020-11-02

- Merged changes from the pandoc default LaTeX template (https://github.com/jgm/pandoc/blob/master/data/templates/default.latex).
    - This merge should fix problems related to using CSL bibliographies (#201).
- Added documentation about common errors to the readme.
- The command `\thedate` can be used in the source document or metadata fields (#163).

## [1.5.0] - 2020-06-14

- Create release assets with and without version number for easy access (#175).
- Added example `boxes-with-pandoc-latex-environment-and-tcolorbox` This example shows how to render beautiful boxes with the filter `pandoc-latex-environment` and the package `tcolorbox`.
- Fix LaTeX installation problems on Travis by installing everything manually.
- Fixed a couple of LuaLaTeX warnings (#169, khaveesh)
- Mention required LaTeX package for option `footnotes-disable-backlinks` in the Readme (#148, salim-b).
- Remove `graphicx` dependency (#149, noraj). Please see https://github.com/jgm/pandoc/issues/5848 for the full discussion.

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

[3.3.0]: https://github.com/Wandmalfarbe/pandoc-latex-template/compare/v3.2.1...v3.3.0
[3.2.1]: https://github.com/Wandmalfarbe/pandoc-latex-template/compare/v3.2.0...v3.2.1
[3.2.0]: https://github.com/Wandmalfarbe/pandoc-latex-template/compare/v3.1.0...v3.2.0
[3.1.0]: https://github.com/Wandmalfarbe/pandoc-latex-template/compare/v3.0.0...v3.1.0
[3.0.0]: https://github.com/Wandmalfarbe/pandoc-latex-template/compare/v2.5.0...v3.0.0
[2.5.0]: https://github.com/Wandmalfarbe/pandoc-latex-template/compare/v2.4.2...v2.5.0
[2.4.2]: https://github.com/Wandmalfarbe/pandoc-latex-template/compare/v2.4.1...v2.4.2
[2.4.1]: https://github.com/Wandmalfarbe/pandoc-latex-template/compare/v2.4.0...v2.4.1
[2.4.0]: https://github.com/Wandmalfarbe/pandoc-latex-template/compare/v2.3.0...v2.4.0
[2.3.0]: https://github.com/Wandmalfarbe/pandoc-latex-template/compare/v2.2.0...v2.3.0
[2.2.0]: https://github.com/Wandmalfarbe/pandoc-latex-template/compare/v2.1.0...v2.2.0
[2.1.0]: https://github.com/Wandmalfarbe/pandoc-latex-template/compare/v2.0.0...v2.1.0
[2.0.0]: https://github.com/Wandmalfarbe/pandoc-latex-template/compare/v1.6.1...v2.0.0
[1.6.1]: https://github.com/Wandmalfarbe/pandoc-latex-template/compare/v1.6.0...v1.6.1
[1.6.0]: https://github.com/Wandmalfarbe/pandoc-latex-template/compare/v1.5.0...v1.6.0
[1.5.0]: https://github.com/Wandmalfarbe/pandoc-latex-template/compare/v1.4.0...v1.5.0
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
