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
  mutate(distance_bin = ntile(distance, 4)) %>%
  group_by(distance_bin) %>%
  summarize(mean(distance), n())

flights %>%
  mutate(distance_bin = cut(percent_rank(distance), c(0, .25, .5, .75, 1), right = FALSE)) %>%
  group_by(distance_bin) %>%
  summarize(mean(distance), n())
