### Labels and layers

library(tidyverse)

# geom_text()
ggplot(
  data = mpg,
  mapping = aes(x = displ, y = hwy)
) +
  geom_text(label = "A")

# set label in aes() for geom_text()
ggplot(
  data = mpg,
  mapping = aes(x = displ, y = hwy, label = "drv")
) +
  geom_text()

# 3rd aesthetic as label for geom_text()
ggplot(
  data = mpg,
  mapping = aes(x = displ, y = hwy, label = drv)
) +
  geom_text()

# Two layers
ggplot(
  data = mpg,
  mapping = aes(x = displ, y = hwy, label = drv)
) +
  geom_point() +
  geom_text()

# Two layers more clearly
ggplot(
  data = mpg,
  mapping = aes(x = displ, y = hwy, label = drv)
) +
  geom_point(color = "blue") +
  geom_text(size = 10)

# Global and local aesthetic mappings
ggplot(
  data = mpg,
  mapping = aes(x = displ, y = hwy)
) +
  geom_point(color = "blue") +
  geom_text(
    mapping = aes(color = class, label = drv),
    size = 10,
    alpha = 0.2
  )

# Good:
ggplot(
  data = mpg,
  mapping = aes(x = displ, y = hwy)
) +
  geom_point() +
  geom_rug()

# Bad:
ggplot(
  data = mpg
) +
  geom_point(mapping = aes(x = displ, y = hwy)) +
  geom_rug(mapping = aes(x = displ, y = hwy))

# Broken:
ggplot(
  data = mpg
) +
  geom_point(mapping = aes(x = displ, y = hwy)) +
  geom_rug(mapping = aes(x = displ, y = cty))

# Smooth
ggplot(
  data = mpg,
  mapping = aes(x = displ, y = hwy)
) +
  geom_point() +
  geom_smooth()

# smooth method linear model
ggplot(
  data = mpg,
  mapping = aes(x = displ, y = hwy)
) +
  geom_point() +
  geom_smooth(method = "lm")
