library(tidyverse)
library(nycflights13)


flights %>%
  summarize(
    quartiles = list(
      quantile(distance, c(.25, .5, .75))
    )
  )

flights %>%
  summarize(
    quartiles = list(
      quantile(distance, c(.25, .5, .75))
    )
  ) %>%
  pull()

flights %>%
  mutate(
    distance_class = cut(
      distance,
      c(-Inf, quantile(distance, c(.25, .5, .75)), Inf)
    )
  ) %>%
  transmute(
    as.integer(distance_class),
    distance_class,
    distance
  ) %>%
  group_by(distance_class) %>%
  summarize(mean(distance), n())

flights %>%
  filter(distance %in% c(502, 872, 1389))
