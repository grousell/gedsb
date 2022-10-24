

#' Significant Factor Levels
#' Converts a character vector of "1 - Not at all",  "2", "3", "4", "5 - Significantly" to ordered factors.
#'
#' @param x A character vector
#'
#' @return
#' Vector of factors with levels "1 - Not at all",  "2", "3", "4", "5 - Significantly" to ordered factors.
#' @export
#'
#' @examples
#' # gedsb_significant_factor_levels(x)
#'
gedsb_significant_factor_levels <- function (x){

  stopifnot(is.character(x))

  x <- readr::parse_factor(x,
                           levels = c ("1 - Not at all",
                                       "2",
                                       "3",
                                       "4",
                                       "5 - Significantly")
  )

  return (x)
}
