### Sort rows: `dplyr::arrange()`

library(tidyverse)
library(nycflights13)

library(conflicted)
conflict_prefer("filter", "dplyr")

# simple arrange
flights %>%
  arrange(dep_time)

# double arrange
flights %>%
  arrange(dep_time, dep_delay)

# double arrange view
flights %>%
  arrange(dep_time, dep_delay) %>%
  view()

# filter double arrange view
flights %>%
  filter(dep_time < 600) %>%
  arrange(dep_time, dep_delay) %>%
  view()

# filter 2 double arrange view
flights %>%
  filter(dep_time < 600) %>%
  filter(month >= 10) %>%
  arrange(dep_time, dep_delay) %>%
  view()

# another filter arrange view
flights %>%
  filter(month == 4) %>%
  arrange(is.na(dep_time)) %>%
  view()

# another filter arrange
flights %>%
  filter(month == 4) %>%
  arrange(!is.na(dep_time))

# another 2 filters arrange view
flights %>%
  filter(month == 4) %>%
  filter(day == 1) %>%
  arrange(!is.na(dep_time)) %>%
  view()

# another 2 filters arrange arr time view
flights %>%
  filter(month == 4) %>%
  filter(day == 1) %>%
  arrange(arr_time) %>%
  view()

# Descending
flights %>%
  filter(month == 4) %>%
  filter(day == 1) %>%
  arrange(-arr_time) %>%
  view()

# Descending 2
flights %>%
  filter(month == 4) %>%
  filter(day == 1) %>%
  arrange(desc(arr_time)) %>%
  view()

# Ascending and descending
flights %>%
  filter(month == 4) %>%
  filter(day == 1) %>%
  arrange(dep_time, desc(arr_time)) %>%
  view()
