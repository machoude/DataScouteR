#' Get goalkeeper scouting data
#'
#' Returns goalkeeper scouting metrics scaled to Football Manager–style
#' ratings (1–20) for easier interpretation.
#'
#' @return A data frame with goalkeeper performance metrics.
#' @importFrom utils data
#' @export
get_gk <- function() {
  data("gk", package = "DataScouteR")
  gk
}
