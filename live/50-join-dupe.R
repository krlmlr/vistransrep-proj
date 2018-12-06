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

