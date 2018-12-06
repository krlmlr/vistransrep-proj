library(tidyverse)
library(nycflights13)

airlines %>%
  semi_join(flights)

airlines %>%
  anti_join(flights)
