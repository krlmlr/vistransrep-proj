library(tidyverse)
library(here)

mpg_id <-
  mpg %>%
  rowid_to_column("id")

mpg_socio <-
  mpg_id %>%
  select(id, 2:5, class)

mpg_rest <-
  mpg_id %>%
  select(-2:-5, -class)

saveRDS(mpg_socio, here("topic/mpg-socio.rds"))
saveRDS(mpg_rest, here("topic/mpg-rest.rds"))
