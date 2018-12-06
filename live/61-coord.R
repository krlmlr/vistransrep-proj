library(tidyverse)

mpg %>%
  ggplot(aes(x = displ, y = hwy)) +
  geom_point() +
  scale_x_continuous("Displacement") +
  scale_y_continuous("Highway fuel consumption\n[miles per gallon]") +
  coord_trans(x = "sqrt")

mpg %>%
  ggplot(aes(x = class, y = hwy)) +
  geom_boxplot()

mpg %>%
  ggplot(aes(x = class, y = hwy)) +
  geom_boxplot() +
  coord_trans(y = "log10")

mpg %>%
  ggplot(aes(x = class, y = hwy)) +
  geom_boxplot() +
  scale_y_log10()

mpg %>%
  ggplot(aes(x = class, y = hwy)) +
  geom_boxplot() +
  coord_flip() +
  scale_x_discrete("Car class")

?labs

