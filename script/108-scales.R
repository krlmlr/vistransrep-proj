### Scales

library(tidyverse)
library(ggpubr)
theme_set(theme_pubr())

# Base plot to start with
ggplot(
  data = mpg,
  mapping = aes(x = displ, y = hwy, color = class)
) +
  geom_point()

# Add descriptive labels: the labs() function
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

# Change scale to log scale
ggplot(
  data = mpg,
  mapping = aes(x = displ, y = hwy, color = class)
) +
  geom_point() +
  scale_x_log10()

# Name in scale_() overwrites labs() without warning!
ggplot(
  data = mpg,
  mapping = aes(x = displ, y = hwy, color = class)
) +
  geom_point() +
  labs(
    x = "Displacement"
  ) +
  scale_x_log10(name = "xxx")

# showcase manual axis scaling: limits, breaks, labels
ggplot(mpg, aes(displ, hwy)) +
  geom_point() +
  scale_x_continuous(limits = c(2, 6), breaks = c(2, 4, 6))

# default color palette
ggplot(
  data = mpg,
  mapping = aes(x = displ, y = hwy)
) +
  geom_point(aes(color = class)) +
  scale_color_hue()

# show viridis color palette (discrete)
ggplot(
  data = mpg,
  mapping = aes(x = displ, y = hwy)
) +
  geom_point(aes(color = class)) +
  scale_color_viridis_d()

# show how to set manual colors
# useful for many discrete levels or levels with color meaning
ggplot(
  data = mpg,
  mapping = aes(x = displ, y = hwy)
) +
  geom_point(aes(color = class)) +
  scale_color_manual(values = c(
    "2seater" = "#000000",
    "compact" = "#3355FF",
    "midsize" = "#006400",
    "minivan" = "#FF5522",
    "pickup" = "#66FFFF",
    "subcompact" = "#FF0000",
    "suv" = "#FF55FF"
  ))

# For "corporate design": ggthemr, https://github.com/cttobin/ggthemr
## install.packages("remotes")
## remotes::install_github("cttobin/ggthemr")

# Exercises
browseURL("https://krlmlr.github.io/vistransrep/2019-11-zhr/scales.html")
