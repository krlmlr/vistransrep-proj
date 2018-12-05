library(tidyverse)
library(nycflights13)


flights %>%
  count(carrier, origin)

flights %>%
  group_by(carrier, origin) %>%
  summarize(n = sum(distance))

flights %>%
  group_by(carrier, origin)

flights %>%
  group_by(carrier, origin) %>%
  summarize(n = sum(distance)) %>%
  ungroup()
