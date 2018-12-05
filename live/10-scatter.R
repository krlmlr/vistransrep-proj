library(tidyverse)

ggplot(
  data = mpg,
  mapping = aes(x = displ, y = hwy)
) +
  geom_point()

mpg

View(mpg)

ggplot(
  data = mpg,
  mapping = aes(x = cyl, y = hwy)
) +
  geom_point()

ggplot(
  data = mpg,
  mapping = aes(x = cty, y = hwy)
) +
  geom_point()

ggplot(
  data = mpg,
  mapping = aes(x = displ, y = hwy, color = class)
) +
  geom_point()

ggplot(
  data = mpg,
  mapping = aes(x = displ, y = hwy)
) +
  geom_point()
