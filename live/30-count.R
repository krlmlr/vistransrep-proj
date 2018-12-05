library(tidyverse)
library(nycflights13)

flights %>%
  count()

flights %>%
  count(carrier)

flights %>%
  count(carrier, wt = distance)

flights %>%
  group_by(carrier) %>%
  summarize(n = sum(distance))
