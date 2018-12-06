library(tidyverse)

table3

table3 %>%
  separate(rate, into = c("cases", "population"))

table3 %>%
  separate(
    rate,
    into = c("cases", "population"),
    sep = "[^0-9]"
  )

table3 %>%
  separate(
    rate,
    into = c("cases", "population"),
    sep = "/"
  )

table3 %>%
  separate(
    rate,
    into = c("cases", "population"),
    sep = "/",
    convert = TRUE
  )

table1 %>%
  unite("rate", cases, population)

table1 %>%
  unite(
    "rate",
    cases, population
  )

table1 %>%
  unite(
    "rate",
    cases, population,
    sep = "/"
  )

table2 %>%
  unite(
  )
