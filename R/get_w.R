#' Get wingers scouting data
#'
#' Returns wingers scouting metrics scaled to Football Manager–style
#' ratings (1–20) for easier interpretation.
#'
#' @return A data frame with goalkeeper performance metrics.
#' @importFrom utils data
#' @export
get_w <- function() {
  data("w", package = "DataScouteR")
  w
}
