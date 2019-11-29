### Summarize data `dplyr::ungroup()`

library(tidyverse)
library(nycflights13)

library(conflicted)
conflict_prefer("filter", "dplyr")
conflict_prefer("lag", "dplyr")

# summary functions
flights %>%
  select(air_time) %>%
  filter(!is.na(air_time)) %>%
  mutate(total_air_time = sum(air_time))

flights %>%
  select(air_time) %>%
  mutate(total_air_time = sum(air_time, na.rm = TRUE))

# condense to one row with summarize
flights %>%
  summarize(total_air_time = sum(air_time, na.rm = TRUE))

# summarize with counts
flights %>%
  summarize(n = n())

# summarize with median
flights %>%
  summarize(median = median(air_time, na.rm = TRUE))

flights %>%
  summarize(mean = mean(air_time, na.rm = TRUE))

# compute multiple summaries
flights %>%
  summarize(
    n = n(),
    mean_air_time = mean(air_time, na.rm = TRUE),
    median_air_time = median(air_time, na.rm = TRUE)
  )

# Use group_by() and ungroup() to split data into groups
# ALWAYS use ungroup()
flights %>%
  group_by(origin) %>%
  summarize(
    n = n(),
    mean_air_time = mean(air_time, na.rm = TRUE),
    median_air_time = median(air_time, na.rm = TRUE)
  ) %>%
  ungroup()

flights %>%
  filter(origin == "EWR") %>%
  summarize(
    n = n(),
    mean_air_time = mean(air_time, na.rm = TRUE),
    median_air_time = median(air_time, na.rm = TRUE)
  )

# Groups can be defined by more than one column
flights %>%
  group_by(year, month, day) %>%
  summarize(
    n = n(),
    mean_air_time = mean(air_time, na.rm = TRUE),
    median_air_time = median(air_time, na.rm = TRUE)
  ) %>%
  ungroup()

flights_by_day <-
  flights %>%
  group_by(year, month, day) %>%
  summarize(
    n = n(),
    mean_air_time = mean(air_time, na.rm = TRUE),
    median_air_time = median(air_time, na.rm = TRUE)
  ) %>%
  ungroup()


# Show monthly and daily aggregates in one plot
flights_by_day <-
  flights %>%
  group_by(year, month, day) %>%
  summarize(
    mean_air_time = mean(air_time, na.rm = TRUE)
  ) %>%
  ungroup()

flights_by_month <-
  flights %>%
  group_by(year, month) %>%
  summarize(
    mean_air_time = mean(air_time, na.rm = TRUE)
  ) %>%
  ungroup()

ggplot(mapping = aes(month, mean_air_time)) +
  geom_point(data = flights_by_day, color = "green") +
  geom_line(data = flights_by_month, color = "blue")

flights_by_day %>%
  ggplot(mapping = aes(month, mean_air_time)) +
  geom_point(color = "green") +
  geom_smooth(color = "blue")

# Analyze daily and monthly data in one group
flights_overall <-
  bind_rows(flights_by_day, flights_by_month)

flights_overall %>%
  group_by(day) %>%
  summarize(median(mean_air_time)) %>%
  view()


# Create a synthetic group for overall analysis
# (careful with the interpretation!)
flights_with_day_erased <-
  flights %>%
  mutate(day = NA)


flights_raw_overall <-
  bind_rows(flights, flights_with_day_erased)



flights_overall <-
  flights_raw_overall %>%
  group_by(year, month, day) %>%
  summarize(
    mean_air_time = mean(air_time, na.rm = TRUE)
  ) %>%
  ungroup()


# Anonymous summarize for a quick glance
# (column name is defined by the expression)
flights %>%
  group_by(year, month, day) %>%
  summarize(
    n(),
    mean(air_time, na.rm = TRUE),
    median(air_time, na.rm = TRUE)
  ) %>%
  ungroup()

# count() = group_by() + summarize() + ungroup()
flights %>%
  count(year, month, day)

flights %>%
  group_by(year, month, day) %>%
  summarize(n = n()) %>%
  ungroup()
