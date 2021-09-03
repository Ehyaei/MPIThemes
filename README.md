
<!-- README.md is generated from README.Rmd. Please edit that file -->

# MPIThemes

[![R build
status](https://github.com/Ehyaei/MPIThemes/workflows/R-CMD-check/badge.svg)](https://github.com/Ehyaei/MPIThemes/actions)
[![](https://img.shields.io/badge/devel%20version-0.0.0.9000-orange.svg)](https://github.com/Ehyaei/MPIThemes)
[![](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
[![](https://img.shields.io/github/last-commit/Ehyaei/MPIThemes.svg)](https://github.com/Ehyaei/MPIThemes/commits/master)

<a href={https://github.com/Ehyaei/MPIThemes}><img src="man/figures/logo.png" alt="logo with an image of a MPI Templates" align="right" width="160" style="padding: 0 15px; float: right;"/>

The goal of the MPIThemes package is to provide a variety of Rmarkdown
templates with ggplot themes for scientific reproducible research with
custom design for the MAX PLANCK institute.

Rmarkdown templates can be rendered in PDF, Docx, and HTML format.
Especially you can create PDF reports without worrying about the lateX
code. Included in the package are:

-   Beamer presentation
-   Analytical reports

The pdf RMarkdown templates compile with XeLatex. You will need to
install some version of XeLatex. If you do not have one, there is a
simple way in R. [Tinytex](https://yihui.org/tinytex/) is A lightweight
LaTeX distribution that is sufficient for compiling pdf templates. To
install the tinytex package and a working version of LaTeX run these
commands:

``` r
install.packages("tinytex")
tinytex::install_tinytex()
```

The MPITheme package requires additional LaTeX dependencies that tinytex
does not install by default. If you are online, these dependencies will
be installed automatically.

## Installation

You can install the released version of MPIThemes from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("Ehyaei/MPIThemes")
```
