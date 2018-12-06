library(tidyverse)

table4a

table4b

table4a_long <-
  table4a %>%
  gather(year, count, -country)

table4b_long <-
  table4b %>%
  gather(year, count, -country)
