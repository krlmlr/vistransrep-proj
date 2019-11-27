### The pipe

library(tidyverse)
library(nycflights13)

library(conflicted)
conflict_prefer("filter", "dplyr")

# early flights
early_flights <-
  flights %>%
  filter(dep_time < 600)

# early flights with pipe
early_flights <- filter(flights, dep_time < 600)

# pipe help
## ?"%>%"

# Complex pipe
flights %>%
  filter(dep_time < 600) %>%
  filter(month >= 10) %>%
  arrange(dep_time, dep_delay) %>%
  view()

# Intermediate names
early_flights <- filter(flights, dep_time < 600)
early_flights_oct_dec <- filter(early_flights, month >= 10)
early_flights_oct_dec_sorted <- arrange(early_flights_oct_dec, dep_time, dep_delay)
view(early_flights_oct_dec_sorted)

# Catch-all variable
x <- flights
x <- filter(x, dep_time < 600)
x <- filter(x, month >= 10)
x <- arrange(x, dep_time, dep_delay)
view(x)

# Layers
view(
  arrange(
    filter(
      filter(
        flights,
        dep_time < 600
      ),
      month >= 10
    ),
    dep_time, dep_delay
  )
)

# Add/remove I or view
flights %>%
  filter(dep_time < 600) %>%
  filter(month >= 10) %>% I
##arrange(dep_time, dep_delay) %>%
##view()

# Remember to remove it!
try(
  arrange(dep_time, dep_delay) %>%
  view()
)
