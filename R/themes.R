#' Theme 'scientific'
#'
#' @param base_size base font size, given in pts.
#'
#' @return scientific theme
#' @export
#'
#' @examples
#' library(ggplot2)
#' ggplot(data = mtcars, aes(x = cyl)) +
#'   geom_bar(aes(y = ..count..,fill = as.character(cyl)))+
#'   theme_scientific()+
#'   scale_fill_mpi()
theme_scientific <- function(base_size = 12){

  fontPath <- system.file("rmarkdown", "templates",
                          "latex_report", "skeleton","src","fonts",
                          package = "MPIThemes")

  sysfonts::font_add(family = "Univers",
                     regular = paste0(fontPath,"/Univers-light-normal.ttf"),
                     bold = paste0(fontPath,"/UniversBlack.ttf"),
                     italic = paste0(fontPath,"/UniversLTStd.otf"),
                     bolditalic = paste0(fontPath,"/UniversLTStd-Bold.otf")
  )

  theme_bw(base_size = base_size, base_family = "Univers") +
    theme(
      panel.border = element_blank(),
      panel.background = element_blank(),
      plot.background = element_blank(),
      legend.box.background = element_blank(),
      legend.background = element_rect(fill = "transparent"),
      panel.grid.major = element_line(color = "gray70", size = .2, linetype = "dotted"),
      panel.grid.minor = element_line(color = "gray70", size = .1, linetype = "dotted"),
      axis.line.x = element_line(color = "gray40",size = .4),
      axis.line.y = element_line(color = "gray40",size = .4),
      axis.ticks = element_line(color = "gray20"),
      legend.title = element_text(size = rel(0.8), color = "gray20", vjust = 0),
      legend.key = element_rect(fill = NA, color = NA),
      legend.text = element_text(size = rel(.7), color = "black"),
      plot.title = element_text(color = "gray20", size = rel(1.2),face = "bold", hjust = .5),
      axis.text.x = element_text(size = rel(.7), color = "gray20"),
      axis.text.y = element_text(size = rel(.7), color = "gray20"),
      axis.title.x = element_text(size = rel(0.8), color = "gray20", vjust = 0),
      axis.title.y = element_text(size = rel(0.8), color="gray20", vjust = 1),
      plot.margin = margin(25, 25, 25, 25),
      plot.caption = element_text(size = rel(0.8), face = "italic")
    )
}



