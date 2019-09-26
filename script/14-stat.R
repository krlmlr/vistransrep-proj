### Statistical summaries

library(tidyverse)

# geom_bar()
ggplot(
  data = mpg,
  mapping = aes(x = class)
) +
  geom_bar()
