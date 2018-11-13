library(tidyverse)
library(nycflights13)

airlines

airports

x <- tibble(a = c(1, 1), b = 1:2)
y <- tibble(a = c(1, 1, 1), c = 3:5)

left_join(x, y)

x %>%
  count(a) %>%
  filter(n > 1)

flights %>%
  left_join(airlines) %>%
  select(carrier_name = name, carrier, everything())

flights %>%
  left_join(airlines, by = "carrier") %>%
  select(carrier_name = name, carrier, everything())

flights %>%
  left_join(airlines, by = "carrier") %>% I
  rename(carrier_name = name) %>%
  left_join(airports, by = c("dest" = "faa")) %>%
  select(airport_name = name, dest, carrier_name, carrier, everything())

airline_names <-
  airlines %>%
  rename(carrier_name = name)

airports_for_dest <-
  airports %>%
  select(airport_name = name, dest = faa)

flights %>%
  left_join(airline_names, by = "carrier") %>%
  left_join(airports_for_dest, by = "dest") %>%
  select(airport_name, dest, carrier_name, carrier, everything())
