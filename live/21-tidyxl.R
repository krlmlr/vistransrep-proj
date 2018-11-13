library(tidyverse)
library(tidyxl)
library(here)

library(conflicted)

conflict_prefer("filter", "dplyr")

long_xlsx <-
  tidyxl::xlsx_cells(here("data/example1.xlsx"))

long_xlsx_header <-
  long_xlsx %>%
  filter(row == 1) %>%
  select(col, name = character)

wide_xlsx <-
  long_xlsx %>%
  select(row, col, character) %>%
  filter(row != 1) %>%
  left_join(long_xlsx_header) %>%
  select(-col) %>%
  spread(name, character)

wide_xlsx %>%
  gather(name, character, -row)
