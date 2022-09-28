#' GEDSB ggplot2 Theme for Flipped Bar Charts
#'
#' @return Sets gglot2 theme for flipped bar charts
#' @export
#'
#' @examples gedsb_flipped_bar_plot_theme()
gedsb_flipped_bar_plot_theme <- function () {


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

    panel.grid.major.y = ggplot2::element_line(colour = "NA"),
    panel.grid.minor.y = ggplot2::element_line(colour = "NA"),
    panel.grid.major.x = ggplot2::element_line(colour = "grey90"),
    panel.grid.minor.x = ggplot2::element_line(colour = "NA"),

    axis.title.x = ggplot2::element_text (
      colour = "black", size = 12
    ),
    axis.title.y = ggplot2::element_text (
      colour = "black",
      size = 14,
      angle = 90
    ),
    axis.text.x = ggplot2::element_text (
      colour = "black",
      size = 12,
      angle = 0
    ),
    axis.text.y = ggplot2::element_text (
      colour = "black",
      size = 12,
      hjust = 1
    ),

    axis.ticks.y = ggplot2::element_blank(),
    axis.ticks.x = ggplot2::element_blank(),

    legend.text = ggplot2::element_text (
      colour = "black",
      size = 10),
    legend.position = ("bottom"),
    legend.title = ggplot2::element_text(colour = "black")
  )
}







