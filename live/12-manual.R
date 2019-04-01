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
