library(tidyverse)
library(nycflights13)

flights %>%
  arrange(dep_time, sched_dep_time) %>%
  View()

flights %>%
  arrange(dep_time, sched_dep_time)

arrange(filter, dep_time, sched_dep_time)
