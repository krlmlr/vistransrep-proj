library(tidyverse)
library(nycflights13)

flights

airlines

flights %>%
  select(1:3, carrier) %>%
  left_join(airlines)

flights %>%
  select(1:3, carrier) %>%
  left_join(bind_rows(airlines, airlines))

airlines %>%
  count(carrier) %>%
  filter(n > 1)

flights %>%
  select(1:3, carrier) %>%
  left_join(airlines, by = "carrier")
