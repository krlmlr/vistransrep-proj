### Groupwise mutate and join with lag

library(tidyverse)
library(nycflights13)

library(here)

library(conflicted)
conflict_prefer("filter", "dplyr")
conflict_prefer("lag", "dplyr")


data <- expand_grid(a = 1:2, b = 2:3)

wide_data <-
  data %>%
  mutate(c1 = 1:4, c2 = 2:5, c3 = 3:6, c4 = 4:7)

wide_data %>%
  group_by(a) %>%
  mutate_at(vars(c1:c4), lag)

long_data <-
  wide_data %>%
  pivot_longer(
    -c(a, b),
    names_pattern = "c(.)",
    names_to = c("year")
  )

last_year_data <-
  long_data %>%
  group_by(a) %>%
  mutate(year = lag(year)) %>%
  ungroup() %>%
  rename(next_year_value = value)

long_data %>%
  left_join(last_year_data, by = c("a", "b", "year"))
