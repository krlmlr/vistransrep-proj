library(tidyverse)
library(nycflights13)

library(conflicted)
conflict_prefer("filter", "dplyr")
conflict_prefer("lag", "dplyr")


library(readr)
example1 <-
  read_delim(
    "data/example1.csv",
    ";",
    escape_double = FALSE, trim_ws = TRUE
  )

View(example1)
