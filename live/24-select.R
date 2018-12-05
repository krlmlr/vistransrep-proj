library(tidyverse)
library(nycflights13)

flights %>%
  select(year, month, day)

flights %>%
  select(-year, -month, -day)

flights %>%
  select(Jahr = year, Monat = month, Tag = day)
