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
  mutate(cumul_distance = cumsum(distance)) %>%
  select(cumul_distance, distance, everything()) %>%
  View()

flights %>%
  mutate(dep_delay - arr_delay) %>%
  mutate(distance / air_time)

flights %>%
  transmute(
    recovery = dep_delay - arr_delay,
    mutate(speed = distance / air_time)
  )
