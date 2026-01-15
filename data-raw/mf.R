library(readODS)

mf <- read_ods("data-raw/mf.ods")

# Any cleaning, scaling, renaming here

usethis::use_data(mf, overwrite = TRUE)
