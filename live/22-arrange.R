library(tidyverse)
library(nycflights13)

flights %>%
  arrange(dep_time)

flights %>%
  arrange(dep_time, sched_dep_time)

flights %>%
  arrange(dep_time, sched_dep_time) %>%
  View()

# install.packages("visdat")
# install.packages("naniar")

flights %>%
  sample_frac(0.01) %>%
  visdat::vis_miss()

flights %>%
  arrange(desc(dep_time))

flights %>%
  arrange(desc(dep_time), sched_dep_time)

flights %>%
  arrange(dep_time - sched_dep_time)

tibble(a = c(TRUE, FALSE)) %>%
  arrange(a)
