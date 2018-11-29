library(tidyverse)
library(nycflights13)


flights %>%
  filter(month == 11) %>%
  filter(day == 29) %>%
  filter(dep_time < 800) %>%
  filter(carrier == "UA") %>%
  filter(distance >= 1000) %>%
  arrange(arr_time) %>%
  View()

# Equivalent:

flights %>%
  filter(month == 11)

filter(flights, month == 11)

november_flights <- filter(flights, month == 11)
today_flights <- filter(november_flights, day == 29)
today_flights_united <- filter(today_flights, carrier == "UA")
early_today_flights <- filter(today_flights_united, dep_time < 800)
far_early_today_flights <- filter(early_today_flights, distance >= 1000)

View(arrange(far_early_today_flights, arr_time))


. <- flights
. <- filter(., month == 11)
. <- filter(., day == 29)
. <- filter(., carrier == "UA")
. <- filter(., dep_time < 800)
far_early_today_flights <- filter(., distance >= 1000)

View(arrange(far_early_today_flights, arr_time))

filter(
  filter(
    filter(flights, month == 11),
    day == 29
  ),
  carrier == "UA"
) %>%
  filter(dep_time < 800) %>%
  filter(distance >= 1000) %>%
  arrange(arr_time) %>%
  View()
