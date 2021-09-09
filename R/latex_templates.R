#' PDF Repolrt Latex Template
#'
#' latex_report function includes many features to customize your latex template
#' and produce pdf report output.
#'
#' @param ... Arguments to \code{rmarkdown::pdf_document}
#' @param keep_tex A Boolean toggle to select whether intermediate. Default value is TRUE
#' @param highlight Syntax highlighting style. Default value is "tango".
#' @param latex_engine LateX engine for producing PDF output. Default value is xelatex
#' @param fig_caption TRUE to render figures with captions.
#' @return R Markdown output format.
#' @export
#'
#' @examples
#' \dontrun{
#' rmarkdown::draft("report.Rmd", template = "latex_report", package = "MPIThemes")
#' rmarkdown::render("report.Rmd")
#' }
latex_report <- function(..., keep_tex = TRUE, highlight = "tango",
                         latex_engine= "xelatex", fig_caption = TRUE) {
  template <- system.file("rmarkdown", "templates", "latex_report", "resources",
                           package = "MPIThemes")
  template = paste0(template,"/template.tex")
  base <- inherit_pdf_document(..., template = template, keep_tex = keep_tex,
                               highlight = highlight,latex_engine = latex_engine,
                               fig_caption = fig_caption
                               )

  base$knitr$opts_chunk$prompt <- FALSE
  base$knitr$opts_chunk$comment <- ''
  base$knitr$opts_chunk$highlight <- TRUE
  base$knitr$opts_chunk$echo <- FALSE
  base$knitr$opts_chunk$message <- F
  base$knitr$opts_chunk$error <- FALSE
  base$knitr$opts_chunk$screenshot.opts <- list(delay=1)
  base$knitr$opts_chunk$warning <- FALSE
  base$knitr$opts_chunk$fig.align <- "center"
  base$knitr$opts_chunk$dev <- "cairo_pdf"
  base$knitr$opts_chunk$fig.pos <- "H"
  base$knitr$opts_chunk$fig.path="figure/"
  base$knitr$opts_chunk$dev.args=list(bg="transparent")
  base
}


