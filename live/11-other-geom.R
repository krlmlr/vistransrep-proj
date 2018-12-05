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
