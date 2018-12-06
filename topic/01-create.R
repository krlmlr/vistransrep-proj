library(tidyverse)

mpg_id <-
  mpg %>%
  rowid_to_column("id")

mpg_socio <-
  select(id, 2:5)
