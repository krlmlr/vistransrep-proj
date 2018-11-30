library(tidyverse)

table1

table1_inc <-
  table1 %>%
  mutate(incidence = cases / population * 1e5)

table1_inc %>%
  ggplot(aes(x = country, y = incidence, color = year)) +
  geom_col()

table1_inc %>%
  ggplot(aes(x = country, y = incidence, fill = factor(year))) +
  geom_col(position = "dodge")

table1 %>%
  ggplot(aes(x = country, y = cases, fill = factor(year))) +
  geom_col(position = "dodge")

table1 %>%
  ggplot(aes(x = country, y = population, fill = factor(year))) +
  geom_col(position = "dodge")

table1 %>%
  mutate(incidence = cases / population * 1e5) %>%
  ggplot(aes(x = country, y = incidence)) +
  facet_wrap(~year) +
  geom_boxplot()

table1 %>%
  ggplot(aes(x = population, y = cases, color = factor(year))) +
  geom_point()

table2

table2 %>%
  ggplot(aes(y = count, fill = type, x = country)) +
  geom_col() +
  facet_wrap(~year)

table1 %>%
  gather("type", "count", -country, -year)

table2_inc <-
  table1_inc %>%
  gather("type", "count", -country, -year)

table2_inc

table2 %>%
  spread(type, count)

table2_inc %>%
  spread(type, count)

table2_inc %>%
  slice(-11) %>%
  spread(type, count)

table2_inc %>%
  slice(-11) %>%
  spread(type, count, fill = -99)

table2_inc %>%
  spread(year, count)

table2 %>%
  xtabs(formula = count ~ .) %>%
  ftable()

table2 %>%
  xtabs(count ~ ., data = .) %>%
  ftable()

table2 %>%
  xtabs(count ~ ., .) %>%
  ftable()

?magrittr::`%>%`

Titanic %>%
  ftable()
