library(tidyverse)
library(nycflights13)


flights %>%
  arrange(arr_time)

flights %>%
  arrange(arr_time, sched_dep_time)

flights %>%
  arrange(desc(arr_time))

flights %>%
  arrange(-arr_time, dep_time)
