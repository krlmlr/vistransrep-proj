library(tidyverse)
library(here)

example1 <- readr::read_delim(here("data/example1.csv"),
                              ";",
                              escape_double = FALSE,
                              trim_ws = TRUE)
View(example1)

example2 <- readr::read_delim(
  "data/example2.csv",
  ";",
  escape_double = FALSE,
  col_types = cols(col1 = col_character(),
                   col2 = col_skip()),
  comment = "#",
  trim_ws = TRUE
)
View(example2)
