library(readODS)
library(dplyr)

gk <- read_ods("data-raw/gk.ods")

usethis::use_data(gk, overwrite = TRUE)

dc <- read_ods("data-raw/dc.ods")

usethis::use_data(dc, overwrite = TRUE)

wb <- read_ods("data-raw/wb.ods")

usethis::use_data(wb, overwrite = TRUE)

cm <- read_ods("data-raw/cm.ods")

usethis::use_data(cm, overwrite = TRUE)

w <- read_ods("data-raw/w.ods")

usethis::use_data(w, overwrite = TRUE)

fw <- read_ods("data-raw/fw.ods")

usethis::use_data(fw, overwrite = TRUE)
