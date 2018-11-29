library(tidyverse)

mpg

View(mpg)

?mpg

ggplot(
  data = mpg,
  mapping = aes(x = displ, y = cyl, color = "blue")
)

ggplot(
  data = mpg,
  mapping = aes(x = displ, y = hwy)
) +
  geom_point()

ggplot(
  data = mpg,
  mapping = aes(x = displ, y = cyl)
) +
  geom_point()

ggplot(
  data = mpg,
  mapping = aes(x = displ, y = cyl, color = cyl)
) +
  geom_point()

ggplot(
  data = mpg,
  mapping = aes(x = displ, y = cyl, color = factor(year))
) +
  geom_point()

ggplot(
  data = mpg,
  mapping = aes(x = displ, y = cyl)
) +
  geom_point(color = "blue")

ggplot(
  data = mpg,
  mapping = aes(x = displ, y = cyl, color = "blue")
) +
  geom_point()
