library(tidyverse)
library(nycflights13)

flights %>%
  mutate(recovery = dep_delay - arr_delay)
