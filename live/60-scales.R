library(tidyverse)

mpg %>%
  ggplot(aes(x = displ, y = hwy)) +
  geom_point() +
  scale_x_continuous("Displacement")

mpg %>%
  ggplot(aes(x = displ, y = hwy)) +
  geom_point() +
  scale_x_continuous("Displacement") +
  scale_y_continuous("Highway fuel consumption\n[miles per gallon]")

mpg %>%
  ggplot(aes(x = displ, y = hwy, color = class)) +
  geom_point() +
  scale_x_continuous("Displacement") +
  scale_y_continuous("Highway fuel consumption\n[miles per gallon]")
