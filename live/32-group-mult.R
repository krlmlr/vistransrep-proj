library(tidyverse)
library(nycflights13)


flights %>%
  count(carrier, origin)

flights %>%
  group_by(carrier, origin) %>%
  summarize(n = sum(distance))

flights %>%
  group_by(carrier, origin)

flights %>%
  group_by(carrier, origin) %>%
  summarize(n = sum(distance)) %>%
  ungroup()

flights %>%
  group_by(carrier, origin) %>%
  summarize(n = sum(distance)) %>%
  ungroup() %>%
  arrange(desc(n)) %>%
  filter(n > 100000)

flights %>%
  group_by(carrier, origin) %>%
  mutate(total_distance = sum(distance)) %>%
  ungroup() %>%
  select(total_distance, distance, carrier, origin, everything()) %>%
  View()

flights %>%
  count(year, month, day) %>%
  mutate(lag_n = lag(n, default = mean(n))) %>%
  mutate(diff_n = n - lag_n)

flights %>%
  count(origin, year, month, day) %>%
  group_by(origin) %>%
  mutate(lag_n = lag(n)) %>%
  mutate(diff_n = n - lag_n)
