### Import many files

library(tidyverse)
library(nycflights13)

library(here)

library(conflicted)
conflict_prefer("filter", "dplyr")

files <- dir(path = here("data"), pattern = "[.]xlsx$", full.names = TRUE)
files

# Import all files at once with rio
files %>%
  rio::import_list(setclass = class(tibble()), rbind = TRUE)

# Import into named list first
list_of_tables <- rio::import_list(files, setclass = class(tibble()))
list_of_tables

# Access individual tables
list_of_tables$example6b

# Maybe tweak individual files?
try(
  list_of_tables$example6b <-
    list_of_tables$example6b %>%
    mutate(...) %>%
    select(...)
)

# Combine into a single data frame
all_tables <- bind_rows(list_of_tables, .id = "path")
all_tables


# Analyze one file
all_tables %>%
  filter(path == "example6b") %>%
  summarize(mean(col1), first(col2))

# Analyze multiple files: use group_by()
all_tables %>%
  group_by(path) %>%
  summarize(mean(col1), first(col2)) %>%
  ungroup()


# Alternative: Import manually
files %>%
  map_dfr(~ readxl::read_excel(.))
