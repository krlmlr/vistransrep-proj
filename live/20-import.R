library(conflicted)
library(readr)
library(here)

example1 <- read_delim(here("data/example1.csv"),
                       ";",
                       escape_double = FALSE,
                       trim_ws = TRUE)
View(example1)

example1 <- read_delim(here("data/example1.csv"),
                       ";",
                       col_types = cols(
                         col1 = col_double(),
                         col2 = col_character(),
                         col3 = col_character()
                       ),
                       escape_double = FALSE,
                       trim_ws = TRUE)

library(writexl)

example1 %>%
  mutate(date = Sys.Date(), time = Sys.time()) %>%
  writexl::write_xlsx(here("data/example2.xlsx"))
