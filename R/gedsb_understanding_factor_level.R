
#' Understanding Factor Levels
#' Converts a character vector of "1 - None",  "2", "3", "4", "5 - A Great Deal" to ordered factors.
#'
#' @param x A character vector
#'
#' @return
#' Vector of factors with levels "1 - None",  "2", "3", "4", "5 - A Great Deal" to ordered factors.
#' @export
#'
#' @examples
#' # gedsb_understanding_factor_levels(x)
gedsb_understanding_factor_levels <- function (x){
  x <- readr::parse_factor(x,
                           levels = c ("1 - None",
                                       "2",
                                       "3",
                                       "4",
                                       "5 - A Great Deal")
                           )
  return (x)
}

