library(readr)

example1 <- read_delim(
  "data/example1.csv",
  ";", escape_double = FALSE,
  col_types = cols(
    col2 = col_skip()
  ),
  trim_ws = TRUE
)

example1

example1_1 <- read_delim(
  "data/example1.csv",
  ";", escape_double = FALSE,
  col_types = cols(
    col2 = col_skip()
  ),
  trim_ws = TRUE,
  n_max = 1
)

example1_1
