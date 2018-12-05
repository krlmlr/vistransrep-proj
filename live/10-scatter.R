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
  geom_point(color = "blue")

ggplot(
  data = mpg,
  mapping = aes(x = displ, y = hwy)
) +
  geom_point(
    color = "blue",
    shape = 5
  )

ggplot(
  data = mpg,
  mapping = aes(x = displ, y = hwy, color = "blue")
) +
  geom_point()

ggplot(
  data = mpg,
  mapping = aes(x = displ, y = hwy)
) +
  geom_point(color = class)

ggplot(
  data = mpg,
  mapping = aes(x = displ, y = hwy)
) +
  geom_point(color = "darkblue")

ggplot(
  data = mpg,
  mapping = aes(x = displ, y = hwy)
) +
  geom_point(color = "#123456")
