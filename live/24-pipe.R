library(tidyverse)
library(nycflights13)

library(conflicted)
conflict_prefer("filter", "dplyr")


early_flights <-
  flights %>%
  filter(dep_time < 600)

early_flights <- filter(flights, dep_time < 600)

?"%>%"

flights %>%
  filter(dep_time < 600) %>%
  filter(month >= 10) %>%
  arrange(dep_time, dep_delay) %>%
  view()

