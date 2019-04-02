library(tidyverse)
library(nycflights13)

library(conflicted)
conflict_prefer("filter", "dplyr")
conflict_prefer("lag", "dplyr")


iris %>%
  slice(1:3) %>%
  with(walk2(Sepal.Width, Sepal.Length, ~ cat(..., "\n"))) %>%
  count()


x <- walk2(iris$Sepal.Width[1:3], iris$Sepal.Length[1:3], ~ cat(..., "\n"))
x

iris %>%
  slice(1:3) %>%
  select(Sepal.Width, Sepal.Length) %>%
  pwalk(~ cat(..., "\n")) %>%
  count()

