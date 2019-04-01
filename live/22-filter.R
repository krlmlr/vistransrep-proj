library(tidyverse)
library(nycflights13)

library(conflicted)
conflict_prefer("filter", "dplyr")

flights
?flights

flights %>%
  filter(dep_time < 600)
