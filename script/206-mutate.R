### Create new columns

library(tidyverse)
library(nycflights13)

library(conflicted)
conflict_prefer("filter", "dplyr")
conflict_prefer("lag", "dplyr")

# Compute new variables
flights %>%
  mutate(recovery = dep_delay - arr_delay) %>%
  select(dep_delay, arr_delay, recovery)

# Work with new variables
flights %>%
  mutate(recovery = dep_delay - arr_delay) %>%
  select(dep_delay, arr_delay, recovery) %>%
  arrange(recovery)

# Assign to persist:
try(
  flights %>%
  select(recovery)
)

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

# Lead values look across rows:
flights %>%
  filter(tailnum == "N14228") %>%
  select(year, month, day, dep_time, arr_time) %>%
  mutate(lead_dep_time = lead(dep_time)) %>%
  view()

# Lag: opposite of lead:
flights %>%
  filter(tailnum == "N14228") %>%
  select(year, month, day, dep_time, arr_time) %>%
  mutate(lag_arr_time = lag(arr_time)) %>%
  view()

# Compute absence time from NYC airports:
flights %>%
  filter(tailnum == "N14228") %>%
  select(year, month, day, time_hour) %>%
  mutate(lag_time_hour = lag(time_hour)) %>%
  mutate(ground_time = time_hour - lag_time_hour) %>%
  view()

# Create helper, then deselect with `-`:
flights %>%
  filter(tailnum == "N14228") %>%
  select(year, month, day, dep_time, arr_time) %>%
  mutate(lag_arr_time = lag(arr_time)) %>%
  mutate(ground_time = dep_time - lag_arr_time) %>%
  select(-lag_arr_time)

# Cumulative air time:
flights %>%
  filter(tailnum == "N14228") %>%
  mutate(cum_air_time = cumsum(air_time)) %>%
  select(air_time, cum_air_time) %>%
  view()

# Verbose indicators:
flights %>%
  mutate(delayed = if_else(arr_delay > 0, "delayed", "on time")) %>%
  select(arr_delay, delayed)

# Logical flags:
flights %>%
  mutate(delayed = (arr_delay > 0)) %>%
  select(arr_delay, delayed)

# Filter by flag:
flights %>%
  mutate(delayed = arr_delay > 0) %>%
  select(arr_delay, delayed) %>%
  filter(delayed)

# Negation, persistence:
on_time_flights <-
  flights %>%
  mutate(delayed = (arr_delay > 0)) %>%
  select(arr_delay, delayed) %>%
  filter(!delayed)

on_time_flights
