library(tidyverse)
library(readr)

example1 <- read_delim(
  "data/example1.csv",
  ";", escape_double = FALSE, trim_ws = TRUE)
View(example1)
