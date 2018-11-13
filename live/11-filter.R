library(tidyverse)
library(nycflights13)

flights

filter(flights, month == 11)

flights

november_flights <- filter(flights, month == 11)
november_flights
View(november_flights)

filter(november_flights, day == 13)

filter(.data = flights, origin != "EWR")

filter(.data = flights, origin != "EWR" & origin != "LGA")

filter(.data = flights, origin != "EWR", origin != "LGA")

filter(.data = flights, is.na(dep_delay))

filter(.data = flights, !is.na(dep_delay))

filter(.data = flights, is.na(dep_delay) | is.na(arr_delay))
