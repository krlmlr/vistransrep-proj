### Separating and uniting

library(tidyverse)
library(nycflights13)

library(conflicted)
conflict_prefer("filter", "dplyr")
conflict_prefer("lag", "dplyr")

# Yet another view at the same data
table3

# How to split?
table3 %>%
  separate(rate, into = c("cases", "population"))

table3 %>%
  separate(rate, into = c("cases", "population"), sep = "/", convert = TRUE)

table3 %>%
  separate(rate, into = c("cases", "population"), sep = "/", convert = TRUE) %>%
  mutate(rate = cases / population)

# Evaluate from expression given as text
table3 %>%
  mutate(rate_formula = as.list(parse(text = rate))) %>%
  mutate(rate_value = map_dbl(rate_formula, eval))

# Uniting
table5

table5 %>%
  unite("year", c(century, year))

# Not quite done yet:
table5 %>%
  unite("year", c(century, year), sep = "")

table5 %>%
  unite("year", c(century, year), sep = "") %>%
  mutate(year = as.numeric(year))

# See help for more info
?separate
?unite

# Parsing numbers
thousand_separator <-
  tribble(
    ~num,
    "1'000.00",
    "2'000'000.00"
  )

thousand_separator

# separate() doesn't work here
thousand_separator %>%
  separate(num, into = c("num"))

# Remove all non-number components
thousand_separator %>%
  mutate(num = str_replace_all(num, "[^-0-9.]", "")) %>%
  mutate(num = as.numeric(num))
