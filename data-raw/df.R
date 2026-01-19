library(readODS)

df <- read_ods("data-raw/df.ods")

# Any cleaning, scaling, renaming here

usethis::use_data(df, overwrite = TRUE)
