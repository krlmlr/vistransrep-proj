### Summary-plots

library(tidyverse)
library(nycflights13)

library(conflicted)
conflict_prefer("filter", "dplyr")
conflict_prefer("lag", "dplyr")


flights

lm(air_time ~ distance, flights)

fit_model <- function(data) {
  lm(air_time ~ distance, data)
}

flights %>%
  fit_model()

flights %>%
  filter(month == 1) %>%
  fit_model()

flights %>%
  nest(data = -month)

flights %>%
  nest(data = -month) %>%
  mutate(model = map(data, fit_model))
