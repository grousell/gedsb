
#' Likert Factor Levels
#' Converts a character vector of "Strongly Disagree",  "Disagree", "Neither Agree or Disagree", "Agree", "Strongly Agree" to ordered factors.
#'
#' @param x
#'
#' @return
#' Vector of factors with levels "Strongly Disagree",  "Disagree", "Neither Agree or Disagree", "Agree", "Strongly Agree"
#' @export
#'
#' @examples
#' test <- c(rep ("Strongly Disagree", 2),
#' rep ("Disagree", 3),
#' rep ("Neither Agree or Disagree", 2),
#' rep ("Agree", 1),
#' rep ("Strongly Agree", 3))
#'
#' gedsb_likert_factor_levels(test)

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

