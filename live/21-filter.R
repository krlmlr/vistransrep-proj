library(tidyverse)
library(nycflights13)

?flights

flights %>%
  filter(month == 12)

flights %>%
  filter(month == 12, day == 5)

flights %>%
  filter(between(month, 3, 5))

flights %>%
  filter(between(month, 3, 5)) %>%
  View()

flights %>%
  filter(month %in% c(12, 1, 2))

flights %>%
  filter(is.na(dep_time))

flights %>%
  filter(month == 12 & day == 5)

flights %>%
  filter(month == 12 | month == 1 | month == 2)

flights %>%
  filter(!is.na(dep_time))
