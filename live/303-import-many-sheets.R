### Import many files

library(tidyverse)
library(nycflights13)

library(here)

library(conflicted)
conflict_prefer("filter", "dplyr")

file <- "data/example6.xlsx"

sheets <- readxl::excel_sheets(file)

tibble(sheets) %>%
  mutate(data = map(sheets, ~ readxl::read_xlsx(file, sheet = .x))) %>%
  unnest(data)
