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
  gather(type, count, -country, -year)

table1 %>%
  gather(type, count, type:count)

table1 %>%
  gather(type, count, -country, -year) %>%
  arrange(country, year, type)

table2

table2 %>%
  spread(type, count)

# Changing color
table2 %>%
  filter(type == "cases") %>%
  ggplot() +
  geom_col(aes(country, count, fill = year)) +
  facet_wrap(~year)

table2 %>%
  filter(type == "cases") %>%
  ggplot() +
  geom_col(aes(country, count, fill = factor(year))) +
  facet_wrap(~year)

table1 %>%
  ggplot() +
  geom_col(aes(country, cases, fill = factor(year))) +
  facet_wrap(~year)

# Binding

table4a

table4b


cases_tbl <-
  table4a %>%
  mutate(type = "cases")

cases_tbl

population_tbl <-
  table4b %>%
  mutate(type = "population")

population_tbl

bind_rows(cases_tbl, population_tbl)

bind_rows(cases_tbl, population_tbl) %>%
  gather(year, count, -country, -type)

bind_rows(cases_tbl, population_tbl) %>%
  gather(year, count, -country, -type) %>%
  spread(type, count)

bind_rows(cases = table4a, population = table4b, .id = "type")

# mpg
mpg %>%
  mutate(id = row_number()) %>%
  select(id, everything()) %>%
  gather(cty_hwy, value, hwy, cty) %>%
  arrange(id)

mpg %>%
  select(displ, hwy, cty) %>%
  gather(cty_hwy, value, -displ) %>%
  ggplot() +
  geom_jitter(aes(displ, value, color = cty_hwy))
