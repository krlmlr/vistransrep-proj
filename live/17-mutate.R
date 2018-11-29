library(tidyverse)
library(nycflights13)

# install.packages("conflicted")
library(conflicted)

conflict_prefer("filter", "dplyr")
conflict_prefer("lag", "dplyr")


flights %>%
  mutate(dist_km = distance / 1.8)

flights %>%
  mutate(
    dist_km = distance / 1.8,
    recovery = dep_delay - arr_delay
  )

flights %>%
  mutate(dist_km = distance / 1.8) %>%
  mutate(recovery = dep_delay - arr_delay)

flights %>%
  mutate(dist_km = distance / 1.8) %>%
  mutate(recovery = dep_delay - arr_delay) %>%
  select(dist_km, recovery, everything())

flights %>%
  mutate(dist_km = distance / 1.8) %>%
  pull()

flights %>%
  mutate(dist_km = distance / 1.8) %>%
  mutate(recovery = dep_delay - arr_delay) %>%
  View()

flights %>%
  mutate(cum_dep_delay = cumsum(dep_delay)) %>%
  select(dep_delay, cum_dep_delay)

flights %>%
  arrange(tailnum) %>%
  mutate(lag_dep_time = lag(dep_time)) %>%
  select(tailnum, dep_time, lag_dep_time)

flights %>%
  arrange(tailnum) %>%
  mutate(lead_dep_time = lead(dep_time, 3)) %>%
  select(tailnum, dep_time, lead_dep_time)

flights %>%
  ggplot(aes(x = carrier)) +
  geom_bar()

airlines %>%
  filter(carrier == "EV")

flights %>%
  mutate(
    carrier_class = case_when(
      carrier == "UA" ~ "United",
      carrier == "EV" ~ "Express",
      TRUE            ~ "Other"
    )
  ) %>%
  select(carrier, carrier_class)

?recode

?forcats::fct_recode

flights %>%
  arrange(tailnum) %>%
  mutate(lag(dep_time))

flights %>%
  mutate(year = NULL)

flights %>%
  mutate(yearx = NULL)

flights %>%
  select(-year)

flights %>%
  select(-yearx)
