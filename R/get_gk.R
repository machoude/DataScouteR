#' @importFrom utils data
#' Get goalkeeper scouting data
#'
#' Returns Football Manager–style (1–20) ratings for goalkeepers,
#' adjusted for league difficulty and playing time.
#'
#' @param division Optional character vector of divisions to filter
#'
#' @return A tibble of goalkeeper ratings
#' @export
get_gk <- function(division = NULL) {

  data("gk", package = "DataScouteR", envir = environment())

  out <- gk

  if (!is.null(division)) {
    out <- dplyr::filter(out, Division %in% division)
  }

}
