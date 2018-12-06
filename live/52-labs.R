library(tidyverse)

mpg %>%
  ggplot(aes(x = displ, y = hwy, color = class)) +
  geom_point() +
  labs(
    x = "Car class",
    y = "Highway
    title = "Plot title",
    subtitle = "Subtitle",
    caption = "Caption",
    tag = "Tag"
  )
