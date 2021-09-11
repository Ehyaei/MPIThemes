
<!-- README.md is generated from README.Rmd. Please edit that file -->

# MPIThemes

<a href={https://github.com/Ehyaei/MPIThemes}><img src="man/figures/logo.png" alt="logo with an image of a MPI Templates" align="right" width="160" style="padding: 0 15px; float: right;"/>

[![R build
status](https://github.com/Ehyaei/MPIThemes/workflows/R-CMD-check/badge.svg)](https://github.com/Ehyaei/MPIThemes/actions)
[![](https://img.shields.io/badge/devel%20version-0.0.0.9000-orange.svg)](https://github.com/Ehyaei/MPIThemes)
[![](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
[![](https://img.shields.io/github/last-commit/Ehyaei/MPIThemes.svg)](https://github.com/Ehyaei/MPIThemes/commits/master)

RMarkdown enables you to write reproducible academic publications such
as articles, PhD thesis, lab reports, posters, presentations, and a
variety of other fascinating documents using the lightweight and
plain-text Markdown syntax.

In the Rmarkdown environment, you can write text, insert images,
formulas, R and recently, Python scripts. When running your Rmd files
with knitr, output plots, tables and code results are embedded in the md
file. Then, Rstudio by using pandoc’s powerful engine can convert your
documents to many formats, such as PDF, Docx, HTML, epub, and… In
particular, you can create PDF reports without worrying about the lateX
code.

<p align="center">

<img src="vignettes/src/img/rmarkdown_overview.png" width="70%"/>

<a href="https://epirhandbook.com/reports-with-r-markdown.html">image
source</a>
</p>

The MPIThemes package’s objective is to provide a wide range of
Rmarkdown templates with ggplot themes for scientific reproducible
research with custom design for the MAX-PLANCK institute. For designing
report templates, I found the CD manual (available
[here](https://docplayer.org/2328711-Max-planck-institut-das-erscheinungsbild-der-max-planck-gesellschaft-4-ueberarbeitete-auflage.html))

<p align="center">
<img src="vignettes/src/img/cd_manual.png" width="30%"/>
</p>

The manual sets out the standards for writing reports for Max-Planck
society. The title page, logo, size, colors, and font guidelines are all
described in this document. I attempted to meet the guidelines, but it
still does not fully comply.

The reports’ default format is based on the Maxi-Planck theme. We
weren’t, however, constrained by this theme. Reports in various styles
can be created by defining the relevant parameters in YAML. for more
details see [PDF Report Template
Customization](https://ehyaei.github.io/MPIThemes/articles/articles/pdf_report_template_customization.html)
Some Design can be found in the
[examples](https://github.com/Ehyaei/MPIThemes/tree/master/examples)
section.

|                                                                     |                                                                                                                                       |                                                                                                                   |
|---------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------|
| ![basic pdf report](examples/basic_pdf_report/basic_pdf_report.png) | ![titlepage bottom background pdf report](examples/titlepage_bottom_background_pdf_report/titlepage_bottom_background_pdf_report.png) | ![titlepage background\_pdf report](examples/titlepage_background_pdf_report/titlepage_background_pdf_report.png) |

## Installation

`MPIThemes` is not (yet) available on CRAN, so install development
version from GitHub via the `devtools` or `remotes` packages.

``` r
# install.packages("devtools")
devtools::install_github("Ehyaei/MPIThemes")
```

## Example Gallery

PDF, HTML, and Office outputs are all supported by the template. See the
outputs of the newest version of the templates in the examples below:

-   [simple pdf
    report](https://github.com/Ehyaei/MPIThemes/blob/master/examples/basic_pdf_report/basic_pdf_report.pdf)
-   [custom design pdf
    report](https://github.com/Ehyaei/MPIThemes/blob/master/examples/titlepage_background_pdf_report/titlepage_background_pdf_report.pdf)

## Attribution

The RMarkdown packages and latex resources that inspired this effort
include:

-   Pascal Wagler’s
    [pandoc-latex-template](https://github.com/Wandmalfarbe/pandoc-latex-template)
-   Sebastian Sauer’s [Yart](https://github.com/sebastiansauer/yart)
    package
-   David Carayon’s
    [InraeThemes](https://github.com/davidcarayon/InraeThemes) package

## TODO

I’ll try to gradually add the following templates into the package.
Please let me know if you have a suggested template.

-   [x] PDF Report (LaTeX)
-   [ ] Short PDF note (LaTeX)
-   [ ] Long Document (Gitbook/Bookdown)
-   [ ] Editable Report (Word)
-   [ ] PhD Thesis (LaTeX/Bookdown)
-   [ ] Beamer Presentation (LaTeX)
-   [ ] HTML Presentation (RevealJS)
-   [ ] Editable Presentation (Powerpoint)
-   [ ] Conference Posters (HTML/LaTeX)
