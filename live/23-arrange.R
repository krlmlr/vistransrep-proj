library(tidyverse)
library(nycflights13)

library(conflicted)
conflict_prefer("filter", "dplyr")

flights %>%
  arrange(dep_time)
