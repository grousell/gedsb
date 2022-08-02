
#' gedsb_import_fonts
#'
#' @param ...
#'
#' @return Loads Windows Fonts
#' @export
#'
#' @examples gedsb_import_font()
gedsb_import_font <- function (...){
  extrafont::loadfonts(device="win")
}
