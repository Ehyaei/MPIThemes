#' Theme 'scientific'
#'
#' @param base_size base font size, given in pts.
#'
#' @return ggplot2 theme
#' @export
#'
#' @examples
#' \dontrun{
#' library(ggplot2)
#' ggplot(data = mtcars, aes(x = cyl)) +
#'   geom_bar(aes(y = ..count..,fill = as.character(cyl)))+
#'   theme_scientific()+
#'   scale_fill_mpi()
#'   }
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


#' Theme for Plot Heatmaps
#'
#' @return ggplot2 theme
#' @export
#'
#' @examples
#' library(ggplot2)
#' # Dummy data
#' x <- LETTERS[1:20]
#' y <- paste0("var", seq(1,20))
#' data <- expand.grid(X=x, Y=y)
#' data$Z <- runif(400, 0, 5)
#' # Heatmap
#' ggplot(data, aes(X, Y, fill= Z)) +
#'   geom_tile()+
#'   theme_map()

theme_map = function(){
  theme_void()+
    theme(
      legend.position="bottom",
      legend.direction="horizontal",
      legend.title=element_text(size=rel(.8),vjust = 1,face = "bold"),
      legend.margin=margin(grid::unit(0,"cm")),
      legend.text=element_text(size=rel(.7)),
      legend.key.height=grid::unit(0.25,"cm"),
      legend.key.width=grid::unit(1.5,"cm")
    )
}

#' Bottom Legend Theme
#'
#' @return ggplot2 theme
#' @export
#'
#' @examples
#' library(ggplot2)
#' # Dummy data
#' x <- LETTERS[1:20]
#' y <- paste0("var", seq(1,20))
#' data <- expand.grid(X=x, Y=y)
#' data$Z <- runif(400, 0, 5)
#' # Heatmap
#' ggplot(data, aes(X, Y, fill= Z)) +
#'   geom_tile()+
#'   theme_map()
bottom_legend = function(){
  theme(
    legend.position="bottom",
    legend.direction="horizontal",
    legend.title=element_text(size=rel(.8),vjust = 1,face = "bold"),
    legend.text=element_text(size=rel(.7)),
    legend.key.height=grid::unit(0.25,"cm"),
    legend.key.width=grid::unit(1.5,"cm"),
    legend.box.background = element_blank()
  )
}

#' Set ggplot default theme and palette
#'
#' @return set theme and color to all ggplot figures
#' @export
#'
#' @examples
#' \dontrun{
#' library(ggplot2)
#' set_color_theme()
#' ggplot(data = mtcars, aes(x = cyl)) +
#'   geom_bar(aes(y = ..count..,fill = as.character(cyl)))
#'   }
set_color_theme <- function() {
  continuous_color = c("#1B3037", "#213C47", "#26525B", "#28847D", "#45A289", "#7CAE7F", "#B2B974", "#E9C46A", "#ECBA67", "#EFB065", "#F2A662", "#F0935C", "#E87653", "#D8674B", "#C65D44")
  ggplot2::theme_set(MPIThemes::theme_scientific())
  assign("scale_colour_discrete", function(..., values = MPIThemes::palette_colors$HTML) scale_colour_manual(..., values = values), globalenv())
  assign("scale_fill_discrete", function(..., values = MPIThemes::palette_colors$HTML) scale_fill_manual(..., values = values), globalenv())
  assign("scale_fill_continuous", function(..., values = continuous_color) scale_fill_gradientn(..., colours = values), globalenv())
  assign("scale_colour_continuous", function(..., values = continuous_color) scale_colour_gradientn(..., colours = values), globalenv())

}



