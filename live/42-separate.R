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

tribble(
  ~num,
  "1'000.00",
  "2'000'000.00"
) %>%
  separate(num, into = c("num"))

table1 %>%
  unite(rate, cases:population)

?unite

table1 %>%
  unite(rate, cases:population, sep = "/")
