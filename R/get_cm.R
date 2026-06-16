#' Get central midfielders scouting data
#'
#' Returns forward scouting metrics scaled to Football Manager–style
#' ratings (1–20) for easier interpretation.
#'
#' @return A data frame with midfielders performance metrics.
#' @importFrom utils data
#' @export
get_cm <- function() {
  data("cm", package = "DataScouteR")
  mf
}
