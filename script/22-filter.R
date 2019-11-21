### Filtering: `dplyr::filter()`

library(tidyverse)
library(nycflights13)

library(conflicted)
conflict_prefer("filter", "dplyr")

# example data
flights
?flights

# all filters are logical: numeric comparison
flights %>%
  filter(dep_time < 600)

# filter: logical result from function
flights %>%
  filter(is.na(dep_time))

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
