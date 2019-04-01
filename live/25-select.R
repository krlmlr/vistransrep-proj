library(tidyverse)
library(nycflights13)

library(conflicted)
conflict_prefer("filter", "dplyr")


flights %>%
  select(year, month, day)
