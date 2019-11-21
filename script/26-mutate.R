### Create new columns based on old ones: `dplyr::mutate()`

library(tidyverse)
library(nycflights13)

library(conflicted)
conflict_prefer("filter", "dplyr")
conflict_prefer("lag", "dplyr")

# mutate 1
flights %>%
  mutate(recovery = dep_delay - arr_delay)

# mutate select
flights %>%
  mutate(recovery = dep_delay - arr_delay) %>%
  select(dep_delay, arr_delay, recovery)

# mutate select arrange
flights %>%
  mutate(recovery = dep_delay - arr_delay) %>%
  select(dep_delay, arr_delay, recovery) %>%
  arrange(recovery)

# assign mutate select arrange
recovery_data <-
  flights %>%
  mutate(recovery = dep_delay - arr_delay) %>%
  select(dep_delay, arr_delay, recovery) %>%
  arrange(recovery)

recovery_data

# flights filter select view
flights %>%
  filter(tailnum == "N14228") %>%
  select(year, month, day, dep_time, arr_time) %>%
  view()

# flights filter select mutate lead view
flights %>%
  filter(tailnum == "N14228") %>%
  select(year, month, day, dep_time, arr_time) %>%
  mutate(lead_dep_time = lead(dep_time)) %>%
  view()

# flights filter select mutate lag view
flights %>%
  filter(tailnum == "N14228") %>%
  select(year, month, day, dep_time, arr_time) %>%
  mutate(lag_arr_time = lag(arr_time)) %>%
  view()

# flights filter select mutate lag mutate ground time view
flights %>%
  filter(tailnum == "N14228") %>%
  select(year, month, day, dep_time, arr_time) %>%
  mutate(lag_arr_time = lag(arr_time)) %>%
  mutate(ground_time = dep_time - lag_arr_time) %>%
  view()

# deselect with minus
flights %>%
  filter(tailnum == "N14228") %>%
  select(year, month, day, dep_time, arr_time) %>%
  mutate(lag_arr_time = lag(arr_time)) %>%
  mutate(ground_time = dep_time - lag_arr_time) %>%
  select(-lag_arr_time)

# flights filter view
flights %>%
  filter(tailnum == "N14228") %>%
  view()

# air time N14228
flights %>%
  filter(tailnum == "N14228") %>%
  mutate(cum_air_time = cumsum(air_time)) %>%
  select(air_time, cum_air_time) %>%
  view()

# delayed flag N14228
flights %>%
  filter(tailnum == "N14228") %>%
  mutate(delayed = if_else(arr_delay > 0, "delayed", "on time")) %>%
  select(arr_delay, delayed)

# delayed flag 2 N14228
flights %>%
  filter(tailnum == "N14228") %>%
  mutate(delayed = arr_delay > 0) %>%
  select(arr_delay, delayed)

# filter by flag
flights %>%
  filter(tailnum == "N14228") %>%
  mutate(delayed = arr_delay > 0) %>%
  select(arr_delay, delayed) %>%
  filter(delayed)

# filter by flag inverse
flights %>%
  filter(tailnum == "N14228") %>%
  mutate(delayed = arr_delay > 0) %>%
  select(arr_delay, delayed) %>%
  filter(!delayed)

# on time flights
on_time_flights <-
  flights %>%
  filter(tailnum == "N14228") %>%
  mutate(delayed = arr_delay > 0) %>%
  select(arr_delay, delayed) %>%
  filter(!delayed)
