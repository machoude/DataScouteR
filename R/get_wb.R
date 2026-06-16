#' Get wing backs scouting data
#'
#' Returns wing backs scouting metrics scaled to Football Manager–style
#' ratings (1–20) for easier interpretation.
#'
#' @return A data frame with goalkeeper performance metrics.
#' @importFrom utils data
#' @export
get_wb <- function() {
  data("wb", package = "DataScouteR")
  gk
}
