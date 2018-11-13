library(tidyverse)

table3 %>%
  separate(rate, c("cases", "population"), sep = "/", convert = TRUE)

table1 %>%
  unite("rate", cases, population, sep = "/")
