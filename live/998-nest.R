### Joins

library(tidyverse)
library(nycflights13)

library(here)

library(conflicted)
conflict_prefer("filter", "dplyr")
conflict_prefer("lag", "dplyr")


flights %>%
  nest(data = -c(year, month, day))

flights_nested <-
  flights %>%
  nest(flights_data = -c(year, month, day)) %>%
  mutate(nrow = map_int(flights_data, ~ nrow(.)))

weather_nested <-
  weather %>%
  nest(weather_data = -c(year, month, day))

flights_nested %>%
  left_join(weather_nested)
