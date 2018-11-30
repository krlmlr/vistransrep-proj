library(tidyverse)

table3

table3 %>%
  separate(rate, into = c("cases", "population"))

table3 %>%
  separate(
    rate,
    into = c("cases", "population"),
    convert = TRUE
  )

table1 %>%
  unite(
    "rate",
    cases, population
  )

table1 %>%
  mutate(
    rate = str_c(cases, "_", population)
  )

table1 %>%
  transmute(
    country, year,
    rate = str_c(cases, "_", population)
  )

table1 %>%
  mutate(
    rate = paste0(cases, "_", population)
  )
