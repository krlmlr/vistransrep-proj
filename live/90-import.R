library(tidyverse)
library(here)

example1 <- readr::read_delim(
  here("data/example1.csv"),
  ";", escape_double = FALSE, trim_ws = TRUE)
View(example1)
