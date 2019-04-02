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

flights %>%
  left_join(airlines, by = "carrier") %>%
  select(dep_time, carrier, name)

airports

?flights

flights %>%
  left_join(airports)

flights %>%
  left_join(airports, by = c("dest" = "faa")) %>%
  select(origin, dest, name)

airports %>%
  filter(faa == "BQN")

flights %>%
  inner_join(airports, by = c("dest" = "faa")) %>%
  select(origin, dest, name)

origin_airports <-
  airports %>%
  select(origin = faa, origin_name = name)

origin_airports

dest_airports <-
  airports %>%
  select(dest = faa, dest_name = name)

dest_airports

flights %>%
  left_join(origin_airports) %>%
  left_join(dest_airports) %>%
  select(origin, origin_name, dest, dest_name)

flights %>%
  left_join(origin_airports, by = "origin") %>%
  left_join(dest_airports, by = "dest") %>%
  select(origin, origin_name, dest, dest_name)

# Keys!

airports %>%
  count(faa)

airports %>%
  count(faa) %>%
  count(n)

dup_airports <-
  bind_rows(airports, sample_n(airports, 100))

dup_airports %>%
  count(faa)

dup_airports %>%
  count(faa) %>%
  count(n)

flights %>%
  left_join(dup_airports, by = c("dest" = "faa")) %>%
  select(origin, dest, name)

flights
