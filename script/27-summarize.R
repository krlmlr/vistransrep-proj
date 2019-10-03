### Summarize data (by groups): `dplyr::summarize()`, `dplyr::count()`, `dplyr::group_by()`

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

# summarize with median
flights %>%
  summarize(n = median(air_time, na.rm = TRUE))

# multi-summarize
flights %>%
  summarize(
    mean_air_time = mean(air_time, na.rm = TRUE),
    median_air_time = median(air_time, na.rm = TRUE)
  )

# group_by multi-summarize
flights %>%
  group_by(origin) %>%
  summarize(
    mean_air_time = mean(air_time, na.rm = TRUE),
    median_air_time = median(air_time, na.rm = TRUE)
  )

# group_by multi-summarize 2
flights %>%
  group_by(year, month, day) %>%
  summarize(
    mean_air_time = mean(air_time, na.rm = TRUE),
    median_air_time = median(air_time, na.rm = TRUE)
  )

# group_by multi-summarize ungroup
flights %>%
  group_by(origin) %>%
  summarize(
    mean_air_time = mean(air_time, na.rm = TRUE),
    median_air_time = median(air_time, na.rm = TRUE)
  ) %>%
  ungroup()

# group_by multi-summarize 2 ungroup
flights %>%
  group_by(year, month, day) %>%
  summarize(
    mean_air_time = mean(air_time, na.rm = TRUE),
    median_air_time = median(air_time, na.rm = TRUE)
  ) %>%
  ungroup()

# anonymous summarize
flights %>%
  group_by(year, month, day) %>%
  summarize(
    mean(air_time, na.rm = TRUE),
    median(air_time, na.rm = TRUE)
  ) %>%
  ungroup()

# flights by day
flights_by_day <-
  flights %>%
  group_by(year, month, day) %>%
  summarize(
    mean_air_time = mean(air_time, na.rm = TRUE),
    median_air_time = median(air_time, na.rm = TRUE)
  ) %>%
  ungroup()

flights_by_day

# carrier air time
total_airtime_by_carrier <-
  flights %>%
  group_by(carrier) %>%
  summarize(acc_air_time = sum(air_time, na.rm = TRUE)) %>%
  ungroup()

# arrange carrier air time
total_airtime_by_carrier %>%
  arrange(acc_air_time)

# arrange carrier as factor air time
total_airtime_by_carrier %>%
  arrange(acc_air_time) %>%
  mutate(carrier = fct_inorder(carrier))

# plot without factor
total_airtime_by_carrier %>%
  arrange(acc_air_time) %>%
  ggplot() +
  geom_col(aes(carrier, acc_air_time / 60 / 24 / 365)) +
  coord_flip()

# plot with factor
total_airtime_by_carrier %>%
  arrange(acc_air_time) %>%
  mutate(carrier = fct_inorder(carrier)) %>%
  ggplot() +
  geom_col(aes(carrier, acc_air_time / 60 / 24 / 365))

# plot with factor flip
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

# sum no lift-off
flights %>%
  summarize(not_departed = sum(is.na(dep_time))) %>%
  arrange(desc(not_departed))

# filter no lift-off
flights %>%
  filter(is.na(dep_time))

# sorted count flights per airline per relation
flights %>%
  count(origin, dest, carrier, sort = TRUE)

# count flights per airline per relation
flights %>%
  count(origin, dest, carrier)

# count num carriers between airports
flights %>%
  count(origin, dest, carrier) %>%
  count(origin, dest)

# sorted count num carriers per relation
flights %>%
  count(origin, dest, carrier) %>%
  count(origin, dest, sort = TRUE)

# summarize num flights per airline per relation
flights %>%
  group_by(origin, dest, carrier) %>%
  summarize(n_flights = n())

# summarize num carriers per relation
flights %>%
  group_by(origin, dest, carrier) %>%
  summarize(n_flights = n()) %>%
  summarize(n_distinct_carriers = n()) %>%
  ungroup()

# sorted summarize num carriers per relation
flights %>%
  group_by(origin, dest, carrier) %>%
  summarize(n_flights = n()) %>%
  summarize(n_distinct_carriers = n()) %>%
  ungroup() %>%
  arrange(desc(n_distinct_carriers))
