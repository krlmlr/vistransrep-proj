library(tidyverse)
library(nycflights13)

flights %>%
  count()

flights %>%
  count(year, month, day)

flights %>%
  count(year, month, day, wt = air_time)

flights %>%
  count(year, month, day, wt = air_time / 24 / 365)

# NA!
flights %>%
  group_by(year, month, day) %>%
  summarize(n = sum(air_time / 24 / 365)) %>%
  ungroup()

flights %>%
  group_by(year, month, day) %>%
  summarize(n = sum(air_time / 24 / 365, na.rm = TRUE)) %>%
  ungroup()

flights %>%
  filter(!is.na(air_time)) %>%
  group_by(year, month, day) %>%
  summarize(n = sum(air_time / 24 / 365)) %>%
  ungroup()

flights %>%
  group_by(year, month, day) %>%
  summarize(n = n()) %>%
  ungroup()
