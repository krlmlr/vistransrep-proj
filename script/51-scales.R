### Plotting: custom labels and scales

library(tidyverse)
library(nycflights13)

library(conflicted)
conflict_prefer("filter", "dplyr")
conflict_prefer("lag", "dplyr")


# Base plot
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

# Double log scale
ggplot(
  data = mpg,
  mapping = aes(x = displ, y = hwy, color = class)
) +
  geom_point() +
  scale_x_log10() +
  scale_y_log10()

# Change color palette
ggplot(
  data = mpg,
  mapping = aes(x = displ, y = hwy, color = class)
) +
  geom_point() +
  scale_color_brewer(type = "qual")

# Other options: viridis
ggplot(
  data = mpg,
  mapping = aes(x = displ, y = hwy, color = class)
) +
  geom_point() +
  scale_color_viridis_d(option = "B")

# Full control: manual scale
ggplot(
  data = mpg,
  mapping = aes(x = displ, y = hwy, color = class)
) +
  geom_point() +
  scale_color_manual(values = c(
    "2seater" = "#000000",
    "compact" = "#3355FF",
    "midsize" = "#006400",
    "minivan" = "#FF5522",
    "pickup" = "#66FFFF",
    "subcompact" = "#FF0000",
    "suv" = "#FF55FF"))
# For "corporate design": ggthemr, https://github.com/cttobin/ggthemr
