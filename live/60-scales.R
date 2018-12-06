library(tidyverse)

mpg %>%
  ggplot(aes(x = displ, y = hwy))
