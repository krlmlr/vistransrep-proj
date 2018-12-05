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

flights %>%
  mutate(
    distance_rank = percent_rank(distance),
    distance_bin = cut(distance_rank, c(0, .25, .5, .75, 1), right = FALSE)
  ) %>%
  select(distance_rank, distance, everything()) %>%
  count(distance_bin)
