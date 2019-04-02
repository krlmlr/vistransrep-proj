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

table2 %>%
  group_by(country) %>%
  summarize(
    max_cases = max(cases),
    max_population = max(population)
  )
