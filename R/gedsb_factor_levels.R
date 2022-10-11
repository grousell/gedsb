#' Likert Factor Levels
#'
#' @param x
#'
#' @return
#' Vector of factor, with levels "Strongly Disagree", "Disagree", "Neither Agree or Disagree", "Agree", "Strongly Agree"
#' @export
#'
#' @examples
#' gedsb_likert_factor_levels()
#'

gedsb_likert_factor_levels <- function (x){

  x <- readr::parse_factor(x,
                          levels = c ("Strongly Disagree",
                                      "Disagree",
                                      "Neither Agree or Disagree",
                                      "Agree",
                                      "Strongly Agree")
                          )

  return (x)
}

