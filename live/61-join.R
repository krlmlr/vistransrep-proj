library(tidyverse)
library(nycflights13)

library(here)

library(conflicted)
conflict_prefer("filter", "dplyr")
conflict_prefer("lag", "dplyr")


airlines

flights %>%
  left_join(airlines)

flights %>%
  left_join(airlines) %>%
  select(dep_time, carrier, name)

