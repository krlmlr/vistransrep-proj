library(tidyverse)
library(nycflights13)

library(here)

library(conflicted)
conflict_prefer("filter", "dplyr")

files <- dir(path = here("data"), pattern = "[.]xlsx$", full.names = TRUE)
files

files %>%
  map_dfr(~ readxl::read_excel(.))
