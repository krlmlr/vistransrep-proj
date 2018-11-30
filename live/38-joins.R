library(tidyverse)
library(nycflights13)

flights_dep_time <-
  flights %>%
  select(month, day, dep_time, carrier)

airlines

flights_dep_time %>%
  left_join(airlines)

flights_dep_time %>%
  left_join(airlines, by = "carrier")

flights_dep_time_od <-
  flights %>%
  select(month, day, dep_time, carrier, origin, dest)

flights_dep_time_od

flights_dep_time_od %>%
  left_join(
    airports,
    by = c("origin" = "faa")
  )

flights_dep_time_od %>%
  left_join(
    airports,
    by = c("origin" = "faa")
  ) %>%
  View()

airport_names <-
  airports %>%
  select(faa, name)

flights_dep_time_od %>%
  left_join(
    airports,
    by = c("origin" = "faa")
  )

airports %>%
  count(faa) %>%
  filter(n > 1)

flights_dep_time_od %>%
  left_join(
    bind_rows(airports, airports),
    by = c("origin" = "faa")
  )

airports %>%
  semi_join(
    flights,
    by = c("faa" = "origin")
  )

airports %>%
  semi_join(
    flights,
    by = c("faa" = "dest")
  )

airports %>%
  anti_join(
    flights,
    by = c("faa" = "dest")
  )
