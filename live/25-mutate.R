library(tidyverse)
library(nycflights13)

flights %>%
  mutate(recovery = dep_delay - arr_delay)

flights %>%
  mutate(recovery = dep_delay - arr_delay) %>%
  select(recovery, everything())

flights %>%
  mutate(recovery = dep_delay - arr_delay) %>%
  select(recovery, everything()) %>%
  View()

flights %>%
  mutate(
    recovery = dep_delay - arr_delay,
    speed = distance / air_time
  )

flights %>%
  mutate(recovery = dep_delay - arr_delay) %>%
  mutate(speed = distance / air_time)

flights %>%
  mutate(cumul_distance = cumsum(distance))
