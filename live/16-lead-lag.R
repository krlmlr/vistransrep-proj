library(tidyverse)
library(nycflights13)

flights %>%
  head() %>%
  pull(tailnum)

flights %>%
  filter(tailnum == "N24211")

flights %>%
  filter(tailnum == "N24211") %>%
  transmute(
    prev_3_dep_time = lag(dep_time, 3),
    prev_dep_time = lag(dep_time),
    dep_time,
    next_dep_time = lead(dep_time)
  )

flights %>%
  group_by(tailnum) %>%
  transmute(
    prev_3_dep_time = lag(dep_time, 3),
    prev_dep_time = lag(dep_time),
    dep_time,
    next_dep_time = lead(dep_time)
  ) %>%
  ungroup()
