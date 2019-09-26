library(tidyverse)
library(nycflights13)

library(here)

library(conflicted)
conflict_prefer("filter", "dplyr")

files <- dir(path = here("data"), pattern = "[.]xlsx$", full.names = TRUE)
files

# Manually
files %>%
  map_dfr(~ readxl::read_excel(.))

# Using rio
rio::import_list(files)

files %>%
  rio::import_list(rbind = TRUE) %>%
  as_tibble()
