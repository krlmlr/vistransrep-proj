library(tidyverse)

table1

table2

table1 %>%
  ggplot(aes(x = year, y = population)) +
  facet_wrap(~ country)


