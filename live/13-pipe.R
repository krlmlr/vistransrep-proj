library(tidyverse)
library(nycflights13)

arrange(
  filter(
    filter(flights, month == 11),
    day == 13
  ),
  dep_delay
)

arrange(
  dep_delay,
  .data = filter(
    day == 13,
    .data = filter(
      month == 11,
      .data = flights
    )
  ),
)

november_flights <- filter(flights, month == 11)
today_flights <- filter(november_flights, day == 13)
today_flights_ewr <- filter(today_flights, origin == "EWR")
today_flights_by_dep_delay <- arrange(today_flights_ewr, dep_delay)

flights %>%
  filter(month == 11) %>%
  filter(day == 13) %>%
  filter(origin == "EWR") %>%
  arrange(dep_delay)

arrange(
  filter(
    filter(flights, month == 11),
    day == 13
  ),
  dep_delay
)


my_flights <-
  flights %>%
  filter(month == 11) %>%
  filter(day == 13) %>%
  filter(origin == "EWR") %>%
  arrange(dep_delay)
