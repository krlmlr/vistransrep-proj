library(tidyverse)
library(nycflights13)

library(conflicted)
conflict_prefer("filter", "dplyr")

flights
?flights

flights %>%
  filter(dep_time < 600)

flights %>%
  filter(is.na(dep_time))
