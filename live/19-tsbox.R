library(tidyverse)
library(nycflights13)
library(tsbox)

time_series_1 <-
  flights %>%
  mutate(date = lubridate::make_date(year, month, day)) %>%
  group_by(origin, date) %>%
  summarize(
    dep_delay = median(dep_delay, na.rm = TRUE)
  ) %>%
  ungroup()

time_series_1

time_series_1 %>%
  ts_xts()

time_series_1 %>%
  ts_xts() %>%
  ts_tbl()


time_series_1 %>%
  ts_plot()

