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
?"%>%"

# Alt + Cursor up/down
flights %>%
  filter(dep_time < 600) %>%
  filter(month >= 10) %>%
  arrange(dep_time, dep_delay) %>%
  view()

# Add/remove I or view
flights %>%
  filter(dep_time < 600) %>%
  filter(month >= 10) %>% I

# Remember to remove it!
  # arrange(dep_time, dep_delay) %>%
  # view()
