library(tidyverse)
library(nycflights13)


flights %>% mutate(
  quartiles = list(
    quantile(distance, c(.25, .5, .75)))
)
