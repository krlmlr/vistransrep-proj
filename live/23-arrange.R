library(tidyverse)
library(nycflights13)

library(conflicted)
conflict_prefer("filter", "dplyr")

flights %>%
  arrange(dep_time)

flights %>%
  arrange(dep_time, dep_delay)

flights %>%
  arrange(dep_time, dep_delay) %>%
  view()

flights %>%
  filter(dep_time < 600) %>%
  arrange(dep_time, dep_delay) %>%
  view()

flights %>%
  filter(dep_time < 600) %>%
  filter(month >= 10) %>%
  arrange(dep_time, dep_delay) %>%
  view()

flights %>%
  filter(month == 4) %>%
  arrange(is.na(dep_time)) %>%
  view()

flights %>%
  filter(month == 4) %>%
  arrange(!is.na(dep_time))

flights %>%
  filter(month == 4) %>%
  filter(day == 1) %>%
  arrange(!is.na(dep_time)) %>%
  view()

# Descending
flights %>%
  filter(month == 4) %>%
  filter(day == 1) %>%
  arrange(arr_time) %>%
  view()

flights %>%
  filter(month == 4) %>%
  filter(day == 1) %>%
  arrange(-arr_time) %>%
  view()

flights %>%
  filter(month == 4) %>%
  filter(day == 1) %>%
  arrange(desc(arr_time)) %>%
  view()

flights %>%
  filter(month == 4) %>%
  filter(day == 1) %>%
  arrange(dep_time, desc(arr_time)) %>%
  view()
