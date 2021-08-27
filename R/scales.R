#' Max-Planck institute palette
#'
#' This palette was inspired by the CD manual (available \href{http://stackoverflow.com/}{here} )
#'  of the Max Planck Society.
#'
#' @return a vector containing the colors.
#' @export
#'
#' @examples
#' library(MPIThemes)
#' scales::show_col(palette_mpi())
palette_mpi <- function() {
  c("mpi" = "#007367",
    "mpi_gray" = "#D0D3D4",
    "mpi_blue" = "#009EE2"
    )
}

#' Color scale constructor for MPI palette
#'
#' @param ... Additional arguments passed to ggplot2::discrete_scale()
#'
#' @return
#' @export
#'
#' @examples
#' library(ggplot2)
#' ggplot(data = mtcars, aes(x = cyl)) +
#'   geom_bar(aes(y = ..count..,fill = as.character(cyl)))+
#'   scale_fill_mpi()
scale_fill_mpi <- function(...){
  ggplot2::discrete_scale("fill","mpi",
                          scales::manual_pal(values = c("#007367", "#D0D3D4", "#009EE2")), ...)
}


#' Fill scale constructor for MPI palette
#'
#' @param ... Additional arguments passed to discrete_scale()
#'
#' @return
#' @export
#'
#' @examples
#' library(ggplot2)
#' ggplot(data = mtcars, aes(x = wt, y= mpg,color = as.character(cyl))) +
#'   geom_point()+scale_color_mpi()
scale_color_mpi <- function(...){
  ggplot2::discrete_scale("color","mpi",scales::manual_pal(values = c("#007367", "#D0D3D4", "#009EE2")), ...)
}
