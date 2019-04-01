library(tidyverse)
library(nycflights13)

library(conflicted)
conflict_prefer("filter", "dplyr")


flights %>%
  select(year, month, day)

flights %>%
  select(year)

flights %>%
  select(year, month, day, dep_delay, arr_delay)

flights %>%
  select(
    year, month, day,
    departure_delay = dep_delay,
    arrival_delay = arr_delay
  )








