library(readODS)
library(dplyr)

gk <- read_ods("data-raw/gk.ods") |>
  calculate_ratings() |>
  dplyr::select(
    Player, Division, Squad, Pos, Age,
    MatchesPlayed,
    ShotStopping, Passing, CrossStopping, Sweeper
  )

usethis::use_data(gk, overwrite = TRUE)
