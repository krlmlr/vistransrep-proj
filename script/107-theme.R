### Themes

library(tidyverse)

# Base plot with default theme
ggplot(
  data = mpg,
  mapping = aes(x = displ, y = hwy)
) +
  geom_point() +
  theme_grey()

# bw-theme
ggplot(
  data = mpg,
  mapping = aes(x = displ, y = hwy)
) +
  geom_point() +
  theme_bw()

# Theme does not affect color palette of geoms
ggplot(
  data = mpg,
  mapping = aes(x = displ, y = hwy)
) +
  geom_point(aes(color = class)) +
  theme_bw()

# Occasionally useful: legend at the bottom
ggplot(
  data = mpg,
  mapping = aes(x = displ, y = hwy)
) +
  geom_point(aes(color = class)) +
  theme_bw() +
  theme(legend.position = "bottom")

# theme_* overwrites theme() calls: mind the order!
ggplot(
  data = mpg,
  mapping = aes(x = displ, y = hwy)
) +
  geom_point(aes(color = class)) +
  theme(legend.position = "bottom") +
  theme_bw()

# first param of theme_()-functions is base_size
ggplot(
  data = mpg,
  mapping = aes(x = displ, y = hwy, color = class)
) +
  geom_point() +
  theme_bw(16)

# predefined custom themes available, e.g. in ggpubr package
ggplot(
  data = mpg,
  mapping = aes(x = displ, y = hwy, color = class)
) +
  geom_point() +
  ggpubr::theme_pubr()
