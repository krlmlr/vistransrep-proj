### Joins

library(tidyverse)
library(nycflights13)

library(here)

library(conflicted)
conflict_prefer("filter", "dplyr")
conflict_prefer("lag", "dplyr")

# `airlines` contain detailed information for each airline
# (in this case only the name)
airlines

# `flights` can be augmented with this detailed information
flights %>%
  left_join(airlines) %>%
  select(dep_time, carrier, name)

# for "production code", always indicate the columns to join by
flights %>%
  left_join(airlines, by = "carrier") %>%
  select(dep_time, carrier, name)

# Your turn: join the `planes` table
planes

# Does it work out of the box?
try(
  ... %>%
    ..._join(...)
)

# How to fix, and also turn off the message?
try(
  ... %>%
    ..._join(..., ... = "...")
)

# `airports` contain detailed information for each airport
airports

try(
  flights %>%
    left_join(airports)
)

# in this case, explicit "by" columns are required
flights %>%
  left_join(airports, by = c("dest" = "faa")) %>%
  select(origin, dest, name)

# we have mismatches!
flights %>%
  left_join(airports, by = c("dest" = "faa")) %>%
  select(origin, dest, name) %>%
  filter(is.na(name))

# what about the NA name?
airports %>%
  filter(faa == "BQN")

# left vs. inner vs. outer joins control what happens in case of mismatches
flights %>%
  inner_join(airports, by = c("dest" = "faa")) %>%
  select(origin, dest, name)

# Your turn: understand mismatches when joining the `planes` data
try(
  ... %>%
    left_join(..., ... = "...") %>%
    filter(is.na(...))
)

# Verify that "AA" has more mismatches than other airlines
try(
  ... %>%
    left_join(..., ... = "...") %>%
    mutate(mismatch = is.na(...), is_aa = (carrier == "AA")) %>%
    count(.....)
)

# How to keep only the flights where we have airplane details?
try(
  ... %>%
    ..._join(..., ... = "...")
)

# Case study: classification of mismatches
flights %>%
  left_join(planes %>% select(tailnum, manufacturer), by = "tailnum") %>%
  mutate(mismatch = is.na(manufacturer)) %>%
  select(-tailnum, -manufacturer) %>%
  rpart::rpart(mismatch ~ ., .)

# before joining, prepare the RHS table(s)
origin_airports <-
  airports %>%
  select(origin = faa, origin_name = name)

origin_airports

dest_airports <-
  airports %>%
  select(dest = faa, dest_name = name)

dest_airports

# much easier with the prepared tables
flights %>%
  left_join(origin_airports) %>%
  left_join(dest_airports) %>%
  select(origin, origin_name, dest, dest_name)

# "by" still recommended
flights %>%
  left_join(origin_airports, by = "origin") %>%
  left_join(dest_airports, by = "dest") %>%
  select(origin, origin_name, dest, dest_name)

# Your turn: we only need `engines` and `seats` from the `planes` table
try({
  planes_join <-
    ... %>%
    ...(...)

  ... %>%
    left_join(..., ... = "...")
})

# either LHS or RHS should have a key as part of "by"
airports %>%
  count(faa)

airports %>%
  count(faa) %>%
  count(n)

# Your turn: double-check that `tailnum` is indeed a key in `planes`
try(
  ... %>%
    count(...) %>%
    ...(...)
)

# create artificial dataset where airport is not a key
dup_airports <-
  bind_rows(airports, sample_n(airports, 100))

dup_airports %>%
  count(faa)

dup_airports %>%
  count(faa) %>%
  count(n)

dup_airports %>%
  count(faa) %>%
  add_count(n) %>%
  filter(n > 1)

# what happens if not key?
flights %>%
  left_join(dup_airports, by = c("dest" = "faa")) %>%
  select(origin, dest, name)

flights

# Your turn: Is this combination a key? Why/why not?
weather

weather %>%
  count(origin, year, month, day, hour) %>%
  count(n)

# How to find the offenders?
try(
  weather %>%
    count(...) %>%
    add_count(...) %>%
    filter(...)
)

# Explain!


# A novel approach: https://krlmlr.github.io/dm/


##install.packages("devtools")
##devtools::install_github("krlmlr/dm")
