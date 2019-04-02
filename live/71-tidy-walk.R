library(tidyverse)
library(nycflights13)

library(conflicted)
conflict_prefer("filter", "dplyr")
conflict_prefer("lag", "dplyr")


iris %>%
  slice(1:3) %>% I
  with(walk2(Sepal.Width, Sepal.Length, cat))
