#' Transform WHED Data to Wide Format
#'
#' This function transforms the WHED dataset into a wide format with individual columns for each degree and division.
#'
#' @return A data frame in wide format with individual columns for each degree and division.
#' @importFrom dplyr mutate
#' @importFrom purrr map
#' @importFrom tidyr unnest_wider
#' @importFrom magrittr %>%
#' @importFrom rlang .data
#' @examples
#' # Transform the WHED dataset back to wide format
#' whed_wide <- whed_wide()
#'
#' @export
whed_wide <- function() {

  whed <- whed::whed

  # Function to pad the lists to the maximum length
  pad_list <- function(lst, prefix) {
    max_length <- max(purrr::map_int(lst, length), na.rm = TRUE)
    lst <- purrr::map(lst, ~ {
      length(.x) <- max_length
      .x
    })
    lst <- purrr::map(lst, ~ setNames(.x, paste0(prefix, seq_len(max_length))))
    lst
  }

  # Pad lists to their original lengths
  whed_expanded <- whed %>%
    dplyr::mutate(
      degree_name = pad_list(.data$degree_name, "degree_name_"),
      degree_fields_study = pad_list(.data$degree_fields_study, "degree_fields_study_"),
      division_name = pad_list(.data$division_name, "division_name_"),
      division_fields_study = pad_list(.data$division_fields_study, "division_fields_study_")
    ) %>%
    tidyr::unnest_wider(.data$degree_name, names_sep = "_") %>%
    tidyr::unnest_wider(.data$degree_fields_study, names_sep = "_") %>%
    tidyr::unnest_wider(.data$division_name, names_sep = "_") %>%
    tidyr::unnest_wider(.data$division_fields_study, names_sep = "_")

  return(whed_expanded)
}
