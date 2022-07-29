

# Theme for ggplots using board colours ----------------------------------

extrafont::loadfonts(device = "win")

gedsb_bar_plot_theme <- theme_update(
  title = element_text (colour = "black", size = 10),
  text = element_text(size = 12,  family = "Montserrat"),

  plot.title = element_text(hjust = 0.5),
  plot.subtitle = element_text(hjust = 0.5),
  plot.margin = unit(c(0.25, 0.25, 0.25, 0.25), "cm"),

  panel.background = element_rect(fill = "NA"),
  panel.border = element_blank(),
  panel.grid.major.y = element_line(colour = "grey90"),
  panel.grid.minor.y = element_line(colour = "NA"),
  panel.grid.major.x = element_line(colour = "NA"),
  panel.grid.minor.x = element_line(colour = "NA"),

  axis.title.x = element_text (
    colour = "black", size = 12
    ),
  axis.title.y = element_text (
    colour = "black",
    size = 14,
    angle = 90
  ),
  axis.text.x = element_text (
    colour = "black",
    size = 12,
    angle = 0
  ),
  axis.text.y = element_text (
    colour = "black",
    size = 12,
    hjust = 1
  ),

  axis.ticks.y = element_blank(),
  axis.ticks.x = element_blank(),

  legend.text = element_text (colour = "black", size = 10),
  legend.position = ("bottom"),
  legend.title = element_text(colour = "black"),
  )
