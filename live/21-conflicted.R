library(tidyverse)
library(conflicted)
conflict_prefer("filter", "dplyr")

my_mpg <- mpg

ggplot(
  data = mpg,
  mapping = aes(x = displ, y = hwy)
) +
  geom_point() +
  facet_grid(year ~ drv)
