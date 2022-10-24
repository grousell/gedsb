#' GEDSB Summary Table
#'
#' This function will create a one or two variable summary table with percentages
#' @param df A dataframe
#'
#' @param group_1 The first grouping variable
#'
#' @param group_2 The second grouping variable (optional)
#'
#' @param ... Addtional arguments
#'
#' @return [A tibble][tibble::tibble-package] with columns for `group_1`, `group_2`,
#' `n` and `perc`
#' @export
#'
#' @examples
#' # dat <- palmerpenguins::penguins
#' # gedsb_summary_table (dat, species)
#' # gedsb_summary_table (dat, species, sex)
#'
gedsb_summary_table <- function (df, group_1, group_2, ...){

  args <- match.call ()
  exist <- ("group_2" %in% names (args))

  tbl <- df |>
    dplyr::group_by({{group_1}}, {{group_2}}) |>
    dplyr::count ()

  if (exist == TRUE) {
    tbl |>
      dplyr::group_by ({{group_1}}) |>
        dplyr::mutate (perc = .data$n / sum (.data$n))}
  else {
    tbl |>
    dplyr::ungroup() |>
      dplyr::mutate(perc = .data$n / sum(.data$n))
  }
}


