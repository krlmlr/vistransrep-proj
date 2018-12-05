library(tidyverse)
library(nycflights13)

flights %>%
  count()

flights %>%
  count(wt = distance)

flights %>%
  count(carrier)

flights %>%
  count(carrier, wt = distance)

flights %>%
  group_by(carrier) %>%
  summarize(n = sum(distance))

flights %>%
  group_by(carrier) %>%
  summarize(n = n())

flights %>%
  summarize(n = sum(distance))

flights %>%
  summarize(n = mean(distance))

flights %>%
  group_by(carrier) %>%
  summarize(n = mean(distance))
