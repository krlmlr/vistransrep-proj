library(tidyverse)

data <-
  tibble(a = c(1, 3, 7), b = 3)

data

data %>%
  complete(a = full_seq(a, period = 1))
