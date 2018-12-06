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
  geom_jitter() +
  scale_x_continuous("Displacement") +
  scale_y_continuous("Highway fuel consumption\n[miles per gallon]") +
  scale_color_brewer("Car class", palette = "Set1")

my_color_scale <-
  scale_color_brewer(
    "Car class",
    palette = "Set1",
    labels = c("Two-seater", "Compact", "Mid-size")
  )

mpg %>%
  ggplot(aes(x = displ, y = hwy, color = class)) +
  geom_jitter() +
  scale_x_continuous("Displacement") +
  scale_y_continuous("Highway fuel consumption\n[miles per gallon]") +
  my_color_scale

my_fill_scale <-
  scale_fill_brewer(
    "Car class",
    palette = "Set1",
    labels = c("Two-seater", "Compact", "Mid-size")
  )

mpg %>%
  ggplot(aes(x = drv, fill = class)) +
  geom_bar() +
  scale_x_discrete("Drivetrain") +
  my_fill_scale
