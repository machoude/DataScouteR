#' Calculate Weighted Goalkeeper Ratings
#'
#' This function applies league-specific weights to ShotStopping stats
#' and maps them to a 1-20 scale using percentile ranks.
#'
#' @param df A dataframe with columns: Player, Division, ShotStopping, MatchesPlayed
#' @return A tibble with a new Final_Rating column
#' @export
calculate_ratings <- function(df) {
  weights <- tibble::tibble(
    Division = c("ENG1", "GER1", "ITA1", "ESP1", "FRA1", "ENG2", "POR1", "BEL1", "DEN1", "POL1", "NED1"),
    Weight = c(1.000, 0.940, 0.937, 0.932, 0.924, 0.874, 0.870, 0.869, 0.857, 0.849, 0.839)
  )

  df %>%
    dplyr::left_join(weights, by = "Division") %>%
    dplyr::mutate(
      ShotStopping = ShotStopping * Weight,
      Passing = Passing * Weight,
      CrossStopping = CrossStopping * Weight,
      Sweeper = Sweeper * Weight
    )
}
