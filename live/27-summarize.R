library(tidyverse)
library(nycflights13)

library(conflicted)
conflict_prefer("filter", "dplyr")
conflict_prefer("lag", "dplyr")


flights %>%
  count()

flights %>%
  count(wt = air_time)

flights %>%
  summarize(n = sum(air_time, na.rm = TRUE))
