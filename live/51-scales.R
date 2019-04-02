library(tidyverse)
library(nycflights13)

library(conflicted)
conflict_prefer("filter", "dplyr")
conflict_prefer("lag", "dplyr")


ggplot(
  data = mpg,
  mapping = aes(x = displ, y = hwy)
) +
  geom_point()

ggplot(
  data = mpg,
  mapping = aes(x = displ, y = hwy, color = class)
) +
  geom_point()


ggplot(
  data = mpg,
  mapping = aes(x = displ, y = hwy, color = class)
) +
  geom_point() +
  labs(
    x = "Displacement",
    y = "Highway mileage\n[miles per gallon]",
    color = "Car class",
    title = "Highway mileages depending on displacement",
    subtitle = "By car class"
  )

ggplot(
  data = mpg,
  mapping = aes(x = displ, y = hwy, color = class)
) +
  geom_point() +
  labs(
    x = "Displacement",
    y = "Highway mileage\n[miles per gallon]",
    color = "Car class",
    title = "Highway mileages depending on displacement",
    subtitle = "By car class"
  ) +
  scale_x_log10()

ggplot(
  data = mpg,
  mapping = aes(x = displ, y = hwy, color = class)
) +
  geom_point() +
  scale_x_log10(name = "xxx") +
  labs(
    x = "Displacement",
    y = "Highway mileage\n[miles per gallon]",
    color = "Car class",
    title = "Highway mileages depending on displacement",
    subtitle = "By car class"
  ) +
  scale_y_log10()


ggplot(
  data = mpg,
  mapping = aes(x = displ, y = hwy, color = class)
) +
  geom_point() +
  scale_x_log10() +
  scale_y_log10() +
  scale_color_brewer(type = "qual")

ggplot(
  data = mpg,
  mapping = aes(x = displ, y = hwy, color = class)
) +
  geom_point() +
  scale_x_log10() +
  scale_y_log10() +
  scale_color_viridis_d(option = "B")

ggplot(
  data = mpg,
  mapping = aes(x = displ, y = hwy, color = class)
) +
  geom_point() +
  scale_x_log10() +
  scale_y_log10() +
  scale_color_manual(values = c("2seater" = "#000000", "minivan" = "#3355FF", ...))

ggplot(
  data = mpg,
  mapping = aes(x = displ, y = hwy, color = class)
) +
  geom_point() +
  scale_x_log10() +
  scale_y_log10() +
  scale_color_manual(values = c("#000000", "#3355FF", "#4422FF", "#FF5522", "#66FFFF", "#1188FF", "#FF55FF"))
