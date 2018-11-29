library(tidyverse)

ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_jitter() +
  facet_wrap(~year)

ggplot(data = mpg, mapping = aes(x = displ, y = hwy, color = factor(year))) +
  geom_jitter() +
  facet_wrap(~year)

ggplot(data = mpg, mapping = aes(x = displ, y = hwy, color = factor(class))) +
  geom_jitter() +
  facet_wrap(~class)

ggplot(data = mpg, mapping = aes(x = displ, y = hwy, color = factor(class))) +
  geom_jitter() +
  facet_grid(drv ~ class)
