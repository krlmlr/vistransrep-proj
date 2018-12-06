library(tidyverse)

table4a

table4b

table4a_long <-
  table4a %>%
  gather(year, cases, -country)

table4b_long <-
  table4b %>%
  gather(year, populaton, -country)

left_join(table4a, table4b)
