library(tidyverse)
library(nycflights13)

length(flights)
names(flights)

flights$year

flights %>%
  mutate(year = year + 1)

flights %>%
  mutate(hallo = "Hi!") %>%
  select(hallo, everything())

flights %>%
  transmute(aufgeholt = dep_delay - arr_delay)

flights %>%
  transmute(year, month, day, aufgeholt = dep_delay - arr_delay)

flights %>%
  pull(year)

flights %>%
  mutate(year = NULL)

flights %>%
  select(-year)
