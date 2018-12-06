library(tidyverse)

mpg %>%
  ggplot(aes(x = displ, y = hwy, color = class)) +
  geom_point() +
  labs(
    x = "Displacement",
    y = "Highway",
    color = "Car class",
    title = "Plot title",
    subtitle = "Subtitle",
    caption = "Caption",
    tag = "Tag"
  ) +
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5)
  )

mpg %>%
  ggplot(aes(x = displ, y = hwy, color = class)) +
  geom_point() +
  theme_bw()
