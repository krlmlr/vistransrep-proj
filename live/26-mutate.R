library(tidyverse)
library(nycflights13)

library(conflicted)
conflict_prefer("filter", "dplyr")
conflict_prefer("lag", "dplyr")


flights %>%
  mutate(recovery = dep_delay - arr_delay)

flights %>%
  mutate(recovery = dep_delay - arr_delay) %>%
  select(dep_delay, arr_delay, recovery)

flights %>%
  mutate(recovery = dep_delay - arr_delay) %>%
  select(dep_delay, arr_delay, recovery) %>%
  arrange(recovery)

recovery_data <-
  flights %>%
  mutate(recovery = dep_delay - arr_delay) %>%
  select(dep_delay, arr_delay, recovery) %>%
  arrange(recovery)

recovery_data

flights %>%
  head() %>%
  view()

flights %>%
  filter(tailnum == "N14228") %>%
  select(year, month, day, dep_time, arr_time) %>%
  view()

flights %>%
  filter(tailnum == "N14228") %>%
  select(year, month, day, dep_time, arr_time) %>%
  mutate(lead_dep_time = lead(dep_time)) %>%
  view()

flights %>%
  filter(tailnum == "N14228") %>%
  select(year, month, day, dep_time, arr_time) %>%
  mutate(lag_arr_time = lag(arr_time)) %>%
  view()

flights %>%
  filter(tailnum == "N14228") %>%
  select(year, month, day, dep_time, arr_time) %>%
  mutate(lag_arr_time = lag(arr_time)) %>%
  mutate(ground_time = dep_time - lag_arr_time) %>%
  view()

flights %>%
  filter(tailnum == "N14228") %>%
  select(year, month, day, dep_time, arr_time) %>%
  mutate(lag_arr_time = lag(arr_time)) %>%
  mutate(ground_time = dep_time - lag_arr_time) %>%
  select(-lag_arr_time) %>%
  view()
