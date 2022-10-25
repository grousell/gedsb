

#' Get Survey Data
#' A function to download data from Snap Surveys
#'
#' @param survey_name The name of survey to be used, preferable snake case (e.g. my_survey)
#' @param url  URL from the Analyse tab on Snap Surveys.
#'
#' @return .txt file, and two .csv files. One for survey data, one with a Data Dictionary
#'
#' @export
#'
#' @examples
#' # gedsb_get_survey_data(survey_name, url)
#'
gedsb_get_survey_data <- function (survey_name, url){
  httr::GET(url,
            httr::authenticate("grousell", keyring::key_get("SnapSurveys", "grousell")),
            httr::write_disk (here::here(glue::glue ("Data/{survey_name}.txt")),
                              overwrite = TRUE)
  ) # saves as temporary file

  # Load Survey Data --------------------------------------------------------

  filetext <- readLines(con <- file(here::here (glue::glue ("Data/{survey_name}.txt")),
                                    encoding = "UCS-2LE")
  )

  # Create Data Dictionary ----
  df <- read.table(text = filetext, sep = "\t")
  colnames(df) <- df[1,]
  df <- df[-1, ]

  data_dictionary <- df  |>
    head (1)  |>
    tidyr::pivot_longer (tidyselect::everything(),
                         names_to = "Question",
                         values_to = "Label")
  write.csv (data_dictionary,
             file = here::here (glue::glue ("Data/{survey_name}_data_dictionary.csv")),
             row.names = FALSE
  )

  # Clean and Save dataframe as .csv ----
  df <- df[-1, ]

  df$rowid <- seq_along(df[,1])

  df$current <- Sys.Date()

  # Save Clean Data ---------------------------------------------------------

  write.csv (df,
             file = here::here (glue::glue("Data/{survey_name}.csv")),
             row.names = FALSE
  )


}

# gedsb_get_survey_data(survey_name, url)

