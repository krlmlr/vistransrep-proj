library(tidyverse)

ggplot(
  data = mpg,
  mapping = aes(x = class, y = displ)
) +
  geom_boxplot()

near(sqrt(2) ^ 2, 2)

