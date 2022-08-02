
gedsb_cols = c(
  Green = "#8dc63f",
  Green2 = "#afd778",
  Green3 = "#d1e8b2",

  Blue = "#0089cf",
  Blue2 = "#4cacdd",
  Blue3 = "#99cfeb",

  Orange = "#faa61a",
  Orange2 = "#fbc05e",
  Orange3 = "fddba3"
)


#' gedsb_colours
#'
#' @param cols
#'
#' @return Hex colour for GEDSB visual identity
#' @export
#'
#' @examples gedsb_colours("Blue")
gedsb_colours <- function(...) {
  cols <- c(...)

  if (is.null(cols))
    return (gedsb_cols)

  gedsb_cols[cols]
}


# extrafont::loadfonts(device = "win")






