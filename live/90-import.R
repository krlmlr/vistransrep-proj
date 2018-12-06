library(tidyverse)

example1 <- readr::read_delim(
  "data/example1.csv",
  ";", escape_double = FALSE, trim_ws = TRUE)
View(example1)
