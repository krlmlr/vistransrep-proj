library(tidyverse)

mpg %>%
  ggplot(aes(x = displ, y = hwy, color = class)) +
  geom_point()

mpg %>%
  ggplot(aes(x = displ, y = hwy, color = class)) +
  geom_point() +
  xlab("Displacement")

mpg %>%
  ggplot(aes(x = displ, y = hwy, color = class)) +
  geom_point() +
  scale_x_continuous("Displacement") +
  scale_y_continuous("Highway mileage [miles per gallon]") +
  scale_color_brewer("Car class", palette = "Accent")

mpg %>%
  ggplot(aes(x = displ, y = hwy, color = class)) +
  geom_point() +
  scale_x_log10("Displacement") +
  scale_y_continuous("Highway mileage [miles per gallon]") +
  scale_color_brewer("Car class", palette = "Accent")

mpg %>%
  ggplot(aes(x = displ, y = hwy, color = class)) +
  geom_point() +
  scale_x_continuous("Displacement", trans = "sqrt") +
  scale_y_continuous("Highway mileage [miles per gallon]") +
  scale_color_brewer("Car class", palette = "Accent")

mpg %>%
  ggplot(aes(x = displ)) +
  geom_histogram() +
  scale_x_continuous("Displacement", trans = "log10")

mpg %>%
  ggplot(aes(x = displ)) +
  geom_histogram() +
  coord_trans(x = "log10")

mpg %>%
  ggplot(aes(x = displ)) +
  geom_histogram() +
  coord_flip()

mpg %>%
  ggplot(aes(x = displ)) +
  geom_histogram() +
  theme_bw(12)

my_theme <-
  theme_bw(12) +
  theme(legend.position = "bottom")

mpg %>%
  ggplot(aes(x = displ, color = class)) +
  geom_freqpoly() +
  my_theme

mpg %>%
  ggplot(aes(x = displ, color = class)) +
  geom_freqpoly() +
  theme_minimal()

# install.packages("ggthemr")
# install.packages("pubr")
