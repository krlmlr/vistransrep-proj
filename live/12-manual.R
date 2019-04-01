library(tidyverse)

ggplot(
  data = mpg,
  mapping = aes(x = displ, y = hwy)
) +
  geom_point(
    color = "red"
  )

ggplot(
  data = mpg,
  mapping = aes(x = displ, y = hwy)
) +
  geom_point(
    color = "blue"
  )

ggplot(
  data = mpg,
  mapping = aes(x = displ, y = hwy)
) +
  geom_point(
    color = "green"
  )

ggplot(
  data = mpg,
  mapping = aes(x = displ, y = hwy, color = class)
) +
  geom_point()

ggplot(
  data = mpg,
  mapping = aes(
    x = displ,
    y = hwy,
    shape = class
  )
) +
  geom_point()

ggplot(
  data = mpg,
  mapping = aes(
    x = displ,
    y = hwy,
    shape = drv
  )
) +
  geom_point()

ggplot(
  data = mpg,
  mapping = aes(
    x = displ,
    y = hwy,
    size = cty
  )
) +
  geom_point()

ggplot(
  data = mpg,
  mapping = aes(
    x = displ,
    y = hwy,
    color = class,
    size = cty
  )
) +
  geom_point()

ggplot(
  data = mpg,
  mapping = aes(
    x = displ,
    y = hwy,
    color = blue
  )
) +
  geom_point()

mpg
"mpg"

ggplot(
  data = mpg,
  mapping = aes(
    x = displ,
    y = hwy,
    color = "blue"
  )
) +
  geom_point()

ggplot(
  data = mpg,
  mapping = aes(
    x = displ,
    y = hwy
  )
) +
  geom_point(alpha = 0.2)

ggplot(
  data = mpg,
  mapping = aes(
    x = displ,
    y = 2.35 / hwy
  )
) +
  geom_point()

ggplot(
  data = mpg,
  mapping = aes(
    x = displ,
    y = 2.35 / hwy
  )
) +
  geom_point(color = class)
