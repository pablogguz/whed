#' WHED Dataset
#'
#' This dataset contains institution-level information on higher education institutions around the world.
#'
#' @format A data frame with 21165 rows and 15 variables:
#' \describe{
#'   \item{name}{Name of the institution}
#'   \item{url}{Website URL of the institution}
#'   \item{country}{Country where the institution is located}
#'   \item{id}{Unique identifier for the institution}
#'   \item{city}{City where the institution is located}
#'   \item{name_detail}{Detailed name of the institution}
#'   \item{funding_type}{Type of funding for the institution (e.g., public, private)}
#'   \item{languages}{Languages used at the institution}
#'   \item{accrediting_agency}{Accrediting agency for the institution}
#'   \item{year_founded}{Year the institution was founded}
#'   \item{academic_year}{Academic year details}
#'   \item{degree_name}{List column containing names of degrees}
#'   \item{degree_fields_study}{List column containing fields of study for degrees}
#'   \item{division_name}{List column containing names of divisions}
#'   \item{division_fields_study}{List column containing fields of study in divisions}
#' }
#' @source Source of the data: \url{https://whed.net/home.php}
#'
"whed"
