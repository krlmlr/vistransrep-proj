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
      quantile(distance, c(.25, .5, .75))
    )
  )
