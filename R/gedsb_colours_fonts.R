
#' gedsb_colours
#'
#' @param ... Additional arguments
#'
#' @return
#' R objects with names Hex colours for GEDSB visual identity
#' @export
#'
#' @examples
#' # gedsb_colours_fonts()
#'

gedsb_colours_fonts <- function (...){
  gedsbGreen <<- "#8dc63f"
  gedsbGreen2 <<- "#afd778"
  gedsbGreen3 <<- "#d1e8b2"

  gedsbBlue <<- "#0089cf"
  gedsbBlue2 <<- "#4cacdd"
  gedsbBlue3 <<- "#99cfeb"

  gedsbOrange <<- "#faa61a"
  gedsbOrange2 <<- "#fbc05e"
  gedsbOrange3 <<- "#fddba3"

  gedsbFont <<- "Montserrat"

  extrafont::loadfonts(device="win")
}











