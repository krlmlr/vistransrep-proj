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
