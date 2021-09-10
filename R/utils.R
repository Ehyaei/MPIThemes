inherit_pdf_document <- function(...) {
  fmt <- rmarkdown::pdf_document(...)
  fmt$inherits <- "pdf_document"
  fmt
}


pretty_number <- function(x) {
  dplyr::case_when(
    x < 1e3 ~ as.character(x),
    x < 1e6 ~ paste0(as.character(x/1e3), "K"),
    x < 1e9 ~ paste0(as.character(x/1e6), "M"),
    x < 1e12 ~ paste0(as.character(x/1e6), "G"),
    x < 1e15 ~ paste0(as.character(x/1e6), "T"),
    x < 1e18 ~ paste0(as.character(x/1e6), "P"),
    TRUE ~ "Infinity..."
  )
}
