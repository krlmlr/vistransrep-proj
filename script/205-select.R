### Pick columns

library(tidyverse)
library(nycflights13)

library(conflicted)
conflict_prefer("filter", "dplyr")

# select columns
flights %>%
  select(year, month, day)

# select a column away
flights %>%
  select(-year)

# select supports renaming
flights %>%
  select(
    year, month, day,
    departure_delay = dep_delay,
    arrival_delay = arr_delay
  )

# select + rename: create spaces (don't do this!)
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

# select + rename columns with spaces
flights_with_spaces %>%
  select(
    year, month, day,
    dep_delay = `Departure delay`,
    arr_delay = `Arrival delay`
  )

# select helpers
flights %>%
  select(origin, dest, ends_with("_time"))
