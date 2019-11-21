### Pivoting

library(tidyverse)
library(nycflights13)

library(conflicted)
conflict_prefer("filter", "dplyr")
conflict_prefer("lag", "dplyr")

# Two datasets containing the same data, wider and longer:
table1
table2

# How to summarize?
table1 %>%
  group_by(country) %>%
  summarize(
    max_cases = max(cases),
    max_population = max(population)
  ) %>% 
  ungroup()

# Iterate over columns:
table1 %>%
  group_by(country) %>%
  summarize_at(
    vars(cases, population),
    max
  ) %>% 
  ungroup()

# In the longer form, this becomes a grouped operation:
table2 %>%
  group_by(country, type) %>%
  summarize(
    max = max(count)
  ) %>% 
  ungroup()

# Converting to longer form: pivot_longer()
table1

table1 %>%
  pivot_longer(-c(country, year))

# Need to rename and arrange to create table1
table1 %>%
  pivot_longer(-c(country, year)) %>%
  rename(type = name, count = value) %>%
  arrange(country, year, type)

table1 %>%
  pivot_longer(
    -c(country, year),
    names_to = "type",
    values_to = "count"
  ) %>%
  arrange(country, year, type)

# Converting to wider form: pivot_wider()
table2

table2 %>%
  pivot_wider(names_from = type, values_from = count)

table2 %>%
  rename(name = type, value = count) %>%
  pivot_wider()

# Longer form: more useful for plotting all values side by side
table2 %>%
  ggplot() +
  geom_col(aes(country, count, fill = type), position = "dodge") +
  facet_wrap(~year) +
  scale_y_log10()

table1 %>%
  ggplot() +
  geom_col(aes(country, population), position = "dodge", fill = "blue") +
  geom_col(aes(country, cases), position = "dodge", fill = "red") +
  facet_wrap(~year) +
  scale_y_log10()

# Wider form: more useful for plotting a single value
table1 %>%
  ggplot() +
  geom_col(aes(country, cases)) +
  facet_wrap(~year)

table2 %>%
  filter(type == "cases") %>%
  ggplot() +
  geom_col(aes(country, count)) +
  facet_wrap(~year)

# Wider form: the only way to correlate values
table1 %>%
  ggplot() +
  geom_point(aes(cases, population, color = factor(year), shape = country)) +
  scale_x_log10() +
  scale_y_log10()

# Split data
table4a
table4b

# Combine
table4 <-
  bind_rows(
    cases = table4a,
    population = table4b,
    .id = "type"
  )
table4

# Imperfect results -- what is missing?
table4 %>%
  pivot_longer(c(`1999`, `2000`))

# WHO data
who %>%
  view()

who_longer <-
  who %>%
  pivot_longer(
    -(country:year),
    names_pattern = "([a-z_]+)_(.)([0-9]+)",
    names_to = c(".value", "sex", "age")
  )

who_longer

who_longer %>%
  count(sex, age)
