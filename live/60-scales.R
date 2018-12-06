library(tidyverse)

mpg %>%
  ggplot(aes(x = displ, y = hwy)) +
  geom_point() +
  scale_x_continuous("Displacement")
