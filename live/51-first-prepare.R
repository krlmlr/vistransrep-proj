library(tidyverse)
library(nycflights13)

library(here)

library(conflicted)
conflict_prefer("filter", "dplyr")
conflict_prefer("lag", "dplyr")

flights_per_month <-
  flights %>%
  count(month)

save(flights_per_month, file = here("data/first-report.rda"))
