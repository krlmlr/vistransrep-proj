### Summarize data `dplyr::ungroup()`

library(tidyverse)
library(nycflights13)

library(conflicted)
conflict_prefer("filter", "dplyr")
conflict_prefer("lag", "dplyr")

# summary functions
flights %>%
  select(air_time) %>%
  mutate(total_air_time = sum(air_time, na.rm = TRUE))

# condense to one row with summarize
flights %>%
  summarize(total_air_time = sum(air_time, na.rm = TRUE))

# summarize with counts
flights %>%
  summarize(n = n())

# summarize with median
flights %>%
  summarize(median = median(air_time, na.rm = TRUE))

# compute multiple summaries
flights %>%
  summarize(
    n = n(),
    mean_air_time = mean(air_time, na.rm = TRUE),
    median_air_time = median(air_time, na.rm = TRUE)
  )

# Use group_by() and ungroup() to split data into groups
# ALWAYS use ungroup()
flights %>%
  group_by(origin) %>%
  summarize(
    n = n(),
    mean_air_time = mean(air_time, na.rm = TRUE),
    median_air_time = median(air_time, na.rm = TRUE)
  ) %>%
  ungroup()

# Groups can be defined by more than one column
flights %>%
  group_by(year, month, day) %>%
  summarize(
    n = n(),
    mean_air_time = mean(air_time, na.rm = TRUE),
    median_air_time = median(air_time, na.rm = TRUE)
  ) %>%
  ungroup()

# Anonymous summarize for a quick glance
# (column name is defined by the expression)
flights %>%
  group_by(year, month, day) %>%
  summarize(
    n(),
    mean(air_time, na.rm = TRUE),
    median(air_time, na.rm = TRUE)
  ) %>%
  ungroup()

# FIXME: introduce count()?
TRUE

# FIXME: Copy mre examples from 27-summarize.R?
TRUE
