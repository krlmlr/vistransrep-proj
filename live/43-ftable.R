library(tidyverse)

table2 %>%
  xtabs(formula = count ~ .) %>%
  ftable() %>%
  memisc::show_html()
