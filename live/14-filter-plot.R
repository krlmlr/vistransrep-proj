library(tidyverse)
library(nycflights13)


flights %>%
  filter(month == 11) %>%
  filter(day == 29) %>%
  filter(carrier == "UA") %>%
  filter(distance >= 1000) %>%
  arrange(arr_time) %>%
  ggplot(aes(x = dep_time, y = arr_time)) +
  geom_point()


today_far <-
  flights %>%
  filter(month == 11) %>%
  filter(day == 29) %>%
  filter(carrier == "UA") %>%
  filter(distance >= 1000) %>%
  arrange(arr_time)

today_far %>%
  ggplot(aes(x = dep_time, y = arr_time)) +
  geom_point()
