library(tidyverse)

# # One time:
# install.packages("tidyverse")

ggplot(
  data = mpg,
  mapping = aes(x = displ, y = hwy)
) +
  geom_point()
