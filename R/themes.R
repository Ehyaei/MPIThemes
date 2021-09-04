#' Theme 'scientific'
#'
#' @param base_size base font size, given in pts.
#'
#' @return scientific theme
#' @export
#'
#' @examples
#' iris %>%
#' group_by(Species) %>%
#'   summarise(Sepal.Width = mean(Sepal.Width)) %>%
#'   ggplot(aes(x = Species, y = Sepal.Width, fill = Species)) +
#'   geom_col() +
#'   labs(x="Species",
#'        y="Average Sepal Width",
#'        fill = "Species",
#'        title = "Iris Dataset")+
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
      panel.border = element_rect(color = NA),
      plot.background = element_blank(),
      panel.grid.major = element_line(color = "gray70", size = .25, linetype = 2),
      panel.grid.minor = element_line(color = "gray80", size = .15, linetype = 2),
      axis.line.x = element_line(color = "gray40",size = .4),
      axis.line.y = element_line(color = "gray40",size = .4),
      axis.ticks = element_line(color = "gray20"),
      legend.key = element_rect(fill = NA, color = NA),
      legend.text = element_text(size = rel(.8), color = "black"),
      plot.title = element_text(color = "gray20", size = rel(1.2),face = "bold", hjust = .5),
      axis.text.x = element_text(size = rel(.9), color = "gray20"),
      axis.text.y = element_text(size = rel(.9), color = "gray20"),
      axis.title.x = element_text(size = rel(1), color = "gray20", vjust = 0),
      axis.title.y = element_text(size = rel(1), color="gray20", vjust = 1),
      plot.margin = margin(25, 25, 25, 25),
      legend.background = element_blank(),
      plot.caption = element_text(size = rel(0.9), face = "italic")
    )

}

