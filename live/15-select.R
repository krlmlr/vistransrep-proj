library(tidyverse)
library(nycflights13)


flights

flights %>%
  select(tailnum)

flights %>%
  select(year, month, day, tailnum)

flights %>%
  select(year:day, tailnum)

flights %>%
  select(-year, -month, -day)

flights %>%
  select(-year:-day)

flights %>%
  select(1:10)

flights %>%
  select(-1:-10)

flights %>%
  select(ends_with("delay"))

flights %>%
  select(`year`)

funny <-
  tibble(a = 1:3, `funny variable` = 4:6)

funny %>%
  select(`funny variable`)

funny %>%
  rename(fun = `funny variable`)

flights %>%
  rename(Jahr = year, Monat = month, Tag = day)

flights %>%
  select(Jahr = year, Monat = month, Tag = day)

flights %>%
  select(day, month, year)

flights %>%
  select(day, month, year, everything())
