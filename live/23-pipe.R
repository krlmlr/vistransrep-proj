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

arrange(filter(flights, carrier == "UA"), arr_delay)
