library(tidyverse)
library(nycflights13)


flights %>%
  filter(month == 11)

flights %>%
  filter(month == 11, day == 29)

flights %>%
  filter(month > 11)

flights %>%
  filter(month >= 11)

flights %>%
  filter(between(month, 2, 5))

flights %>%
  filter(month %in% c(12, 1, 2))

1:12
between(1:12, 2, 5)

flights %>%
  filter(is.na(arr_time))
