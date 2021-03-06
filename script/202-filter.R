### Filtering

library(tidyverse)
library(nycflights13)

library(conflicted)
conflict_prefer("filter", "dplyr")

# show example data
flights

# access help for example data
## ?flights

# all filters are logical: numeric comparison
flights %>%
  filter(dep_time < 600)

early_flights <-
  flights %>%
  filter(dep_time < 600)

# filter: NA values
flights %>%
  filter(is.na(dep_time))

flights %>%
  filter(is.na(dep_time - arr_time))

# one AND the other
flights %>%
  filter(dep_time < 600 & arr_time > 2200)

flights %>%
  filter(dep_time >= 700 & arr_time < 800)

flights %>%
  filter(dep_time >= 700) %>%
  filter(arr_time < 800)

# one OR the other
flights %>%
  filter(dep_time < 600 | arr_time > 2200)
