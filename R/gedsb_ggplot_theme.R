
# Theme for ggplots using board colours ----------------------------------

#' GEDSB ggplot2 Theme for Bar Charts
#'
#' @return Sets gglot2 theme
#' @export
#'
#' @examples gedsb_bar_plot_theme()
gedsb_bar_plot_theme <- function () {

  font <- "Montserrat"

  ggplot2::theme(
  title = ggplot2::element_text (colour = "black", size = 14),
  plot.title.position = "plot",
  text = ggplot2::element_text(size = 12,  family = "Montserrat"),

  plot.title = ggplot2::element_text(hjust = 0.5),
  plot.subtitle = ggplot2::element_text(hjust = 0.5),
  plot.margin = ggplot2::unit(c(0.25, 0.25, 0.25, 0.25), "cm"),

  panel.background = ggplot2::element_blank(),

  panel.border = ggplot2::element_blank(),
  panel.grid.major.y = ggplot2::element_line(colour = "grey90"),
  panel.grid.minor.y = ggplot2::element_line(colour = "NA"),
  panel.grid.major.x = ggplot2::element_line(colour = "NA"),
  panel.grid.minor.x = ggplot2::element_line(colour = "NA"),

  axis.title.x = ggplot2::element_text (
    colour = "black", size = 13
    ),
  axis.title.y = ggplot2::element_text (
    colour = "black",
    size = 13,
    angle = 90
  ),
  axis.text.x = ggplot2::element_text (
    colour = "black",
    size = 11,
    angle = 0
  ),
  axis.text.y = ggplot2::element_text (
    colour = "black",
    size = 11,
    hjust = 1
  ),

  axis.ticks.y = ggplot2::element_blank(),
  axis.ticks.x = ggplot2::element_blank(),

  legend.text = ggplot2::element_text (
    colour = "black",
    size = 10),
  legend.position = ("bottom"),
  legend.title = ggplot2::element_blank()
  )
}

