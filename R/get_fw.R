#' Get forwards scouting data
#'
#' Returns forward scouting metrics scaled to Football Manager–style
#' ratings (1–20) for easier interpretation.
#'
#' @return A data frame with goalkeeper performance metrics.
#' @importFrom utils data
#' @export
get_fw <- function() {
  data("fw", package = "DataScouteR")
  fw
}
