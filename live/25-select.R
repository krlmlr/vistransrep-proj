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

flights_with_spaces <-
  flights %>%
  select(
    year, month, day,
    `Departure delay` = dep_delay,
    `Arrival delay` = arr_delay
  ) %>%
  filter(
    `Arrival delay` < 0
  )

flights_with_spaces %>%
  select(
    year, month, day,
    dep_delay = `Departure delay`,
    arr_delay = `Arrival delay`
  )
