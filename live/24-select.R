library(tidyverse)
library(nycflights13)

flights %>%
  select(year, month, day)

flights %>%
  select(-year, -month, -day)

flights %>%
  select(Jahr = year, Monat = month, Tag = day)

flights %>%
  rename(Jahr = year, Monat = month, Tag = day)

flights %>%
  select(starts_with("arr_"))

flights %>%
  select(starts_with("arr_"), starts_with("dep_"))

flights %>%
  select(-year, -month, -day)

flights %>%
  select(tailnum, everything())

flights %>%
  select(tailnum, everything()) %>%
  View()

flights %>%
  select(`Geplante Abflugzeit` = sched_dep_time)

flights %>%
  select(`Geplante Abflugzeit` = sched_dep_time) %>%
  rename(sdt = `Geplante Abflugzeit`)
