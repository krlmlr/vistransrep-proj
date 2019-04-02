library(tidyverse)
library(nycflights13)

library(conflicted)
conflict_prefer("filter", "dplyr")
conflict_prefer("lag", "dplyr")


# Simple counts
flights %>%
  count()

flights %>%
  summarize(n = n())

# Grouped counts
flights %>%
  count(origin)

flights %>%
  count(origin, wt = air_time)

flights %>%
  count(year, month, day)

# Weighted counts
flights %>%
  count(wt = air_time)

flights %>%
  summarize(n = sum(air_time, na.rm = TRUE))

flights %>%
  summarize(n = median(air_time, na.rm = TRUE))

flights %>%
  summarize(
    mean_air_time = mean(air_time, na.rm = TRUE),
    median_air_time = median(air_time, na.rm = TRUE)
  )

flights %>%
  group_by(origin) %>%
  summarize(
    mean_air_time = mean(air_time, na.rm = TRUE),
    median_air_time = median(air_time, na.rm = TRUE)
  )

flights %>%
  group_by(year, month, day) %>%
  summarize(
    mean_air_time = mean(air_time, na.rm = TRUE),
    median_air_time = median(air_time, na.rm = TRUE)
  )

flights %>%
  group_by(origin) %>%
  summarize(
    mean_air_time = mean(air_time, na.rm = TRUE),
    median_air_time = median(air_time, na.rm = TRUE)
  ) %>%
  ungroup()

flights %>%
  group_by(year, month, day) %>%
  summarize(
    mean_air_time = mean(air_time, na.rm = TRUE),
    median_air_time = median(air_time, na.rm = TRUE)
  ) %>%
  ungroup()

flights %>%
  group_by(year, month, day) %>%
  summarize(
    mean(air_time, na.rm = TRUE),
    median(air_time, na.rm = TRUE)
  ) %>%
  ungroup()

flights_by_day <-
  flights %>%
  group_by(year, month, day) %>%
  summarize(
    mean_air_time = mean(air_time, na.rm = TRUE),
    median_air_time = median(air_time, na.rm = TRUE)
  ) %>%
  ungroup()

flights_by_day

# Mean distance, visualized
total_airtime_by_carrier <-
  flights %>%
  group_by(carrier) %>%
  summarize(acc_air_time = sum(air_time, na.rm = TRUE)) %>%
  ungroup()

total_airtime_by_carrier %>%
  arrange(acc_air_time)

total_airtime_by_carrier %>%
  arrange(acc_air_time) %>%
  mutate(carrier = fct_inorder(carrier))

total_airtime_by_carrier %>%
  arrange(acc_air_time) %>%
  ggplot() +
  geom_col(aes(carrier, acc_air_time / 60 / 24 / 365)) +
  coord_flip()

total_airtime_by_carrier %>%
  arrange(acc_air_time) %>%
  mutate(carrier = fct_inorder(carrier)) %>%
  ggplot() +
  geom_col(aes(carrier, acc_air_time / 60 / 24 / 365))

total_airtime_by_carrier %>%
  arrange(acc_air_time) %>%
  mutate(carrier = fct_inorder(carrier)) %>%
  ggplot() +
  geom_col(aes(carrier, acc_air_time / 60 / 24 / 365)) +
  coord_flip()

# Worst plane
flights %>%
  group_by(tailnum) %>%
  summarize(not_departed = sum(is.na(dep_time))) %>%
  ungroup() %>%
  arrange(desc(not_departed)) %>%
  filter(!is.na(tailnum))

flights %>%
  summarize(not_departed = sum(is.na(dep_time))) %>%
  arrange(desc(not_departed))

flights %>%
  filter(is.na(dep_time))

# Distinct airlines per relation
flights %>%
  count(origin, dest, carrier, sort = TRUE)

flights %>%
  count(origin, dest, carrier)

flights %>%
  count(origin, dest, carrier) %>%
  count(origin, dest)

flights %>%
  count(origin, dest, carrier) %>%
  count(origin, dest, sort = TRUE)

flights %>%
  group_by(origin, dest, carrier) %>%
  summarize(n_flights = n())

flights %>%
  group_by(origin, dest, carrier) %>%
  summarize(n_flights = n()) %>%
  summarize(n_distinct_carriers = n()) %>%
  ungroup()

flights %>%
  group_by(origin, dest, carrier) %>%
  summarize(n_flights = n()) %>%
  summarize(n_distinct_carriers = n()) %>%
  ungroup() %>%
  arrange(desc(n_distinct_carriers))
