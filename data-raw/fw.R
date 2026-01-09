library(readODS)

fw <- read_ods("data-raw/fw.ods")

# Any cleaning, scaling, renaming here

usethis::use_data(fw, overwrite = TRUE)
