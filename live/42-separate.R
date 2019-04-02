library(tidyverse)
library(nycflights13)

library(conflicted)
conflict_prefer("filter", "dplyr")
conflict_prefer("lag", "dplyr")


table3

table3 %>%
  separate(rate, into = c("cases", "population"))
