### Facet plots

library(tidyverse)

# facet_wrap()
ggplot(
  data = mpg,
  mapping = aes(x = displ, y = hwy)
) +
  geom_point() +
  facet_wrap(vars(class))

# facet_wrap() with multiple variables
ggplot(
  data = mpg,
  mapping = aes(x = displ, y = hwy)
) +
  geom_point() +
  facet_wrap(vars(class, drv))

# facet_grid()
ggplot(
  data = mpg,
  mapping = aes(x = displ, y = hwy)
) +
  geom_point() +
  facet_grid(vars(year), vars(drv))
