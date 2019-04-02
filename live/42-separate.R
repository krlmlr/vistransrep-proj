library(tidyverse)
library(nycflights13)

library(conflicted)
conflict_prefer("filter", "dplyr")
conflict_prefer("lag", "dplyr")


table3

table3 %>%
  separate(rate, into = c("cases", "population"))

table3 %>%
  separate(rate, into = c("cases", "population"), sep = "/")

table3 %>%
  separate(rate, into = c("cases", "population"), sep = "/", convert = TRUE)


?separate

thousand_separator <-
  tribble(
    ~num,
    "1'000.00",
    "2'000'000.00"
  )

thousand_separator %>%
  separate(num, into = c("num"))

thousand_separator %>%
  mutate(num = str_replace_all(num, "[^0-9.]", "")) %>%
  mutate(num = as.numeric(num))

# Uniting
table1 %>%
  unite(rate, cases:population)

?unite

table1 %>%
  unite(rate, cases:population, sep = "/")

# table2 -> table3 directly
table2 %>%
  group_by(country, year) %>%
  summarize(rate = paste(count, collapse = "/")) %>%
  ungroup()
