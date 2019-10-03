### Pick columns: `dplyr::select()`

library(tidyverse)
library(nycflights13)

library(conflicted)
conflict_prefer("filter", "dplyr")

# select 1
flights %>%
  select(year, month, day)

# select 2
flights %>%
  select(year)

# select 3
flights %>%
  select(year, month, day, dep_delay, arr_delay)

# select rename 1
flights %>%
  select(
    year, month, day,
    departure_delay = dep_delay,
    arrival_delay = arr_delay
  )

# select rename with spaces
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

# select columns with spaces
flights_with_spaces %>%
  select(
    year, month, day,
    dep_delay = `Departure delay`,
    arr_delay = `Arrival delay`
  )
