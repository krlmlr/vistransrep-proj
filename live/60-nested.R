library(tidyverse)
library(nycflights13)

flights %>%
  nest(-month)

flights %>%
  nest(-month) %>%
  arrange(month) %>%
  mutate(
    new_column = map_int(data, ~nrow(.))
  )

flights %>%
  nest(-month) %>%
  arrange(month) %>%
  mutate(
    new_column = map_int(data, ~nrow(.))
  )

dir("data", pattern = "csv$", full.names = TRUE) %>%
  enframe()

dir("data", pattern = "csv$", full.names = TRUE) %>%
  enframe() %>%
  mutate(
    data = map(value, ~readLines(.))
  )

flights %>%
  nest(-month) %>%
  unnest()
