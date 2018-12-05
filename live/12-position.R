library(tidyverse)

ggplot(data = mpg) +
  geom_histogram(
    mapping = aes(x = hwy, fill = drv),
    binwidth = 1
  )
