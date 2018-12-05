library(tidyverse)
library(nycflights13)


flights %>%
  summarize(
    quartiles = list(
      quantile(distance, c(.25, .5, .75))
    )
  )
