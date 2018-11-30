library(tidyverse)

table4a

table4b

table_cases <-
  table4a %>%
  mutate(type = "cases")
table_cases

table_population <-
  table4a %>%
  mutate(type = "population")
table_population

bind_rows(table_cases, table_population)

bind_rows(cases = table4a, population = table4b, .id = "type")

bind_rows(cases = table4a, population = table4b, .id = "type") %>%
  gather("year", "count", -country, -type) %>%
  select(country, year, type, count) %>%
  arrange(country, year, type)

