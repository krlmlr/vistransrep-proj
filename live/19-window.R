library(tidyverse)
library(nycflights13)

# install.packages("conflicted")
library(conflicted)

conflict_prefer("filter", "dplyr")
conflict_prefer("lag", "dplyr")



flights_cum_dist <-
  flights %>%
  group_by(year, month, day) %>%
  mutate(cum_distance = cumsum(distance)) %>%
  ungroup() %>%
  select(cum_distance, everything())

flights_cum_dist %>%
  filter(month == 1, day == 1)

flights_cum_dist %>%
  filter(month == 1, day == 2)

flights %>%
  group_by(year, month, day) %>%
  mutate(sum_distance = sum(distance)) %>%
  ungroup() %>%
  select(sum_distance, everything()) %>%
  View()

flights %>%
  group_by(year, month, day) %>%
  mutate(sum_distance = sum(distance)) %>%
  ungroup() %>%
  mutate(share_distance = distance / sum_distance) %>%
  select(share_distance, everything())
