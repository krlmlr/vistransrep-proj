library(tidyverse)

mpg_id <-
  mpg %>%
  rowid_to_column("id")

mpg_socio <-
  mpg_id %>%
  select(id, 2:5)

mpg_rest <-
  mpg_id %>%
  select(id, 2:5)
