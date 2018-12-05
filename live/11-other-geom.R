library(tidyverse)

ggplot(
  data = mpg,
  mapping = aes(x = displ, y = hwy)
) +
  geom_point(alpha = 0.2)


ggplot(
  data = mpg,
  mapping = aes(x = displ, y = hwy, alpha = cty)
) +
  geom_point()

ggplot(
  data = mpg,
  mapping = aes(x = displ, y = hwy)
) +
  geom_jitter()

ggplot(
  data = mpg,
  mapping = aes(x = displ, y = hwy)
) +
  geom_text(label = "text")

ggplot(
  data = mpg,
  mapping = aes(x = displ, y = hwy, label = class)
) +
  geom_text()

ggplot(
  data = mpg,
  mapping = aes(x = displ, y = hwy)
) +
  geom_smooth()

