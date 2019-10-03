### Filtering: `dplyr::filter()`

library(tidyverse)
library(nycflights13)

library(conflicted)
conflict_prefer("filter", "dplyr")

# example data
flights
?flights

# filter 1
flights %>%
  filter(dep_time < 600)

# filter 2
flights %>%
  filter(is.na(dep_time))

# one AND the other
flights %>%
  filter(dep_time < 600 & arr_time > 2200)

flights %>%
  filter(dep_time >= 700 & arr_time < 800)

# one OR the other
flights %>%
  filter(dep_time < 600 | arr_time > 2200)
