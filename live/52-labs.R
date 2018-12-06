library(tidyverse)

mpg %>%
  ggplot(aes(x = class, y = hwy)) +
  geom_boxplot() +
  coord_flip() +
  scale_x_discrete("Car class")
