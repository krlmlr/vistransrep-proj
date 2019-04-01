library(tidyverse)
library(nycflights13)

library(conflicted)
conflict_prefer("filter", "dplyr")


flights %>%
  mutate(recovery = dep_delay - arr_delay)
