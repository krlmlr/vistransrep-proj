library(tidyverse)

table1

table2

table1 %>%
  mutate(rate = cases / population) %>%
  ggplot(aes(x = year, y = rate)) +
  geom_line() +
  geom_point() +
  facet_wrap(~ country)

table2
