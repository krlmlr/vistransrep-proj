library(tidyverse)

table1

table2

table1 %>%
  mutate(rate = cases / population) %>%
  ggplot(aes(x = year, y = rate)) +
  geom_line() +
  geom_point() +
  facet_wrap(~ country)

table2 %>%
  ggplot(aes(x = year, y = count)) +
  geom_line() +
  geom_point() +
  facet_grid(type ~ country, scales = "free_y")

table1 %>%
  gather("type", "count", cases, population)

table1 %>%
  gather("type", "count", cases, population) %>%
  arrange(country, year, type)

table2

table2 %>%
  spread(type, count)

table1 %>%
  mutate("new_column" = 1)

table1 %>%
  group_by(country) %>%
  mutate(lag_cases = lag(cases)) %>%
  ungroup()

table1 %>%
  group_by(country) %>%
  mutate(lag_cases = lag(cases)) %>%
  gather("type", "count", -country, -year)
