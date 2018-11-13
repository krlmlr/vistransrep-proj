library(tidyverse)
library(nycflights13)

flights %>%
  select(year, month, day)

flights %>%
  select(year:day)

flights %>%
  select(-year, -month, -day)

flights %>%
  select(-year:-day)

flights %>%
  select(ends_with("_delay"))

flights %>%
  select(ends_with("_delay"), everything())

flights %>%
  select(tag = day, monat = month, jahr = year)

flights %>%
  rename(tag = day, monat = month, jahr = year)

flights %>%
  rename(`Tag des Monats` = day, `Monat des Jahres` = month, Jahr = year) %>%
  select(-`Tag des Monats`)

flights %>%
  rename("Tag des Monats" := day, "Monat des Jahres" = month, Jahr = year)
