library(tidyverse)
library(nycflights13)
library(dbplyr)

db_df <- memdb_frame(a = 1:3, b = 4:2)

db_df %>%
  select(a)

db_df %>%
  select(a) %>%
  show_query()

db_df %>%
  filter(a < 3)

db_df %>%
  filter(a < 3) %>%
  show_query()
