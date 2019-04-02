library(tidyverse)
library(nycflights13)

library(conflicted)
conflict_prefer("filter", "dplyr")
conflict_prefer("lag", "dplyr")


# Simple counts
flights %>%
  count()

flights %>%
  summarize(n = n())

# Grouped counts
flights %>%
  count(origin)

flights %>%
  count(origin, wt = air_time)

flights %>%
  count(year, month, day)

# Weighted counts
flights %>%
  count(wt = air_time)

flights %>%
  summarize(n = sum(air_time, na.rm = TRUE))

flights %>%
  summarize(n = median(air_time, na.rm = TRUE))

flights %>%
  summarize(
    mean_air_time = mean(air_time, na.rm = TRUE),
    median_air_time = median(air_time, na.rm = TRUE)
  )

flights %>%
  group_by(origin) %>%
  summarize(
    mean_air_time = mean(air_time, na.rm = TRUE),
    median_air_time = median(air_time, na.rm = TRUE)
  )

flights %>%
  group_by(year, month, day) %>%
  summarize(
    mean_air_time = mean(air_time, na.rm = TRUE),
    median_air_time = median(air_time, na.rm = TRUE)
  )

flights %>%
  group_by(origin) %>%
  summarize(
    mean_air_time = mean(air_time, na.rm = TRUE),
    median_air_time = median(air_time, na.rm = TRUE)
  ) %>%
  ungroup()

flights %>%
  group_by(year, month, day) %>%
  summarize(
    mean_air_time = mean(air_time, na.rm = TRUE),
    median_air_time = median(air_time, na.rm = TRUE)
  ) %>%
  ungroup()

flights %>%
  group_by(year, month, day) %>%
  summarize(
    mean(air_time, na.rm = TRUE),
    median(air_time, na.rm = TRUE)
  ) %>%
  ungroup()

flights_by_day <-
  flights %>%
  group_by(year, month, day) %>%
  summarize(
    mean_air_time = mean(air_time, na.rm = TRUE),
    median_air_time = median(air_time, na.rm = TRUE)
  ) %>%
  ungroup()

flights_by_day

