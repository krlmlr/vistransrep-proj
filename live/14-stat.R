library(tidyverse)

ggplot(
  data = mpg,
  mapping = aes(x = class)
) +
  geom_text(label = "A")
