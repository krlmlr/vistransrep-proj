library(tidyverse)
library(nycflights13)

# install.packages("conflicted")
library(conflicted)

conflict_prefer("filter", "dplyr")
conflict_prefer("lag", "dplyr")


flights %>%
  count()

flights %>%
  count(year, month, day)

flights %>%
  count(year, month, day, wt = distance)

flights %>%
  group_by(year, month, day) %>%
  summarize(sum_distance = sum(distance)) %>%
  ungroup()

flights %>%
  group_by(year, month, day) %>%
  summarize(n = n()) %>%
  ungroup()

flights %>%
  summarize(n = n())

flights %>%
  group_by(year, month, day) %>%
  summarize(mean(dep_delay)) %>%
  ungroup()

flights %>%
  group_by(year, month, day) %>%
  summarize(mean(dep_delay, na.rm = TRUE)) %>%
  ungroup()

flights %>%
  group_by(year, month, day) %>%
  summarize(first(dep_time)) %>%
  ungroup()

flights %>%
  group_by(year, month, day) %>%
  slice(1) %>%
  ungroup()

flights %>%
  group_by(year, month, day)

flights %>%
  group_by(year, month, day) %>%
  summarize(first(dep_time))

flights %>%
  group_by(year, month, day) %>%
  summarize(first(dep_time)) %>%
  ungroup()

