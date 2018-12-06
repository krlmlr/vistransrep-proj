library(tidyverse)
library(nycflights13)

airline_names <-
  airlines %>%
  rename(carrier_name = name)

dest_airport_names <-
  airports %>%
  select(dest = faa, airport_name = name)

verbose_destinations_by_carrier <-
  flights %>%
  filter(distance < 300) %>%
  count(carrier, dest) %>%
  left_join(airline_names, by = "carrier") %>%
  select(-carrier) %>%
  left_join(dest_airport_names, by = "dest") %>%
  select(-dest)

verbose_destinations_by_carrier

save(verbose_destinations_by_carrier, file = "data/81-workflow.rda")
