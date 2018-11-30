library(tidyverse)
library(nycflights13)
library(here)

dr_here()

od <-
  flights %>%
  count(origin, dest)

save(od, file = here("data/od.rda"))
