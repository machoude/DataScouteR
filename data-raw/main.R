# Hello, world!
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   https://r-pkgs.org
#
# Some useful keyboard shortcuts for package authoring:
#
#   Install Package:           'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'

# 1. Load the reader
library(readODS)

# 2. Read the raw spreadsheet
gk <- read_ods("data/gk.ods")

# 3. THE IMPORTANT STEP: Export to the package
usethis::use_data(gk, overwrite = TRUE)
