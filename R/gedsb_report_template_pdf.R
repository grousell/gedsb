
#' Report Temnplate - PDF
#' A function that downloads a .qmd template, images and .tex files for a Grand Erie report template.
#' @param report_name Name of the report
#'
#'
#' @export
#'
#' @examples
#' # gedsb_report_template_pdf(test_report)
gedsb_report_template_pdf <- function (report_name){

  report_name <- deparse(substitute(report_name))

  # Download .qmd file ----
  download.file("https://raw.githubusercontent.com/grousell/gedsb/master/templates/gedsb_report_template.qmd",
                destfile = glue::glue ("{report_name}.qmd")
  )

  # Download .tex template ----

  download.file("https://raw.githubusercontent.com/grousell/gedsb/master/templates/in-header.tex",
                destfile = glue::glue ("in-header.tex")
  )

  # Create images file if needed ----
  if (file.exists("images")){

  } else {
    dir.create("images")
  }

  # Download GEDSB images ----
  download.file("https://raw.githubusercontent.com/grousell/gedsb/master/templates/images/LearnLeadInspire_Bullets_Horizontal.png",
                destfile = "images/LearnLeadInspire_Bullets_Horizontal.png")

  download.file("https://raw.githubusercontent.com/grousell/gedsb/master/templates/images/LearnLeadInspire_FullLogo.png",
                destfile = "images/LearnLeadInspire_FullLogo.png")

  }


