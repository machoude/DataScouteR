#' Get defender scouting data
#'
#' Returns defender scouting metrics scaled to Football Manager–style
#' ratings (1–20) for easier interpretation.
#'
#' @return A data frame with defender performance metrics.
#' @importFrom utils data
#' @export
get_df <- function() {
  data("df", package = "DataScouteR")
  df
}
