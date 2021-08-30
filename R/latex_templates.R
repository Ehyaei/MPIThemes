#' Title
#'
#' @param ...
#' @param keep_tex
#' @param highlight
#'
#' @return
#' @export
#'
#' @examples
#' #' @references \url{https://github.com/sebastiansauer/yart/blob/master/R/yart.R}

latex_report <- function(..., keep_tex = FALSE,highlight = "tango") {
  template <- system.file("rmarkdown", "templates", "report", "resources", "template.tex", package = "alef")
  base <- inherit_pdf_document(..., template = template, keep_tex = keep_tex,highlight = highlight)

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
  base
}

# Call rmarkdown::pdf_documet and mark the return value as inheriting pdf_document
inherit_pdf_document <- function(...) {
  fmt <- rmarkdown::pdf_document(...)
  fmt$inherits <- "pdf_document"
  fmt
}

knitr_fun <- function(name) utils::getFromNamespace(name, 'knitr')

output_asis <- knitr_fun('output_asis')

