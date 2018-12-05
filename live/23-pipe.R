library(tidyverse)
library(nycflights13)

flights %>%
  arrange(dep_time, sched_dep_time)

arrange(flights, dep_time, sched_dep_time)

flights %>%
  arrange(dep_time, sched_dep_time) %>%
  View()

View(arrange(flights, dep_time, sched_dep_time))

flights %>%
  filter(carrier == "UA") %>%
  arrange(arr_delay)

arrange(
  filter(
    flights,
    carrier == "UA"
  ),
  arr_delay
)

flights %>%
  filter(carrier == "UA") %>%
  filter(dep_time < 800) %>%
  filter(dest != "HNL") %>%
  filter(distance > 2000) %>%
  arrange(arr_delay)

far_early_ua_flights <-
  flights %>%
  filter(carrier == "UA") %>%
  filter(dep_time < 800) %>%
  filter(dest != "HNL") %>%
  filter(distance > 2000) %>%
  arrange(arr_delay)

ua_flights <- filter(flights, carrier == "UA")
non_hnl_ua_flights <- filter(ua_flights, carrier == "UA")
early_ua_flights <- filter(ua_flights, dep_time < 800)
