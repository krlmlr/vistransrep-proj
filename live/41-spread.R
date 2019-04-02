library(tidyverse)
library(nycflights13)

library(conflicted)
conflict_prefer("filter", "dplyr")
conflict_prefer("lag", "dplyr")


table1
table2

table1 %>%
  group_by(country) %>%
  summarize(
    max_cases = max(cases),
    max_population = max(population)
  )

table1 %>%
  group_by(country) %>%
  summarize_at(
    vars(cases, population),
    max
  )

table2 %>%
  group_by(country, type) %>%
  summarize(
    max = max(count)
  )

table1

table1 %>%
  gather(type, count, )

table2
