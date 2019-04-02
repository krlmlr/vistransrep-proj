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
    title = "Highway mileages depending on displacement, by car class"
  )
